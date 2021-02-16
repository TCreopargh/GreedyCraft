§align:center
###### §n（大型）灵魂过滤器§n
§stack[enderio:item_soul_filter_normal]{size:18,enable_tooltip:false}§stack[enderio:item_soul_filter_big]{size:18,enable_tooltip:false} 
§align:left
（大型）灵魂过滤器允许你根据存储在物品中的灵魂（a.k.a.mob）进行过滤。

它有5/10个插槽，你可以通过使用物品单击来设置。 (§stack[enderio:item_soul_vial,1,1,{entityId:"minecraft:villager"}]{size:9,enable_tooltip:true}/§stack[enderio:item_broken_spawner,1,0,{entityId:"minecraft:chicken"}]{size:9,enable_tooltip:true}/§stack[enderio:block_powered_spawner]{size:9,enable_tooltip:true})

合成时，它的过滤器就已经设定好了。

它可以在白名单和黑名单之间切换。

此过滤器还支持“粘滞”模式。 当物品匹配任何处于粘滞模式的过滤器时，即使另一个过滤器允许通过，它们也只会被传送到粘滞的过滤器。

§4§n注意：§r此过滤器仅适用于来自Ender IO的物品以及以与我们相同的方式储存灵魂的物品。

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

§recipe[enderio:item_soul_filter_normal]{spacing:4}
§recipe[enderio:item_soul_filter_big]{spacing:4}