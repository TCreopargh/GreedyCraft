/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 30
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.modularmachinery.RecipeBuilder;

val regName = "blazing_furnace";
val speed = 1;
var num as int = 0;

for recipe in furnace.all {
    if (isNull(recipe.input) || isNull(recipe.output)) {
        continue;
    }
    var xpAmount as int = (recipe.xp * 16) as int;
    RecipeBuilder.newBuilder(regName + "_" + num, regName, speed, 20)
        .addItemInput(recipe.input)
        .addEnergyPerTickInput(400)
        .addFluidOutput(<liquid:experience> * xpAmount as int)
        .addFluidInput(<liquid:pyrotheum> * 2)
        .addItemOutput(recipe.output)
        .build();
        
    num+=1;
}

for input in furnaceRecipes {
    var output as IItemStack = furnaceRecipes[input] as IItemStack;
    for item in input.items {
        var xpAmount as int = (furnaceXp * 16) as int;
        RecipeBuilder.newBuilder(regName + "_" + num, regName, speed, 20)
            .addItemInput(item)
            .addEnergyPerTickInput(400)
            .addFluidOutput(<liquid:experience> * xpAmount as int)
            .addFluidInput(<liquid:pyrotheum> * 2)
            .addItemOutput(output)
            .build();
        
        num+=1;
    }
}
