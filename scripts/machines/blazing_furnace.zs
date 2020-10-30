/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 30

val regName = "blazing_furnace";
val speed = 1;
var num as int = 0;

for recipe in furnace.all {
    var xpAmount as int = (recipe.xp * 16) as int;
    mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_" + recipe.input.definition.id + "_" + recipe.input.metadata + "_" + num, regName, speed, 20)
        .addItemInput(recipe.input)
        .addEnergyPerTickInput(400)
        .addFluidOutput(<liquid:experience> * xpAmount as int)
        .addFluidInput(<liquid:pyrotheum> * 4)
        .addItemOutput(recipe.output)
        .build();
        
    num+=1;
}
