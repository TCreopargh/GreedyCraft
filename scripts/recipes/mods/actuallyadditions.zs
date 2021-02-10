/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */


#priority 1250
#no_fix_recipe_book
#modloaded projecte

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.actuallyadditions.AtomicReconstructor;
import mods.actuallyadditions.BallOfFur;


AtomicReconstructor.addRecipe(<thermalfoundation:material:893> * 4, <extrautils2:ingredients>, 4000);
AtomicReconstructor.addRecipe(<thermalfoundation:material:894>, <minecraft:glowstone_dust>, 1500);
AtomicReconstructor.addRecipe(<thermalfoundation:material:895>, <minecraft:ender_pearl>, 2000);
AtomicReconstructor.addRecipe(<appliedenergistics2:material:1>, <appliedenergistics2:material>, 1500);
AtomicReconstructor.addRecipe(<tofucraft:material:25>, <tofucraft:material:18>, 2500);

BallOfFur.addReturn(<additions:greedycraft-reward_ticket_common>, 1);
