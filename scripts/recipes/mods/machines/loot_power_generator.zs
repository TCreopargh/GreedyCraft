/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 30
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.ctutils.utils.Math;
import mods.modularmachinery.RecipeBuilder;

val regName = "loot_power_generator";
val speed = 100;

RecipeBuilder.newBuilder(regName + "_t1", regName, speed, 0)
    .addItemInput(<ore:dungeonLootTier1>)
    .addEnergyPerTickOutput(500)
    .build();

RecipeBuilder.newBuilder(regName + "_t2", regName, speed * 2, 0)
    .addItemInput(<ore:dungeonLootTier2>)
    .addEnergyPerTickOutput(1000)
    .build();
   
RecipeBuilder.newBuilder(regName + "_t3", regName, speed * 4, 0)
    .addItemInput(<ore:dungeonLootTier3>)
    .addEnergyPerTickOutput(4000)
    .build();
    