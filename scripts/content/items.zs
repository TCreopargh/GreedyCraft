#priority 2200
#disable_search_tree
#loader contenttweaker 

#norun

//For items added by this modpack, please go to the /addons/additions folder.

//Disabled as this is a failed attempt
/*
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.item.IItemDefinition;

var itemPouchOfUnknown = VanillaFactory.createItem("pouch_of_unknown");
itemPouchOfUnknown.maxStackSize = 1;
itemPouchOfUnknown.rarity = "epic";
itemPouchOfUnknown.itemRightClick = function(stack, world, player, hand) {
    var data = player.data;
	var pouch = data.memberGet("PouchOfUnknown");
	if(!isNull(pouch)) {
		for i in 0 to pouch.length {
			var item = pouch[i] as IData;
			var name = item.name;
			var tag = item.tag;
			var metadata = item.metadata;
			player.server.commandManager.executeCommand(player.server, "/give " + player.name + " name 1 " + metadata + " " + tag.asString());
		}
	}
	var empty = {
					PouchOfUnknown: [
						
					]
				} as IData;
	player.update(empty);
    return "Pass";
};
itemPouchOfUnknown.register();
*/