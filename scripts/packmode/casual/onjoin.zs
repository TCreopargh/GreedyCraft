#disable_search_tree
#priority 120
#packmode casual

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
	if(event.player.hasGameStage("expert") || event.player.hasGameStage("adventure")) {
		event.player.sendChat("§c检测到你的游戏模式和上次进入该存档时的游戏模式不同，这可能会对你的存档造成永久的影响（如强制开启作弊模式或进入假专家模式等），如果你不是有意为之，请及时恢复到上次进入该存档时的游戏模式并将该存档恢复至更改游戏模式前的备份。");
		event.player.server.commandManager.executeCommand(event.player.server, "/title " + event.player.name + " times 40 120 40");
		event.player.server.commandManager.executeCommand(event.player.server, "/title " + event.player.name + " subtitle  {\"text\":\"§6请查看聊天记录以了解更多信息\"}");
		event.player.server.commandManager.executeCommand(event.player.server, "/title " + event.player.name + " title {\"text\":\"§c§l游戏模式已更改！\"}");
	} 
	event.player.removeGameStage("expert");
	event.player.removeGameStage("adventure");
	event.player.addGameStage("casual");
	for gamestage in listStages {
		event.player.addGameStage(gamestage);
	}
	event.player.addGameStage("iswuss");
	event.player.sendChat("§e由于你处于休闲模式，所有游戏阶段都已解锁，祝你玩得愉快。");
});