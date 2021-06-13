/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 50
#no_fix_recipe_book
#packmode adventure expert
// Powered by TCreopargh

import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.data.IData;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.text.ITextComponent;
import crafttweaker.world.IWorld;

import mods.zenutils.command.ZenCommand;
import mods.zenutils.command.ZenUtilsCommandSender;
import mods.zenutils.command.CommandUtils;
import mods.zenutils.command.TabCompletion;
import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

import mods.zenutils.I18n;

import scripts.util.lang as LangUtil;
import scripts.util.versions as VersionUtil;

function isWuss(player as IPlayer) as bool {
    return (player.creative || player.hasGameStage("iswuss")); 
}

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if (isNull(command) || (command.name != "gamestage") || (event.parameters.length == 0)) {
        return;
    }
    
    if (event.commandSender instanceof IPlayer) {
        val player as IPlayer = event.commandSender;    
        if (((player.name != "TCreopargh") && !isNull(event.parameters[2]) && (event.parameters[2] == "iswuss" || event.parameters[2] == "truehero")) || ((player.name != "TCreopargh") && !isNull(event.parameters[1]) && (event.parameters[1] == "all"))) {
            event.cancel();
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.wtf"));
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
    if (!isNull(player)) {
        if (!isWuss(player)) {
            server.commandManager.executeCommand(server, "/gamestage add " + player.name + " iswuss");
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.command.wussmode.chat"));
            server.broadcastMessage(ITextComponent.fromTranslation("greedycraft.command.wussmode.broadcast", player.name));
        } else {
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.command.wussmode.again"));
        }
    }
};
wussMode.register();

events.onCommand(function (event as CommandEvent) {
    if (event.commandSender.world.remote) {
        return;
    }
    if(VersionUtil.isServerPack() as bool) {
        return;
    }
    val command = event.command;
    val name = command.name;
    if (name == "galacticraft" && event.parameters.length > 0 && event.parameters[0] == "help") {
        return;
    }
    var isBanned = true;
    for command in whitelistedCommands {
        if (name == command) {
            isBanned = false;
        }
    }
    if (isBanned) {
        if (event.commandSender instanceof IPlayer) {
            val player as IPlayer = event.commandSender;
            if (!isWuss(player)) {
                event.cancel();
                //player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
                player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.general"));
                player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.command", name));
                if ((name == "kill" && event.parameters.length > 0 && event.parameters[0] == "@p") || (name == "kill" && event.parameters.length == 0)) {
                    player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.go_kill_yourself"));
                }
            }  
        }
    }
});

events.onPlayerTick(function (event as PlayerTickEvent) {
    
    var showScoreboard as bool = true;
    val overworld as IWorld = IWorld.getFromID(0);
    if(!isNull(overworld)) {
        val overWorldData as IData = overworld.getCustomWorldData();
        val showScoreboardData as IData = overWorldData.memberGet("showScoreboard");
        if (!isNull(showScoreboardData)) {
            val doShowScoreboard as bool = showScoreboardData as bool;
            if(!doShowScoreboard) {
                showScoreboard = false;
            }
        }
    }

    if (!showScoreboard || (event.player.world.getWorldTime() as long) % 200 != 0 || event.player.world.remote || event.phase != "END" || event.side != "SERVER") {
        return;
    }
    var player as IPlayer = event.player;
    if (isNull(player)) {
        return;
    }
    server.commandManager.executeCommand(server, "/scoreboard players reset " + LangUtil.translate("greedycraft.scoreboard.creative_mode"));
    server.commandManager.executeCommand(server, "/scoreboard players reset " + LangUtil.translate("greedycraft.scoreboard.cheat_mode"));
    server.commandManager.executeCommand(server, "/scoreboard players reset " + LangUtil.format("greedycraft.scoreboard.true_hero", player.name));
    if (player.hasGameStage("iswuss")) {
        if (player.creative) {
            server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.translate("greedycraft.scoreboard.creative_mode") + " title 1");
        } else {
            server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.translate("greedycraft.scoreboard.cheat_mode") + " title 1");
        }
    } else if (player.hasGameStage("truehero")) {
        server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.format("greedycraft.scoreboard.true_hero", player.name) + " title 1");
    }
});
