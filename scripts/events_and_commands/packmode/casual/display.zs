/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#packmode casual

import mods.zenutils.I18n;

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    var player = event.player;
    server.commandManager.executeCommand(server, "/scoreboard objectives remove title");    
    server.commandManager.executeCommand(server, "/scoreboard objectives add title dummy " + I18n.format("greedycraft.scoreboard.title", versionName));
    server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.mode.casual") + " title 2");
    server.commandManager.executeCommand(server, "/scoreboard players set §b title 3");
    server.commandManager.executeCommand(server, "/scoreboard players set " + game.localize("greedycraft.scoreboard.author") + " title 4");
    server.commandManager.executeCommand(server, "/scoreboard objectives setdisplay sidebar title");
});