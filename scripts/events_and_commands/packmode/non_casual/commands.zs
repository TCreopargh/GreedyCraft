/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 50
#packmode adventure expert
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

import mods.zenutils.I18n;

function isWuss(player as IPlayer) as bool {
    return (player.creative || player.hasGameStage("iswuss")); 
}

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if(isNull(command) || (command.name != "gamestage") || (event.parameters.length == 0)) {
        return;
    }
    
    if(event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;    
        if(((player.name != "TCreopargh") && !isNull(event.parameters[2]) && (event.parameters[2] == "iswuss" || event.parameters[2] == "truehero")) || ((player.name != "TCreopargh") && !isNull(event.parameters[1]) && (event.parameters[1] == "all"))) {
            event.cancel();
            player.sendChat(game.localize("greedycraft.event.anticheat.wtf"));
        }
    }
});    

val wussMode as ZenCommand = ZenCommand.create("wussmode");
wussMode.getCommandUsage = function(sender) {
    return game.localize("greedycraft.command.wussmode.usage"); 
};
wussMode.requiredPermissionLevel = 2;
wussMode.execute = function(command, server, sender, args) {
    var player as IPlayer = CommandUtils.getCommandSenderAsPlayer(sender);
    if(!isNull(player)) {
        if(!isWuss(player)) {
            server.commandManager.executeCommand(server, "/gamestage add " + player.name + " iswuss");
            player.sendChat(game.localize("greedycraft.command.wussmode.chat"));
            server.commandManager.executeCommand(server, "/broadcast " + I18n.format("greedycraft.command.wussmode.broadcast", player.name));
        } else {
        player.sendChat(game.localize("greedycraft.command.wussmode.again"));
        }
    }
};
wussMode.register();

events.onCommand(function (event as CommandEvent) {
    if(event.commandSender.world.remote) {
        return;
    }
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
            if(!isWuss(player)) {
                event.cancel();
                //player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
                player.sendChat(game.localize("greedycraft.event.anticheat.general"));
                player.sendChat(I18n.format("greedycraft.event.anticheat.command", name));
                if((name == "kill" && event.parameters.length > 0 && event.parameters[0] == "@p") || (name == "kill" && event.parameters.length == 0)) {
                    player.sendChat(game.localize("greedycraft.event.anticheat.go_kill_yourself"));
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
    server.commandManager.executeCommand(server, "/scoreboard players reset " + game.localize("greedycraft.scoreboard.creative_mode"));
    server.commandManager.executeCommand(server, "/scoreboard players reset " + game.localize("greedycraft.scoreboard.cheat_mode"));
    server.commandManager.executeCommand(server, "/scoreboard players reset " + I18n.format("greedycraft.scoreboard.true_hero", player.name));
    if(player.hasGameStage("iswuss")) {
        if(player.creative) {
            server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.creative_mode") + " title 1");
        } else {
            server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.cheat_mode") + " title 1");
        }
    } else if(player.hasGameStage("truehero")) {
        server.commandManager.executeCommand(server, "/scoreboard players set " + I18n.format("greedycraft.scoreboard.true_hero", player.name) + " title 1");
    }
});
