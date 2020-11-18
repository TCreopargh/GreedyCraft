/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 90

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.util.Position3f;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

val killEntities as string[] = [
    "mowziesmobs:barako",
    "mowziesmobs:barakoaya",
    "mowziesmobs:barakoana",
    "mowziesmobs:frostmaw",
    "twilightforest:yeti"
];

function getBlockPos(x as float, y as float, z as float) as IBlockPos {
    return Position3f.create(x, y, z).asBlockPos() as IBlockPos;
}

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    if(!event.player.hasGameStage("getting_started")) {
        event.player.sendChat(
        "\n"+
        "§7§o [电流声]\n"+
        "§e - 就这样开始了吗？\n"+
        "§6 - 好的，开始实验吧。\n"+
        "§9§o - 实验体编号5468-6543-686F-7365-6E50-6C61-7965-7220，状态良好。\n"+
        "§e - 已经开始了。它能看到我们的谈话。\n"+
        "§6 - 嗯，好的，继续实验吧。\n"+
        "§e - 我们给了它一本小册子，这应该能帮助它自己解决问题。\n"+
        "§6 - 嗯，还有一个详细的任务列表，这应该能告诉它应当做什么。\n"+
        "§e - 那么，就这样吧。接下来的事情，就要看它自己了。\n"+
        "§c§o [传输中止]\n"+
        "\n"+
        "§6如果感到卡顿，请尝试按§eR§6打开菜单并点击“§e清理内存§6”按钮。另外也可以试试调整下视距再调回来。§e/purge§6命令可以清理掉落物品，这可以在跑图时降低卡顿。\n§e组合键§6F3 + A§e可以重载区块并提高帧率，§6F3 + S§e可以重载声音系统（在没有声音时使用）");
    } else {
        event.player.sendChat("§2§o欢迎回家，§e" + event.player.name + "§2§o！");
        if(Math.random() < 0.25) {
            event.player.sendChat("§e感到卡顿？请在刚进入游戏或内存占用较高时使用§6R§e键菜单中的§6释放内存§e按钮手动清理内存！");
        }
    }
    
    if(event.player.hasGameStage("truehero") && !event.player.hasGameStage("iswuss")) {
        event.player.sendChat("§6§o欢迎回家，真正的英雄§e" + event.player.name + "§6§o！");
    } else if(event.player.hasGameStage("iswuss")) {
        event.player.server.commandManager.executeCommand(event.player.server, "/tellraw @a {\"text\":\"§e" + event.player.name + "§a处于作弊模式。\"}");
        event.player.sendChat("§a§o您当前处于作弊模式。");
        if(event.player.creative) {
            event.player.addGameStage("creative");
        }
    } else if(event.player.creative) {
        if(!event.player.hasGameStage("truehero")) {
            event.player.addGameStage("creative");
            event.player.server.commandManager.executeCommand(event.player.server, "/tellraw @a {\"text\":\"§e" + event.player.name + "§a处于创造模式，作弊模式已为其自动开启。\"}");
            event.player.server.commandManager.executeCommand(event.player.server, "/gamestage add " + event.player.name + " iswuss");
            event.player.sendChat("§a§o检测到您处于创造模式，作弊模式已自动开启。");
            event.player.server.commandManager.executeCommand(event.player.server, "/unlockallstages " + event.player.name);
            event.player.sendChat("§d§o由于您以创造模式创建了该存档，所有游戏阶段都已解锁，祝您游戏愉快。");
        }
    }
});

events.onPlayerRespawn(function (event as crafttweaker.event.PlayerRespawnEvent) {
    if(PACKMODE != MODE_CASUAL) {
        for entity in killEntities {
            event.player.server.commandManager.executeCommand(event.player.server, "/ctrlkill " + entity + " 0");
        }
    }
});

events.onEntityLivingDeath(function (event as crafttweaker.event.EntityLivingDeathEvent) {
    if(event.entityLivingBase instanceof IPlayer) {
        var player as IPlayer = event.entityLivingBase;
        var index as int = Math.floor(Math.random() * deathQuotes.length as float) as int;
        if(!(index >= deathQuotes.length || !(index >= 0)) && !player.hasGameStage("hide_death_quotes")) {
            var quote as string = deathQuotes[index];
            quote = quote.replace("%playername%", player.name);
            player.sendChat(quote);
        }
        if(!(Math.random() > DEATH_HUMAN_SPAWN_CHANCE)) {
            var offset = Math.random() - 0.5 as float;
            player.server.commandManager.executeCommand(player.server, "/summon headcrumbs:human " + (player.x + offset) + " " + (player.y + 1) + " "+ (player.z + offset) +" {Username:\"" + player.name + "\"}");
            player.sendChat("§5§o你感到周围的时空发生了扭曲...");
        }
    }
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    var player = event.player;
    if(!player.creative && (player.world.getBiome(player.position).name.contains("Ocean") || player.world.getBiome(player.position).name.contains("Coral Reef") || player.world.getBiome(player.position).name.contains("Kelp Forest")) && player.y < 40.0) {
        var checkPoints as Position3f[] = [player.position, player.position, player.position, player.position] as Position3f[];
        var isInOcean = true;
        checkPoints[0].x = checkPoints[0].x + 5.0;
        checkPoints[1].z = checkPoints[1].z + 5.0;
        checkPoints[2].x = checkPoints[2].x - 5.0;
        checkPoints[3].z = checkPoints[3].z - 5.0;
        for checkPoint in checkPoints {
            if(!(player.world.getBiome(checkPoint).name.contains("Ocean") || player.world.getBiome(checkPoint).name.contains("Coral Reef") || player.world.getBiome(checkPoint).name.contains("Kelp Forest"))) {
                isInOcean = false;
                break;
            }
        }
        if(isInOcean && !player.isPotionActive(<potion:minecraft:water_breathing>) && player.world.getBlock(getBlockPos(player.x, player.y + 1.0, player.z)).definition.id != "minecraft:water") {
            player.air = 0;
            if(player.world.getBlock(getBlockPos(player.x, player.y + 1.0, player.z)).definition.id != "minecraft:air") {
                if(!player.isPotionActive(<potion:minecraft:wither>)) {
                    player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100, 1, false, false));
                }
            }
            if(player.world.getWorldTime() as long % 20 == 0) {
                player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(50, 0, false, false));
                player.attackEntityFrom(IDamageSource.DROWN(), 10.0);
                server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"警告\",\"color\":\"red\"},{\"text\":\": 深海的压力隔绝了一切氧气，使你无法呼吸。\",\"color\":\"yellow\"}]\"");
            }
        }
    }
});

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
    if(event.isPlayer) {
        var player as IPlayer = event.player;
        if(!isNull(player) && !player.creative && (event.world.getBiome(event.position).name.contains("Ocean") || event.world.getBiome(event.position).name.contains("Coral Reef")) && event.y < 40.0) {
            var blockState as IBlockState = IBlockState.getBlockState("minecraft:water", [] as string[]);
            event.world.setBlockState(blockState, event.position as IBlockPos);
        }
    }
});

events.onEntityLivingHurt(function(event as crafttweaker.event.EntityLivingHurtEvent) {
    var entity as IEntityLivingBase = event.entityLivingBase;
    if(isNull(entity) || !entity instanceof IPlayer) {
        return;
    }
    var spiderId = <entity:spiderstpo:better_spider>.id;
    var caveSpiderId = <entity:spiderstpo:better_cave_spider>.id;
    if(!isNull(event.damageSource.getTrueSource()) && event.damageSource.getTrueSource() instanceof IEntityLivingBase) {
        if(event.damageSource.getTrueSource().definition.id == spiderId || event.damageSource.getTrueSource().definition.id == caveSpiderId) {
            if(!entity.isPotionActive(<potion:minecraft:slowness>)) {
                entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 0, false, false));
            } else {
                if(Math.random() < 0.66) {
                    var slownessLevel = entity.getActivePotionEffect(<potion:minecraft:slowness>).amplifier;
                    if(slownessLevel < 3) {
                        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, slownessLevel + 1, false, false));
                    } else {
                        if(!isNull(entity.world.getBlock(entity.position)) && entity.world.getBlock(entity.position).definition.id == "minecraft:air") {
                            var blockState as IBlockState = IBlockState.getBlockState(<minecraft:web>.definition.id, [] as string[]);
                            entity.world.setBlockState(blockState, entity.position as IBlockPos);
                        }
                    }
                }
            }
        }
    }
});

/* This doesn't work because a player's data gets cleared upon death
events.onPlayerTick(function (event as PlayerTickEvent) {
    if((event.player.world.getWorldTime() as long) % 600 != 0 || event.player.world.remote) {
        return;
    }
    var player as IPlayer = event.player;
    if(isNull(player)) {
        return;
    }
    for stage in commonStages {
        if(player.hasGameStage(stage)) {
            if(!isNull(player.data.memberGet("GameStagesBackup"))) {
                var gameStagesBackup = player.data.memberGet("GameStagesBackup");
                if(!isNull(gameStagesBackup) && !isNull(gameStagesBackup.asList())) {
                    var updateData as IData = (gameStagesBackup.update([stage] as IData)) as IData;
                    player.update(updateData);
                } else {
                    player.update({GameStagesBackup: [stage as string]} as IData);
                }
            } else {
                player.update({GameStagesBackup: [stage as string]} as IData);
            }
        }
    }
});
*/
