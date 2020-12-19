/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 120
// Powered by TCreopargh

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;   

val mobList as string[] = [
    "zombie",
    "skeleton",
    "husk",
    "zombie_villager",
    "spider",
    "wither_skeleton",
    "stray",
    "endermite",
    "enderman",
    "creeper",
    "zombie_pigman",
    "ghast",
    "blaze",
    "cave_spider",
    "witch"
];

val lootHusk = LootTweaker.getTable("minecraft:entities/husk");
val lootBountifulBaubles = lootHusk.getPool("bountifulbaubles_husk");
lootBountifulBaubles.removeEntry("bountifulbaubles:apple");

if(CHRISTMAS_MODE) {
    for mob in mobList {
        var table as LootTable = LootTweaker.getTable("minecraft:entities/" + mob);
        var pool as LootPool = table.addPool("christmas_gift", 1, 1, 0, 0);
        pool.addItemEntryHelper(<additions:greedycraft-gift>, 1, 1, [Functions.setCount(1, 1)], []);
        pool.addConditionsHelper([Conditions.randomChanceWithLooting(0.01, 0.005), Conditions.killedByPlayer()]);
    }
}
