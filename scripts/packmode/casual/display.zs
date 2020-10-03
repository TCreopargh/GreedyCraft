#disable_search_tree
#priority 80
#packmode casual

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
	var player = event.player;
	player.server.commandManager.executeCommand(player.server, "/scoreboard objectives remove title");
	player.server.commandManager.executeCommand(player.server, "/scoreboard objectives add title dummy §b§l贪婪整合包§r §6v" + versionName);
	player.server.commandManager.executeCommand(player.server, "/scoreboard players set §9游戏模式：§a§n休闲 title 2");
	player.server.commandManager.executeCommand(player.server, "/scoreboard players set §b title 3");
	player.server.commandManager.executeCommand(player.server, "/scoreboard players set §eby：§dTCreopargh title 4");
	player.server.commandManager.executeCommand(player.server, "/scoreboard objectives setdisplay sidebar title");
});