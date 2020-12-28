/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 120
#packmode expert

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    if(event.player.hasGameStage("adventure") || event.player.hasGameStage("casual")) {
        event.player.sendChat("§c检测到你的游戏模式和上次进入该存档时的游戏模式不同，这可能会对你的存档造成永久的影响（如强制开启作弊模式或进入假专家模式等），如果你不是有意为之，请及时恢复到上次进入该存档时的游戏模式并将该存档恢复至更改游戏模式前的备份。");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " times 40 120 40");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " subtitle  {\"text\":\"§6请查看聊天记录以了解更多信息\"}");
        server.commandManager.executeCommand(server, "/title " + event.player.name + " title {\"text\":\"§c§l游戏模式已更改！\"}");
    } 
    event.player.removeGameStage("adventure");
    event.player.removeGameStage("casual");
    event.player.addGameStage("expert");
    server.commandManager.executeCommand(server, "/gamerule keepInventory false");
});