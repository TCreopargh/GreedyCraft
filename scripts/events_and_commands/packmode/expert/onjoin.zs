/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 120
#packmode expert

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    if(event.player.hasGameStage("adventure") || event.player.hasGameStage("casual")) {
        event.player.sendChat(game.localize("greedycraft.event.packmode_changed.chat"));
        server.commandManager.executeCommand(server, "/title " + event.player.name + " times 40 120 40");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " subtitle  {\"text\":\"" + game.localize("greedycraft.event.packmode_changed.title") + "\"}");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " title {\"text\":\"" + game.localize("greedycraft.event.packmode_changed.subtitle") + "\"}");
    } 
    event.player.removeGameStage("adventure");
    event.player.removeGameStage("casual");
    event.player.addGameStage("expert");
    server.commandManager.executeCommand(server, "/gamerule keepInventory false");
});