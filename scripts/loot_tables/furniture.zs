/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 70
#no_fix_recipe_book

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;  

import scripts.util.loot_tables as LootUtil;

val furnitureTable = LootTweaker.newTable("loottweaker:furniture_crate_loot_table");
var furnitureTableMainPool = furnitureTable.addPool("main", 3, 10, 0, 0);
for item in loadedMods["bibliocraft"].items {
    if (!LootUtil.isBlacklisted(item)) {
        furnitureTableMainPool.addItemEntry(item, 1, 1, [Functions.setCount(1, 3)], []);
    }
}
for item in loadedMods["cfm"].items {
    if (!LootUtil.isBlacklisted(item)) {
        furnitureTableMainPool.addItemEntry(item, 1, 1, [Functions.setCount(1, 3)], []);
    }
}
