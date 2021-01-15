/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#packmode adventure

import mods.zenutils.I18n;

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    var player = event.player;
    server.commandManager.executeCommand(server, "/scoreboard objectives remove title");
    server.commandManager.executeCommand(server, "/scoreboard objectives add title dummy " + I18n.format("greedycraft.scoreboard.title", versionName));
    server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.mode.adventure") + " title 2");
    server.commandManager.executeCommand(server, "/scoreboard players set §b title 3");
    server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.author") + " title 4");
    if (player.hasGameStage("iswuss")) {
        if(player.creative) {
            server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.creative_mode") + " title 1");
        } else {
            server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.cheat_mode") + " title 1");
        }
    } else if(player.hasGameStage("truehero") && server.getCurrentPlayerCount() <= 1) {
        server.commandManager.executeCommand(server, "/scoreboard players set " + I18n.format("greedycraft.scoreboard.true_hero", player.name) + " title 1");
    }
    server.commandManager.executeCommand(server, "/scoreboard objectives setdisplay sidebar title");
});