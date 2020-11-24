/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 50
#packmode adventure
// Powered by TCreopargh

import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.data.IData;
import crafttweaker.event.PlayerTickEvent;

import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.TabCompletion;
import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

function isWuss(player as IPlayer) as bool {
    return (player.creative || player.hasGameStage("iswuss")); 
}


events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if(isNull(command) || (command.name != "me") || (event.parameters.length == 0)) {
        return;
    }

    if(event.commandSender instanceof IPlayer) {
        event.cancel();
        val player as IPlayer = event.commandSender;
        if(event.parameters[0] == "purge") {
            player.server.commandManager.executeCommand(player.server, "/kill @e[type=Item]");
            player.sendChat("已清除所有掉落物");
        }
    }
});

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if(isNull(command) || (command.name != "tp") || (event.parameters.length == 0)) {
        return;
    }

    if(event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;
        if(!isWuss(player)) {
            event.cancel();
            //player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
            player.sendChat("§c§o打破空间连续性者必须严惩！");
        }
    }
});

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if(isNull(command) || (command.name != "gamemode") || (event.parameters.length == 0)) {
        return;
    }
    
    if(event.commandSender instanceof IPlayer) {
        if(event.parameters[0] != "wuss") {
            val player as IPlayer = event.commandSender;
            if(!isWuss(player)) {
                event.cancel();
                //player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
                player.sendChat("§c§o请不要这样做。");
            }
        } else {
            event.cancel();
            val player as IPlayer = event.commandSender;    
            player.sendChat("§c该指令已被弃用，请使用§6/wussmode§c指令。");
        }
    }
});

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if(isNull(command) || (command.name != "gamestage") || (event.parameters.length == 0)) {
        return;
    }
    
    if(event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;    
        if(((player.name != "TCreopargh") && !isNull(event.parameters[2]) && (event.parameters[2] == "iswuss" || event.parameters[2] == "truehero")) || ((player.name != "TCreopargh") && !isNull(event.parameters[1]) && (event.parameters[1] == "all"))) {
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
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if(!isNull(player)) {
        if(!isWuss(player)) {
            server.commandManager.executeCommand(server, "/gamestage add " + player.name + " iswuss");
            server.commandManager.executeCommand(server, "/tellraw " + player.name + " {\"text\":\"§a您已开启作弊模式。\"}");
            server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"§e" + player.name + "§a开启了作弊模式。\"}");
        } else {
        player.sendChat("§c你已经处于作弊模式，作弊模式一旦打开就无法关闭。");
        }
    }
};
wussMode.register();

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if(isNull(command) || (command.name != "give") || (event.parameters.length == 0)) {
        return;
    }

    if(event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;
        if(!isWuss(player)) {
            event.cancel();
            //player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
            player.sendChat("§c§o乱拿别人的东西是不对的！");
        }
    }
});

events.onCommand(function (event as CommandEvent) {
    val command = event.command;
    val name = command.name;
    if(name == "galacticraft" && event.parameters.length > 0 && event.parameters[0] == "help") {
        return;
    }
    var isBanned = true;
    for command in whitelistedCommands {
        if(name == command) {
            isBanned = false;
        }
    }
    if(isBanned) {
        if(event.commandSender instanceof IPlayer) {
            val player as IPlayer = event.commandSender;
            if(name != "gamemode" && name != "tp" && name != "give") {
                if(!isWuss(player)) {
                    event.cancel();
                    //player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
                    player.sendChat("§c§o请不要这样做。");
                    player.sendChat("§c该指令已被禁止使用: §4" + name);
                    if((name == "kill" && event.parameters.length > 0 && event.parameters[0] == "@p") || (name == "kill" && event.parameters.length == 0)) {
                        player.sendChat("§a§o提示：如果想自杀可以使用§b/suicide§a指令。");
                    }
                }
            }
        }
    }
});

events.onPlayerTick(function (event as PlayerTickEvent) {
    if((event.player.world.getWorldTime() as long) % 200 != 0 || event.player.world.remote) {
        return;
    }
    var player as IPlayer = event.player;
    if(isNull(player)) {
        return;
    }
    server.commandManager.executeCommand(server, "/scoreboard players reset §d§l创造模式");
    server.commandManager.executeCommand(server, "/scoreboard players reset §c§l作弊模式");
    server.commandManager.executeCommand(server, "/scoreboard players reset §e" + player.name + "§6§l，永远的神！");
    if(player.hasGameStage("iswuss")) {
        if(player.creative) {
            server.commandManager.executeCommand(server, "/scoreboard players set §d§l创造模式 title 1");
        } else {
            server.commandManager.executeCommand(server, "/scoreboard players set §c§l作弊模式 title 1");
        }
    } else if(player.hasGameStage("truehero")) {
        server.commandManager.executeCommand(server, "/scoreboard players set §e" + player.name + "§6§l，永远的神！ title 1");
    }
});
