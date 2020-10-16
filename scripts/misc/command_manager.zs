#disable_search_tree
#priority 50
// Powered by TCreopargh
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import mods.ctutils.utils.Math;
import crafttweaker.data.IData;
import mods.ctutils.world.IGameRules;
import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.TabCompletion;

val purgeCommand as ZenCommand = ZenCommand.create("purge");
purgeCommand.getCommandUsage = function(sender) {
    return "/purge";
};
purgeCommand.requiredPermissionLevel = 0; 
purgeCommand.execute = function(command, server, sender, args) {
	server.commandManager.executeCommand(server, "/kill @e[type=Item]");
	var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
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
	var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
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
	var player as IPlayer;
	if (args.length == 0) {
		player = CommandUtils.getCommandSenderAsPlayer(sender);
	} else if (args.length == 1) {
		player = CommandUtils.getPlayer(server, sender, args[0]);
	} else {
		CommandUtils.notifyWrongUsage(command, sender);
		return;
	}
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
};
syncDifficultyCommand.register();

val infinityStoneCommand as ZenCommand = ZenCommand.create("infinitykill");
infinityStoneCommand.getCommandUsage = function(sender) {
    return "/infinitykill [玩家]";
};
infinityStoneCommand.requiredPermissionLevel = 2; 
infinityStoneCommand.tabCompletion = TabCompletion.create(["player"]);
infinityStoneCommand.execute = function(command, server, sender, args) {
	var player as IPlayer;
	if (args.length == 0) {
		player = CommandUtils.getCommandSenderAsPlayer(sender);
	} else if (args.length == 1) {
		player = CommandUtils.getPlayer(server, sender, args[0]);
	} else {
		CommandUtils.notifyWrongUsage(command, sender);
		return;
	}
	if(!isNull(player)) {
		if(player.name == "TCreopargh") {
			player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(50, 4, false, false));
			return;
		}
		if(!player.hasGameStage("iswuss")) {
			if(player.hasGameStage("truehero") || player.creative) {
				player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(50, 4, false, false));
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
};
infinityStoneCommand.register();

val unlockAllCommand as ZenCommand = ZenCommand.create("unlockallstages");
unlockAllCommand.getCommandUsage = function(sender) {
    return "/unlockallstages [玩家]";
};
unlockAllCommand.requiredPermissionLevel = 2; 
unlockAllCommand.tabCompletion = TabCompletion.create(["player"]);
unlockAllCommand.execute = function(command, server, sender, args) {
	var player as IPlayer;
	if (args.length == 0) {
		player = CommandUtils.getCommandSenderAsPlayer(sender);
	} else if (args.length == 1) {
		player = CommandUtils.getPlayer(server, sender, args[0]);
	} else {
		CommandUtils.notifyWrongUsage(command, sender);
		return;
	}
	if(!isNull(player)) {
		for stage in listStages {
			player.addGameStage(stage);
		}
		sender.sendMessage("§e已为§6" + player.name + "§e解锁§6" + listStages.length + "§e个阶段！");
		player.sendChat("§e您已解锁§6" + listStages.length + "§e个阶段！");
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
	var player as IPlayer;
	if (args.length == 0) {
		player = CommandUtils.getCommandSenderAsPlayer(sender);
	} else if (args.length == 1) {
		player = CommandUtils.getPlayer(server, sender, args[0]);
	} else {
		CommandUtils.notifyWrongUsage(command, sender);
		return;
	}
	if(!isNull(player)) {
		for stage in listStages {
			player.removeGameStage(stage);
		}
		sender.sendMessage("§c已为§6" + player.name + "§c锁上§6" + listStages.length + "§c个阶段！");
		player.sendChat("§c您已锁上§6" + listStages.length + "§c个阶段！");
	}
};
lockAllCommand.register();
