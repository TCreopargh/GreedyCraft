#disable_search_tree
#priority 90
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.IPlayerEvent;
import mods.ctutils.world.IGameRules;
import crafttweaker.event.PlayerRespawnEvent;

val killEntities as string[] = [
	"mowziesmobs:barako",
	"mowziesmobs:barakoaya",
	"mowziesmobs:barakoana",
	"mowziesmobs:frostmaw",
	"twilightforest:yeti"
];

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
	if(!event.player.hasGameStage("getting_started")) {
		event.player.sendChat(
		"\n"+
		"§7§o [电流声]\n"+
		"§e - 就这样开始了吗？\n"+
		"§6 - 好的，开始实验吧。\n"+
		"§9§o - 实验体编号5468-6543-686F-7365-6E50-6C61-7965-7220，状态良好。\n"+
		"§e - 已经开始了。它能看到我们的谈话。\n"+
		"§6 - 嗯，好的，继续实验吧。\n"+
		"§e - 我们给了它一本小册子，这应该能帮助它自己解决问题。\n"+
		"§6 - 嗯，还有一个详细的任务列表，这应该能告诉它应当做什么。\n"+
		"§e - 那么，就这样吧。接下来的事情，就要看它自己了。\n"+
		"§c§o [传输中止]\n"+
		"\n"+
		"§6如果感到卡顿，请尝试按§eR§6打开菜单并点击“§e清理内存§6”按钮。另外也可以试试调整下视距再调回来。§e/purge§6命令可以清理掉落物品，这可以在跑图时降低卡顿。\n§e组合键§6F3 + A§e可以重载区块并提高帧率，§6F3 + S§e可以重载声音系统（在没有声音时使用）");
	} else {
		event.player.sendChat("§2§o欢迎回家，§e" + event.player.name + "§2§o！");
	}
	
	if(event.player.hasGameStage("truehero") && !event.player.hasGameStage("iswuss")) {
		event.player.sendChat("§6§o欢迎回家，真正的英雄§e" + event.player.name + "§6§o！");
	} else if(event.player.hasGameStage("iswuss")) {
		event.player.server.commandManager.executeCommand(event.player.server, "/tellraw @a {\"text\":\"§e" + event.player.name + "§a处于作弊模式。\"}");
		event.player.sendChat("§a§o您当前处于作弊模式。");
	} else if(event.player.creative) {
		if(!event.player.hasGameStage("truehero")) {
			event.player.server.commandManager.executeCommand(event.player.server, "/tellraw @a {\"text\":\"§e" + event.player.name + "§a处于创造模式，作弊模式已为其自动开启。\"}");
			event.player.server.commandManager.executeCommand(event.player.server, "/gamestage add " + event.player.name + " iswuss");
			event.player.sendChat("§a§o检测到您处于创造模式，作弊模式已自动开启。");
		}
	}
});

events.onPlayerRespawn(function (event as crafttweaker.event.PlayerRespawnEvent) {
	if(PACKMODE != MODE_CASUAL) {
		for entity in killEntities {
			event.player.server.commandManager.executeCommand(event.player.server, "/ctrlkill " + entity + " 0");
		}
	}
});