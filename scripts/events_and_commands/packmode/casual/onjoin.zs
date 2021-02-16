/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 120
#no_fix_recipe_book
#packmode casual

import crafttweaker.text.ITextComponent;

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    if (event.player.hasGameStage("expert") || event.player.hasGameStage("adventure")) {
        event.player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.packmode_changed.chat"));
        server.commandManager.executeCommand(server, "/title " + event.player.name + " times 40 120 40");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " subtitle  {\"text\":\"" + game.localize("greedycraft.event.packmode_changed.title") + "\"}");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " title {\"text\":\"" + game.localize("greedycraft.event.packmode_changed.subtitle") + "\"}");
    } 
    event.player.removeGameStage("expert");
    event.player.removeGameStage("adventure");
    event.player.addGameStage("casual");
    server.commandManager.executeCommand(server, "/unlockallstages " + event.player.name);
    event.player.addGameStage("iswuss");
    event.player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.casual.unlock_all_stages"));
    server.commandManager.executeCommand(server, "/gamerule keepInventory true");
});