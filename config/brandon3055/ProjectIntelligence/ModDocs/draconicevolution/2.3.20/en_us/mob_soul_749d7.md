§align:center
##### §nMob Soul§n

§stack[draconicevolution:mob_soul,1,0,{EntityName:"[Random-Display]"}]{size:92} 

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
Mob souls are occasionally dropped my mobs when killed by a player using a weapon with the Reaper modifier.

The drop chance is extremely low, being 1 in 1000 for hostile mobs and 1 in 800 for passive mobs (configurable) for Reaper I. The chances of getting a soul can be improved with higher tiers of Reaper.

All DE tools essentially have a built-in reaper enchant equivalent to Reaper I for Wyvern, Reaper II for Draconic and Reaper III for the Staff of Power.
The calculation to figure out your drop chance as follows:
Take the base drop chance and divide by the weapons built-in reaper modifier plus the Reaper enchantment level.
Any remainder on the drop chance is completely dropped.

Here's an example. The calculation for a Draconic Sword with Reaper V would go like this:
Built-in modifier = 2,
Reaper enchantment = 5,
Drop Chance Calculation:
1000 / (2 + 5)
1000 / 7
142.8571
142

Result: Drop chance is 1 in 142 kills.

If the reaper modifier is 0 (a non-DE weapon without the Reaper enchant) there is 0 chance of getting a soul.

Some other mods not focused around Draconic Evolution may implement the reaper modifier on their weapons, but as of the time of writing this, I do not know of any that do.

The main use for a mob soul is setting the spawn type for a Stabilized spawner. However, they can also be used to spawn their respective entity by holding shift and right-clicking on a block with a soul. Doing this consumes the soul.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicevolution:mob_soul]{spacing:2}