§align:center
##### §nStabilized Spawner§n
 
 
§table{width:100%,render_cells:false} 
<table column_layout="1*,1*,1*,1*">
<tr align = "center">
	<td>###### §nBasic</td>
	<td>###### §nWyvern</td>
	<td>###### §nDraconic</td>
	<td>###### §nChaotic</td>
</tr>
<tr align = "center">	<td>
§stack[draconicevolution:draconic_spawner,1,0,{BCTileData:{BCManagedData:{spawnerTier:0b,mobSoul:{id:"draconicevolution:mob_soul",Count:1b,tag:{EntityName:"minecraft:pig"},Damage:0s}}}}]{size:96}
</td>
<td>
§stack[draconicevolution:draconic_spawner,1,0,{BCTileData:{BCManagedData:{spawnerTier:1b,mobSoul:{id:"draconicevolution:mob_soul",Count:1b,tag:{EntityName:"minecraft:creeper"},Damage:0s}}}}]{size:96}
</td>
<td>
§stack[draconicevolution:draconic_spawner,1,0,{BCTileData:{BCManagedData:{spawnerTier:2b,mobSoul:{id:"draconicevolution:mob_soul",Count:1b,tag:{EntityName:"minecraft:zombie"},Damage:0s}}}}]{size:96}
</td>
<td>
§stack[draconicevolution:draconic_spawner,1,0,{BCTileData:{BCManagedData:{spawnerTier:3b,mobSoul:{id:"draconicevolution:mob_soul",Count:1b,tag:{EntityName:"minecraft:cow"},Damage:0s}}}}]{size:96}
</td>
</tr>
</table>


Stabilizing a spawner turns it into a very useful tool for spawning all sorts of mobs. To get one all you have to do is right click a vanilla spawner with any of the 4 DE Cores. The spawner will consume the core and convert the spawner to the equivalent tier Stabilized Spawner which will be dropped as an item in the world. This, of course, means there are 4 spawner tiers as there are 4 core tiers.

It should be noted that when the spawner drops it will be set to spawn the same entity as the original spawner.

It should also be noted that once placed you can not pick up a spawner without destroying the §link[draconicevolution:mob_soul]{alt_text:"Mob Soul"} it contains.

In order to reset the spawner to the same or a different mob type, you need to apply a new §link[draconicevolution:mob_soul]{alt_text:"Mob Soul"}. 

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

As mentioned when you create a spawner it will be the same tier as the core you used to create it.
If you wish to upgrade (or downgrade) a spawner you can simply right-click the spawner with a different type of core.
The new core will be applied and the previous core will be removed and dropped as an item.

Each spawner tier has certain improvements over the last.
The spawn range for all spawners is 4 blocks (the same as the vanilla spawner)

§1§nBasic§r
The basic tier is very similar to the vanilla spawner.
It §3spawns up to 4 mobs at a time with a delay of between 10 and 40 seconds§r between spawns.
It §crequires a player to be within 24 blocks§r to function
and mobs §cwill only spawn if their spawn requirements are met§r e.g. grass for cows, pigs, etc.. and darkness for monsters. 

§5§nWyvern§r
spawns up to 6 mobs at a time with a delay of between 5 and 20 seconds§r between spawns.
does not require a player nearby.§r
Will only spawn if their spawn requirements are met§r e.g. grass for cows, pigs, etc.. and darkness for monsters. 

§6§nDraconic§r
spawns up to 8 mobs at a time with a delay of between 2.5 and 10 seconds§r between spawns.
Does not require a player nearby.§r
Ignores mob spawn requirements.§r

§0§nChaotic§r
spawns up to 12 mobs at a time with a delay of between 1.25 and 5 seconds§r between spawns.
Does not require a player nearby.§r
Ignores mob spawn requirements.§r
Warning things may get a little chaotic if you choose to use this spawner!§r

Note: If you have EnderIO installed you can create stabilized spawners by crafting a core with an EnderIO broken spawner,

Creative Note: If you wish to set the type for a spawner in creative mode you can do so using a spawn egg.

§recipe[draconicevolution:draconic_spawner]{spacing:2}
§rule{colour:0x606060,height:3,width:100%,top_pad:3}