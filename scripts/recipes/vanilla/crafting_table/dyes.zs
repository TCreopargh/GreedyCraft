/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 3800

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

RecipeUtil.addDyeingRecipe("openblocks_elevator_dye", <openblocks:elevator:*>, <openblocks:elevator>, true);
RecipeUtil.addDyeingRecipe("openblocks_elevator_rotating_dye", <openblocks:elevator_rotating:*>, <openblocks:elevator_rotating>, true);
