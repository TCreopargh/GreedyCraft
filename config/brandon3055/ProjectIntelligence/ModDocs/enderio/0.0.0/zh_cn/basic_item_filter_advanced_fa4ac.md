§align:center
###### §n高级物品过滤器§n
§stack[enderio:item_advanced_item_filter]{size:18,enable_tooltip:false} 
§align:left
高级物品过滤器最多可以设置10个物品。它有很多选项：

它可以在白名单和黑名单之间切换。

它也可以设置为忽略metadata，像匹配各种羊毛 §stack[minecraft:wool,1,10]{size:9,enable_tooltip:false}§stack[minecraft:wool,1,9]{size:9,enable_tooltip:false}§stack[minecraft:wool,1,6]{size:9,enable_tooltip:false}。

它可以设置为基于矿物词典来进行过滤。在此模式下，它将匹配与列出的物品有一个或多个矿辞的所有的物品。

它可以设置为忽略NBT数据，如各种药水 §stack[minecraft:potion,1,0,{Potion:"enderio:withering"}]{size:9}§stack[minecraft:potion,1,0,{Potion:"enderio:floating"}]{size:9,enable_tooltip:false}§stack[minecraft:potion,1,0,{Potion:"enderio:confusion"}]{size:9,enable_tooltip:false}，附魔书 §stack[minecraft:enchanted_book,1,0,{StoredEnchantments:[{lvl:3s,id:16s}]}]{size:9,enable_tooltip:false}§stack[minecraft:enchanted_book,1,0,{StoredEnchantments:[{lvl:5s,id:32s}]}]{size:9,enable_tooltip:false}§stack[minecraft:enchanted_book,1,0,{StoredEnchantments:[{lvl:1s,id:16s}]}]{size:9,enable_tooltip:false}，或者武器的附魔和升级 §stack[enderio:item_dark_steel_sword]{size:8,enable_tooltip:false}§stack[enderio:item_dark_steel_sword,1,0,{enderio.darksteel.upgrade.travel:{level:0},enderio.darksteel.upgrade.direct:{level:0},enderio.darksteel.upgrade.energyUpgrade:{level:3,energy:1000000}}]{size:8,enable_tooltip:false}§stack[enderio:item_dark_steel_sword,1,0,{ench:[{lvl:3s,id:16s},{lvl:5s,id:32s}],RepairCost:7}]{size:8,enable_tooltip:false}。

然后可以设置为根据物品的耐久来进行过滤，例如：对于未满耐久的物品和满耐久的物品进行分类。

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

§recipe[enderio:item_advanced_item_filter]{spacing:4}