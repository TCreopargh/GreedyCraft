#disable_search_tree
#priority 10

#norun
//Disabled as this is a failed attempt

/*
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

events.onPlayerTick(function (event as crafttweaker.event.PlayerTickEvent) {
	var player = event.player;
	var size = player.inventorySize;
	var itemList as IItemStack[];
	for i in 0 to size {
		var item as IItemStack = player.getInventoryStack(i);
		if(ZenStager.isStaged("ingredient", item)) {
			var stage as Stage = ZenStager.getIngredientStage(item);
			if(!player.hasGameStage(stage.stage)) {
				itemList+=item;
				player.server.commandManager.executeCommand(event.player.server, "/replaceitem entity " + player.name + " slot.inventory." + i + " air");
				
				var dataPouch = {
					PouchOfUnknown: [
						{
							name: item.definition.id,
							tag: item.tag,
							metadata: item.metadata
						}
					]
				} as IData;
				player.update(dataPouch);
			}
		}
	}
	if(itemList.length > 0) {
		player.sendChat("§c你有§6" + itemList.length + "§c个物品缺少使用所需的游戏阶段，它们已被放入§d未知之袋§c中。");
	}
});
*/