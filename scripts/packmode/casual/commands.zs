/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 50
#packmode casual
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

function isWuss(player as IPlayer) as bool {
	return (player.creative || (player.world.getGameRules().hasRule("doWussMode") && player.world.getGameRules().getBoolean("doWussMode")) || player.hasGameStage("iswuss")); 
}

events.onCommand(function (event as CommandEvent) {

	val command = event.command;
	if(isNull(command) || (command.name != "gamestage") || (event.parameters.length == 0)) {
        return;
    }
	
	if(event.commandSender instanceof IPlayer) {
		if(!isNull(event.parameters[2]) && event.parameters[2] == "iswuss") {
			val player as IPlayer = event.commandSender;	
				event.cancel();
				player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
				player.sendChat("§c§o你想干啥？！");
		}
	}
});	

val wussMode as ZenCommand = ZenCommand.create("wussmode");
wussMode.getCommandUsage = function(sender) {
    return "无参数：开启沙雕模式"; 
};
wussMode.requiredPermissionLevel = 2;
wussMode.execute = function(command, server, sender, args) {
	server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"§e[服务器]§a当前处于休闲模式，作弊模式已默认开启。\"}");
};
wussMode.register();