/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 50

import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.AttributeInstance;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.TabCompletion;

function compareItemStack(a as IItemStack, b as IItemStack) as bool {
    if(a.definition.id == b.definition.id && a.metadata == b.metadata) {
        return true;
    }
    return false;
}

val purgeCommand as ZenCommand = ZenCommand.create("purge");
purgeCommand.getCommandUsage = function(sender) {
    return "/purge";
};
purgeCommand.requiredPermissionLevel = 0; 
purgeCommand.execute = function(command, server, sender, args) {
    server.commandManager.executeCommand(server, "/kill @e[type=Item]");
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    if(!isNull(player)) {
        player.sendChat("§6已清除所有掉落物");
    }
};
purgeCommand.register();

val hideScoreboardCommand as ZenCommand = ZenCommand.create("hidescoreboard");
hideScoreboardCommand.getCommandUsage = function(sender) {
    return "/hidescoreboard";
};
hideScoreboardCommand.requiredPermissionLevel = 2; 
hideScoreboardCommand.execute = function(command, server, sender, args) {
    server.commandManager.executeCommand(server, "/scoreboard objectives remove title");
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    if(!isNull(player)) {
        player.sendChat("§a你已暂时隐藏计分板。注意计分板会在你下次进入游戏时重新显示。");
    }
};
hideScoreboardCommand.register();

val syncDifficultyCommand as ZenCommand = ZenCommand.create("syncdifficulty");
syncDifficultyCommand.getCommandUsage = function(sender) {
    return "/syncdifficulty [玩家]";
};
syncDifficultyCommand.requiredPermissionLevel = 0; 
syncDifficultyCommand.tabCompletion = TabCompletion.create(["player"]);
syncDifficultyCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
    if(!isNull(player)) {
            var maxDifficulty = 0;
            for stage in stageMap {
                var difficulty = stageMap[stage] as int;
                if(player.hasGameStage(stage) && difficulty > maxDifficulty) {
                    maxDifficulty = difficulty;
                }
            }
            server.commandManager.executeCommand(server, "/scalinghealth difficulty set " + maxDifficulty + " " + player.name);
            sender.sendMessage("§e难度同步成功，已将§6" + player.name + "§e的难度设为§6" + maxDifficulty);
            player.sendChat("§e难度同步成功，您的难度已被设为§6" + maxDifficulty);
        }
    }
};
syncDifficultyCommand.register();

val infinityStoneCommand as ZenCommand = ZenCommand.create("infinitykill");
infinityStoneCommand.getCommandUsage = function(sender) {
    return "/infinitykill [玩家]";
};
infinityStoneCommand.requiredPermissionLevel = 2; 
infinityStoneCommand.tabCompletion = TabCompletion.create(["player"]);
infinityStoneCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            if(player.name == "TCreopargh") {
                player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(50, 4, false, false));
                player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(50, 10, false, false));
                return;
            }
            if(!player.hasGameStage("iswuss")) {
                if(player.hasGameStage("truehero") || player.creative) {
                    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(50, 4, false, false));
                    player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(50, 10, false, false));
                    return;
                }
            }
            server.commandManager.executeCommand(server, "/replaceitem entity " + player.name + " slot.armor.head additions:greedycraft-infinity_stone");
            server.commandManager.executeCommand(server, "/replaceitem entity " + player.name + " slot.armor.chest additions:greedycraft-infinity_stone");
            server.commandManager.executeCommand(server, "/replaceitem entity " + player.name + " slot.armor.legs additions:greedycraft-infinity_stone");
            server.commandManager.executeCommand(server, "/replaceitem entity " + player.name + " slot.armor.feet additions:greedycraft-infinity_stone");
            server.commandManager.executeCommand(server, "/give " + player.name + " additions:greedycraft-infinity_stone 1 0");
            server.commandManager.executeCommand(server, "/kill " + player.name);
            player.sendChat("§5§o请问，您配吗？");
        }
    }
};
infinityStoneCommand.register();

val unlockAllCommand as ZenCommand = ZenCommand.create("unlockallstages");
unlockAllCommand.getCommandUsage = function(sender) {
    return "/unlockallstages [玩家]";
};
unlockAllCommand.requiredPermissionLevel = 2; 
unlockAllCommand.tabCompletion = TabCompletion.create(["player"]);
unlockAllCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            for stage in listStages {
                player.addGameStage(stage);
            }
            sender.sendMessage("§e已为§6" + player.name + "§e解锁§6" + listStages.length + "§e个阶段！");
            player.sendChat("§e您已解锁§6" + listStages.length + "§e个阶段！");
        }
    }
};
unlockAllCommand.register();

val lockAllCommand as ZenCommand = ZenCommand.create("lockallstages");
lockAllCommand.getCommandUsage = function(sender) {
    return "/lockallstages [玩家]";
};
lockAllCommand.requiredPermissionLevel = 2; 
lockAllCommand.tabCompletion = TabCompletion.create(["player"]);
lockAllCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            for stage in listStages {
                player.removeGameStage(stage);
            }
            sender.sendMessage("§c已为§6" + player.name + "§c锁上§6" + listStages.length + "§c个阶段！");
            player.sendChat("§c您已锁上§6" + listStages.length + "§c个阶段！");
        }
    }
};
lockAllCommand.register();

val pureDaisyCommand as ZenCommand = ZenCommand.create("purifyingdust");
pureDaisyCommand.getCommandUsage = function(sender) {
    return "/lockallstages [玩家]";
};
pureDaisyCommand.requiredPermissionLevel = 2; 
pureDaisyCommand.tabCompletion = TabCompletion.create(["player"]);
pureDaisyCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            if(player.world.remote) {
                return;
            }
            var x = player.x as int;
            var y = player.y as int;
            var z = player.z as int;
            var world = player.world;
            for i in (x - 7) to (x + 8) {
                for j in (y - 7) to (y + 8) {
                    for k in (z - 7) to (z + 8) {
                        if((i - x) * (i - x) + (j - y) * (j - y) + (k - z) * (k - z) >= 7 * 7) {
                            continue;
                        }
                        var blockOnPos as IBlock = world.getBlock(i, j, k);
                        if(blockOnPos.definition.id == "minecraft:air") {
                            continue;
                        }
                        var pos = crafttweaker.util.Position3f.create(i, j, k).asBlockPos();
                        for input in pureDaisyTransmutations {
                            if(isNull(input)) {
                                continue;
                            }
                            var output as IItemStack = pureDaisyTransmutations[input];
                            var transmutable = false;
                            var checkMeta = false;
                        
                            if(input.itemArray.length == 1 && input.itemArray[0].metadata != 0) {
                                checkMeta = true;
                            }
                            
                            for block in input.itemArray {
                                if(!isNull(block) && (block.definition.id == blockOnPos.definition.id) && (!checkMeta || block.metadata == blockOnPos.meta)) {
                                   transmutable = true;
                                   break;
                                }
                                if(block.isItemBlock && (block.asBlock().definition.id == blockOnPos.definition.id) && (!checkMeta || block.metadata == blockOnPos.meta)) {
                                   transmutable = true;
                                   break;
                                }
                            }
                            if(transmutable) {
                                var outputStack as IItemStack = pureDaisyTransmutations[input];
                                var states as string[] = [];
                                if(compareItemStack(outputStack, <minecraft:stonebrick:1>)) {
                                    states += "variant=mossy_stonebrick";
                                } else if(compareItemStack(outputStack, <minecraft:stonebrick:2>)) {
                                    states += "variant=cracked_stonebrick";
                                } else if(compareItemStack(outputStack, <botania:livingwood:1>)) {
                                    states += "variant=planks";
                                }
                                var blockState as IBlockState = IBlockState.getBlockState(outputStack.definition.id, states);
                                world.setBlockState(blockState, pos as IBlockPos);
                            }
                        }
                    }
                }
            }
            server.commandManager.executeCommand(server, "/particle explode " + player.x + " " + player.y + " " + player.z + " 8 8 8 0.2 1500 force " + player.name);
        }
    }
};
pureDaisyCommand.register();

val showDeathQuotesCommand as ZenCommand = ZenCommand.create("showdeathquotes");
showDeathQuotesCommand.getCommandUsage = function(sender) {
    return "/showdeathquotes [玩家]";
};
showDeathQuotesCommand.requiredPermissionLevel = 0; 
showDeathQuotesCommand.tabCompletion = TabCompletion.create(["player"]);
showDeathQuotesCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            player.removeGameStage("hide_death_quotes");
            player.sendChat("§e您已打开死亡随机信息显示。");
        }
    }
};
showDeathQuotesCommand.register();

val hideDeathQuotesCommand as ZenCommand = ZenCommand.create("hidedeathquotes");
hideDeathQuotesCommand.getCommandUsage = function(sender) {
    return "/hidedeathquotes [玩家]";
};
hideDeathQuotesCommand.requiredPermissionLevel = 0; 
hideDeathQuotesCommand.tabCompletion = TabCompletion.create(["player"]);
hideDeathQuotesCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            player.addGameStage("hide_death_quotes");
            player.sendChat("§a您已隐藏死亡随机信息显示。");
        }
    }
};
hideDeathQuotesCommand.register();

val setMaidHealthCommand as ZenCommand = ZenCommand.create("setmaidhealth");
setMaidHealthCommand.getCommandUsage = function(sender) {
    return "/setmaidhealth [实体] [玩家]";
};
setMaidHealthCommand.requiredPermissionLevel = 2; 
setMaidHealthCommand.tabCompletion = TabCompletion.create(["player", "player"]);
setMaidHealthCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    var entities as IEntity[];
    if (args.length == 1) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer as IPlayer;
    } else if (args.length == 2) {
        players = CommandUtils.getPlayers(server, sender, args[1]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    if(players.length > 0) {
        var player = players[0];
        entities = CommandUtils.getEntityList(server, sender, args[0]) as IEntity[];
        for entity in entities {
            if(!isNull(player) && !isNull(entity) && entity instanceof IEntityLivingBase) {
                var entityBase as IEntityLivingBase = entity;
                var playerHealth as float = player.maxHealth as float;
                var maidHealth as float = playerHealth * 4.0 as float;
                //maidHealth = max(maidHealth as float, entityBase.maxHealth as float) as float;
                entityBase.addPotionEffect(<potion:potioncore:love>.makePotionEffect(1, 0, true, true));
                var potionLevel as int = Math.floor(maidHealth as float / 4.0 as float) as int;

                entityBase.addPotionEffect(<potion:minecraft:health_boost>.makePotionEffect(2147483647, potionLevel, false, false));
                entityBase.addPotionEffect(<potion:minecraft:instant_health>.makePotionEffect(1, potionLevel * 4, false, false));
                entityBase.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(600, 2, false, false));
                entityBase.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(2147483647, 1, false, false));
                
                /* This sonehow just doesn't work
                var data = {"Health": maidHealth as float, "Attributes":[{"Name":"generic.maxHealth", "Base": maidHealth as float}]} as IData;
                entityBase.update(data);
                var attribute as AttributeInstance = entityBase.getAttribute("generic.maxHealth") as AttributeInstance;
                attribute.removeAllModifiers();
                attribute.setBaseValue(maidHealth as double);
                entityBase.health = maidHealth as float;
                */
            }
        }
        player.sendChat("§d已设置§5" + entities.length + "§d个实体的血量！");
    }
};
setMaidHealthCommand.register();

val giveOmnipediaCommand as ZenCommand = ZenCommand.create("giveomnipedia");
giveOmnipediaCommand.getCommandUsage = function(sender) {
    return "/giveomnipedia [玩家]";
};
giveOmnipediaCommand.requiredPermissionLevel = 2; 
giveOmnipediaCommand.tabCompletion = TabCompletion.create(["player"]);
giveOmnipediaCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            player.give(omnipedia);
        }
    }
};
giveOmnipediaCommand.register();

/*
val syncGamestagesCommand as ZenCommand = ZenCommand.create("syncgamestages");
syncGamestagesCommand.getCommandUsage = function(sender) {
    return "/syncgamestages [玩家]";
};
syncGamestagesCommand.requiredPermissionLevel = 0; 
syncGamestagesCommand.tabCompletion = TabCompletion.create(["player"]);
syncGamestagesCommand.execute = function(command, server, sender, args) {
    var players as IPlayer[] = [] as IPlayer[];
    if (args.length == 0) {
        players += CommandUtils.getCommandSenderAsPlayer(sender) as IPlayer;
    } else if (args.length == 1) {
        players = CommandUtils.getPlayers(server, sender, args[0]) as IPlayer[];
    } else {
        CommandUtils.notifyWrongUsage(command, sender);
        return;
    }
    for player in players {
        if(!isNull(player)) {
            var count as int = 0;
            var gameStagesBackup as IData = player.data.memberGet("GameStagesBackup") as IData;
            if(!isNull(gameStagesBackup) && !isNull(gameStagesBackup.asList()) && gameStagesBackup.length > 0) {
                for i in 0 to gameStagesBackup.length {
                    var data = gameStagesBackup[i];
                    if(!isNull(data.asString())) {
                        var stage as string = data.asString();
                        player.addGameStage(stage);
                        count += 1;
                    }
                }
            }
            player.sendChat("§e游戏阶段同步成功，您恢复了§6" + count + "§e个游戏阶段。");
        }
    }
};
syncGamestagesCommand.register();
*/

