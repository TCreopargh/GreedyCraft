§align:center
##### §nFusion Crafting§n

§img[https://raw.githubusercontent.com/brandon3055/Project-Intelligence-Docs/master/Assets/Draconic%20Evolution/Fusion%20Crafting/Fusion%20Crafting.jpg]{width:100%}
§rule{colour:0x606060,height:3,width:100%}
Fusion crafting is a process that uses large amounts of energy to combine, or "fuse", items together at an atomic level.

#####§nHow It Works

######§nRecipes
Each recipe requires 3 things:

A Catalyst
Fusion Ingredients
Power

The catalyst is placed in the core and each ingredient is placed in a separate Fusion Crafting Injector. If the recipe is valid, you will see the output displayed in the core's GUI as well as an option to start crafting.

Different recipes also require different crafter tiers. There are currently 4 different Fusion Crafting Tiers: Basic
Wyvern
Draconic
Chaotic

The tier of your setup is determined by the crafting injectors that hold your fusion ingredients.

######§nCrafting
§o(Just sit back and enjoy the show!)§r
There are 2 different crafting stages: Charging and Crafting.

During the charging stage, all active injectors need power to charge. Once charging is complete, the crafting process starts.
The crafting stage will run for a few seconds after which the result of the crafting will be deposited in the output slot of the core.

######§nAutomation
Crafting can be initiated by applying a redstone pulse to the core.
If you are using Applied Energistics, the recommended configuration is to have the ME interface below the core, then attach a pipe of some sort to the sides of the interface and use that to supply the injectors. The injectors also need to be in single item mode.

When creating the pattern, make sure the catalist is the first item in the pattern as that will go into the core. When crafting, the interface will first try to push items to the above inventory (the core), and with the catalyst as the first item in the recipe, it will be pushed into the core. The remaining items will then be sent through the attached pipe to the crafting injectors.

Make sure the interface is in blocking mode and pull the crafting result out of the core using whatever method you see fit.

######§nComparator Output
Attaching a comparator to the core allows you to check the state of the crafter using redstone. The current state is indicated by the output signal.

0 - No Recipe and output slot empty.
1 - Valid recipe.
1 > 15 - Crafting in progress.
15 - Crafting complete/Item in output.


§rule{colour:0x606060,height:3,width:100%,top_pad:0}
###### §nRecipe§n
§recipe[draconicevolution:fusion_crafting_core]{border_colour:0xc6c6c6}
§rule{colour:0x606060,height:3,width:100%,top_pad:0}