§align:center
###### §nAdvanced Item Filter§n
§stack[enderio:item_advanced_item_filter]{size:18,enable_tooltip:false} 
§align:left
The Advanced Item Filter allows you to filter for up to 10 items. It has a number of options:

It can be switched between whitelist (only items listed are allowed) and blacklist (all items *but* the listed ones are allowed.

It can also be set to ignore metadata, like the color of §stack[minecraft:wool,1,10]{size:9,enable_tooltip:false}§stack[minecraft:wool,1,9]{size:9,enable_tooltip:false}§stack[minecraft:wool,1,6]{size:9,enable_tooltip:false}wool.

It can be set to filter based on the Ore Dictionary. In this mode it will match all items that share one or more Ore Dictionary tags with the listed items.

It can be set to ignore NBT data, like the type of a §stack[minecraft:potion,1,0,{Potion:"enderio:withering"}]{size:9}§stack[minecraft:potion,1,0,{Potion:"enderio:floating"}]{size:9,enable_tooltip:false}§stack[minecraft:potion,1,0,{Potion:"enderio:confusion"}]{size:9,enable_tooltip:false}Potion, the content of a §stack[minecraft:enchanted_book,1,0,{StoredEnchantments:[{lvl:3s,id:16s}]}]{size:9,enable_tooltip:false}§stack[minecraft:enchanted_book,1,0,{StoredEnchantments:[{lvl:5s,id:32s}]}]{size:9,enable_tooltip:false}§stack[minecraft:enchanted_book,1,0,{StoredEnchantments:[{lvl:1s,id:16s}]}]{size:9,enable_tooltip:false}Book, or the enchantments and upgrades on a §stack[enderio:item_dark_steel_sword]{size:8,enable_tooltip:false}§stack[enderio:item_dark_steel_sword,1,0,{enderio.darksteel.upgrade.travel:{level:0},enderio.darksteel.upgrade.direct:{level:0},enderio.darksteel.upgrade.energyUpgrade:{level:3,energy:1000000}}]{size:8,enable_tooltip:false}§stack[enderio:item_dark_steel_sword,1,0,{ench:[{lvl:3s,id:16s},{lvl:5s,id:32s}],RepairCost:7}]{size:8,enable_tooltip:false}Weapon.

And then it can be set to filter upon the damage of the item, e.g. for damageable items or for items that have or have not been damaged.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

§recipe[enderio:item_advanced_item_filter]{spacing:4}