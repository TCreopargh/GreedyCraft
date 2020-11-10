/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 150

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

(<twilightforest:meef_stroganoff> as IIngredient).foodValues.hunger = 0;
(<twilightforest:meef_stroganoff> as IIngredient).foodValues.saturationModifier = 0;
