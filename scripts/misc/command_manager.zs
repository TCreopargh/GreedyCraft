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

