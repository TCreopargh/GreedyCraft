/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */

#priority 30

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.ctutils.utils.Math;

val regName = "exp_power_generator";
val speed = 100;

mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_general", regName, speed, 0)
    .addFluidInput(<liquid:experience> * 100)
    .addEnergyPerTickOutput(2000)
    .build();
