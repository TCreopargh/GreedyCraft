/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 90
#no_fix_recipe_book
#packmode expert
// Powered by TCreopargh

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");

var mainPool = dungeon.getPool("main"); 

mainPool.addItemEntry(<additions:greedycraft-goodie_bag>, 4, 1, [Functions.setCount(1, 1)], []);
