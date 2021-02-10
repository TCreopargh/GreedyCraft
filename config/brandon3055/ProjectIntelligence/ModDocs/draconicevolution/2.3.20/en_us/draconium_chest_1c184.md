§align:center
##### Draconium Chest§n
§nMuch more than just a bigger inventory!§n

§stack[draconicevolution:draconium_chest]{size:64}

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
The Draconium chest is probably one of the most versatile storage devices around!
Not only does it have 260 inventory slots but it also has a powerful multi-slot furnace
and a crafting table for your convenience! 
On top of all that, it has some very powerful I/O configuration options but we will get to that in a bit. First...

§rule{colour:0x606060,height:3,width:100%}
######§nThe furnace

The built-in furnace is no ordinary furnace. For starters, it can smelt 5 items at a time. at a very reasonable speed.
But if that isn't enough for you it can be upgraded! By simply placing a wyvern, Awakened or Chaotic core
in the furnace upgrade slot you can make it even faster! 
And if that still wasn't enough as long as there is a wyvern core or better in the upgrade slot the furnace will double ores!

But it should be noted that while increasing the speed this also increases the energy consumption
a lot more than it decreases the process time.

It should also be noted that when upgraded the core is not actually consumed and can be removed at any time.

The furnace requires power which can be supplied externally or via a flux capacitor in its capacitor slot.

The furnace also has an auto feed option which does exactly what you think.
It automatically feeds the furnace smeltable items from the inventory.
There are 4 feed modes:

§bOFF§b
Self-explanatory...

§bFILL
Will only feed the furnace when there are already items smelting 
and will only keep the existing stacks currently smelting full.
Will NOT start to smelt items types that you have not manually
placed in the furnace,

§bLOCK
Pretty much the same as FILL except it will not smelt the last item.
meaning as soon as more of that item show up in the inventory
it will automatically start feeding again.

§bALL
Smelts every smeltable item in the inventory.

§rule{colour:0x606060,height:3,width:100%}
######§nThe Crafting Grid
Actually, there's not much to say here.
It looks like a crafting table,
It smells like a crafting table,
It tastes like a crafting table...
It is a crafting table!
With full JEI support!

§rule{colour:0x606060,height:3,width:100%}
######§nConfigurable IO Regions§r
This is where things get very interesting...
By default, the inventory works like any other inventory. You can insert or extract items from any slot from any side of the block.
And the furnace can also insert or extract from any slot.
But this can be changed! 

You have the ability to split the inventory up into up to 6 separate I/O regions. 
Each region can be separately configured with total control over what sides of the chest the slots can be accessed from
with the ability to mark sides as input and or output only or just disabled completely.
You can also configure which regions the internal furnace can accept or insert items into.
There is also a "default region" which controls all slots that are not assigned to a region and can be configured like all other regions.

To assign slots to a region you simply select the region in the editor and click and drag in the inventory to draw a rectangle around the slots you want in the region.
Also when you have the region editor open you can simply click on existing regions to switch between them 

The uses for this are endless but 1 simple example...
You create 2 regions. 
Region 1 only accepts items from the left side of the chest and the furnace can only pull from region 1.
Region 2 only allows items to be extracted from the right side of the chest and the furnace can only output to region 2.

Now when you pump items into the left side on the chest they will go to region 1, get smelted and then output to region 2 ready to be extracted from the right side of the chest.

§6Also! if ALL that wasn't enough§r
The chest stores its inventory when broken,
And you can make it any colour you want!!!
§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicevolution:draconium_chest]{spacing:2}
§rule{colour:0x606060,height:3,width:100%,top_pad:3}