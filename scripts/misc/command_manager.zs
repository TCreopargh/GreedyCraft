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
    return "无参数：清除所有掉落物品";
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
    return "无参数：暂时隐藏侧边栏";
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

val SyncDifficultyCommand as ZenCommand = ZenCommand.create("syncdifficulty");
SyncDifficultyCommand.getCommandUsage = function(sender) {
    return "/syncdifficulty [玩家]";
};
SyncDifficultyCommand.requiredPermissionLevel = 0; 
SyncDifficultyCommand.tabCompletion = TabCompletion.create(["player"]);
SyncDifficultyCommand.execute = function(command, server, sender, args) {
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
		for i in 0 to criticalStages.length {
			if(player.hasGameStage(criticalStages[i]) && criticalDifficulties[i] > maxDifficulty) {
				maxDifficulty = criticalDifficulties[i];
			}
		}
		server.commandManager.executeCommand(server, "/scalinghealth difficulty set " + maxDifficulty + " " + player.name);
		player.sendChat("§e难度同步成功，你的难度已被设为§6" + maxDifficulty);
	}
};
SyncDifficultyCommand.register();


