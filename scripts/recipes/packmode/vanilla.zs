/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 40

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

RecipeUtil.addModeRecipe("blood_altar", <bloodmagic:altar>, [
    [<ore:planksBloodwood>, null, <ore:planksBloodwood>],
    [<ore:planksBloodwood>, <additions:greedycraft-bloody_sacrifice>, <ore:planksBloodwood>],
    [<ore:ingotStainlessSteel>, <bloodmagic:monster_soul>, <ore:ingotStainlessSteel>]
], [
    [<ore:planksBloodwood>, null, <ore:planksBloodwood>],
    [<ore:blockManyullyn>, <additions:greedycraft-bloody_sacrifice>, <ore:blockManyullyn>],
    [<ore:ingotStainlessSteel>, <bloodmagic:monster_soul>, <ore:ingotStainlessSteel>]
]);

RecipeUtil.addModeRecipe("mm_upgrade_t4", <modularmachinery:blockcasing:5>, [
    [<ore:ingotChromasteel>, <ore:ingotModularium>, <ore:ingotChromasteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:3>, <ore:ingotModularium>], 
    [<ore:ingotChromasteel>, <ore:ingotModularium>, <ore:ingotChromasteel>]
], [
    [<ore:blockChromasteel>, <ore:ingotModularium>, <ore:blockChromasteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:3>, <ore:ingotModularium>], 
    [<ore:blockChromasteel>, <ore:ingotModularium>, <ore:blockChromasteel>]
]);

RecipeUtil.addModeRecipe("mm_upgrade_t3", <modularmachinery:blockcasing:3>, [
    [<ore:ingotAeonsteel>, <ore:ingotModularium>, <ore:ingotAeonsteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:2>, <ore:ingotModularium>], 
    [<ore:ingotAeonsteel>, <ore:ingotModularium>, <ore:ingotAeonsteel>]
], [
    [<ore:blockAeonsteel>, <ore:ingotModularium>, <ore:blockAeonsteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:2>, <ore:ingotModularium>], 
    [<ore:blockAeonsteel>, <ore:ingotModularium>, <ore:blockAeonsteel>]
]);

RecipeUtil.addModeRecipe("mm_upgrade_t2", <modularmachinery:blockcasing:2>, [
    [<ore:ingotDurasteel>, <ore:ingotModularium>, <ore:ingotDurasteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:1>, <ore:ingotModularium>], 
    [<ore:ingotDurasteel>, <ore:ingotModularium>, <ore:ingotDurasteel>]
], [
    [<ore:blockDurasteel>, <ore:ingotModularium>, <ore:blockDurasteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:1>, <ore:ingotModularium>], 
    [<ore:blockDurasteel>, <ore:ingotModularium>, <ore:blockDurasteel>]
]);

RecipeUtil.addModeRecipe("mm_upgrade_t1", <modularmachinery:blockcasing:1>, [
    [<ore:ingotStainlessSteel>, <ore:ingotModularium>, <ore:ingotStainlessSteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:4>, <ore:ingotModularium>], 
    [<ore:ingotStainlessSteel>, <ore:ingotModularium>, <ore:ingotStainlessSteel>]
], [
    [<ore:blockStainlessSteel>, <ore:ingotModularium>, <ore:blockStainlessSteel>],
    [<ore:ingotModularium>, <modularmachinery:blockcasing:4>, <ore:ingotModularium>], 
    [<ore:blockStainlessSteel>, <ore:ingotModularium>, <ore:blockStainlessSteel>]
]);
