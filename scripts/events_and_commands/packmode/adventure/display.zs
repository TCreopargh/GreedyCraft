/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#no_fix_recipe_book
#packmode adventure

import crafttweaker.world.IWorld;
import crafttweaker.data.IData;

import mods.zenutils.I18n;

import scripts.util.lang as LangUtil;
import scripts.util.versions as VersionUtil;

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {

    var showScoreboard as bool = true;
    var player = event.player;

    if (!isNull(IWorld.getFromID(0).getCustomWorldData()) && (IWorld.getFromID(0).getCustomWorldData() has "showScoreboard") && IWorld.getFromID(0).getCustomWorldData().memberGet("showScoreboard") == false) {
        showScoreboard = false;
    }

    if (!player.world.getGameRules().hasRule("showScoreboard")) {
        player.world.getGameRules().addGameRule("showScoreboard", "true", "Boolean");
    }

    server.commandManager.executeCommand(server, "/scoreboard objectives remove title");

    if (showScoreboard) {
        server.commandManager.executeCommand(server, "/scoreboard objectives add title dummy " + LangUtil.format("greedycraft.scoreboard.title", VersionUtil.getVersionName()));
        server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.translate("greedycraft.scoreboard.mode.adventure") + " title 2");
        server.commandManager.executeCommand(server, "/scoreboard players set §b title 3");
        server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.translate("greedycraft.scoreboard.author") + " title 4");
        if (player.hasGameStage("iswuss")) {
            if (player.creative) {
                server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.translate("greedycraft.scoreboard.creative_mode") + " title 1");
            } else {
                server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.translate("greedycraft.scoreboard.cheat_mode") + " title 1");
            }
        } else if (player.hasGameStage("truehero") && server.getCurrentPlayerCount() <= 1) {
            server.commandManager.executeCommand(server, "/scoreboard players set " + LangUtil.format("greedycraft.scoreboard.true_hero", player.name) + " title 1");
        }
        server.commandManager.executeCommand(server, "/scoreboard objectives setdisplay sidebar title");
    }
});