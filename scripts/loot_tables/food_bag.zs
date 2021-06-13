/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 72
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

static itemBlacklist as IItemStack[] = [
    <bibliocraft:bibliocreativelock>
] as IItemStack[];

function isBlacklisted(target as IItemStack) as bool {
    for item in itemBlacklist {
        if (target.definition.id == item.definition.id && target.metadata == item.metadata) {
            if (!isNull(item.tag)) {
                if (item.tag as IData == target.tag as IData) {
                    return true;
                }
            } else {
                return true;
            }
        }
    }
    return false;
}

val foodTable = LootTweaker.newTable("loottweaker:food_bag_loot_table");
var foodTableMainPool = foodTable.addPool("main", 6, 14, 0, 0);
for ingredient in foodList {
    for item in ingredient.items {
        if (!LootUtil.isBlacklisted(item)) {
            if (item.metadata != 32767) {
                foodTableMainPool.addItemEntry(item, 1, 1, [Functions.setCount(1, 4)], []);
            }
        }
    }
}
