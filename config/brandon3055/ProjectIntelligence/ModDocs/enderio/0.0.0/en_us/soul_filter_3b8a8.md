§align:center
###### §n(Big) Soul Item Filter§n
§stack[enderio:item_soul_filter_normal]{size:18,enable_tooltip:false}§stack[enderio:item_soul_filter_big]{size:18,enable_tooltip:false} 
§align:left
The (Big) Soul Item Filter allows you to filter based upon the the soul (a.k.a. mob) that is stored in an item.

It has 5/10 slots you can set to any kind of soul by clicking an item that contains one (§stack[enderio:item_soul_vial,1,1,{entityId:"minecraft:villager"}]{size:9,enable_tooltip:false}/§stack[enderio:item_broken_spawner,1,0,{entityId:"minecraft:chicken"}]{size:9,enable_tooltip:false}/§stack[enderio:block_powered_spawner]{size:9,enable_tooltip:false}) into.

When it is initially crafted, the soul that was used to craft it is already set.

It can be switched between whitelist (only items listed are allowed) and blacklist (all items *but* the listed ones are allowed.

This filter also supports "sticky" mode. When items match any filter that is in sticky mode they will only ever be delivered to sticky filters even if another filter would permit them.

§4§nNote:§r This filter only works with items from Ender IO and those that store souls the same way as we do.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

§recipe[enderio:item_soul_filter_normal]{spacing:4}
§recipe[enderio:item_soul_filter_big]{spacing:4}