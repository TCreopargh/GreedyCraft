#disable_search_tree
#priority 80
#packmode expert

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
	var player = event.player;
	var star as string = "";
	if (player.hasGameStage("adventure") || player.hasGameStage("iswuss")) {
		star = "§6*";
	}
	player.server.commandManager.executeCommand(player.server, "/scoreboard objectives remove title");
	player.server.commandManager.executeCommand(player.server, "/scoreboard objectives add title dummy §b§l贪婪整合包§r §6v" + versionName);
	player.server.commandManager.executeCommand(player.server, "/scoreboard players set §9游戏模式：§c§n专家§r" + star + " title 2");
	player.server.commandManager.executeCommand(player.server, "/scoreboard players set §b title 3"); 
	player.server.commandManager.executeCommand(player.server, "/scoreboard players set §eby：§dTCreopargh title 4");
	if (player.hasGameStage("iswuss")) {
		player.server.commandManager.executeCommand(player.server, "/scoreboard players set §c§l作弊模式 title 1");
	} else if(player.hasGameStage("truehero")) {
		player.server.commandManager.executeCommand(player.server, "/scoreboard players set §e" + player.name + "§6§l，永远的神！ title 1");
	}
	player.server.commandManager.executeCommand(player.server, "/scoreboard objectives setdisplay sidebar title");
});