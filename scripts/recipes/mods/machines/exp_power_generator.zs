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

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;

val regName = "exp_power_generator";
val speed = 100;

RecipeBuilder.newBuilder(regName + "_general", regName, speed, 0)
    .addFluidInput(<liquid:experience> * 100)
    .addEnergyPerTickOutput(2000)
    .build();
