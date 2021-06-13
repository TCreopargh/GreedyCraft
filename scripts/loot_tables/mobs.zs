/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 120
#no_fix_recipe_book
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

import scripts.util.date as CalendarUtil;

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
    "witch",
    "slime",
    "magma_cube"
];

val slimeTables as string[] = [
    "minecraft:entities/slime",
    "minecraft:entities/magma_cube",
    "betterslimes:blue_slime",
    "betterslimes:gold_slime",
    "betterslimes:ice_slime",
    "betterslimes:knight_slime",
    "betterslimes:red_slime",
    "betterslimes:sky_slime",
    "betterslimes:yellow_slime"
];

// LootTweaker.getTable("minecraft:entities/husk").getPool("bountifulbaubles_husk").removeEntry("bountifulbaubles:apple");

LootTweaker.getTable("betterslimes:quazar").getPool("main").setRolls(1.0, 1.0);
LootTweaker.getTable("betterslimes:quazar").getPool("main").setBonusRolls(0.0, 0.0);
LootTweaker.getTable("betterslimes:quazar").getPool("main").addItemEntry(<additions:greedycraft-royal_gel>, 100, 1, [Functions.setCount(24, 50)], []);
var quazarLootPool = LootTweaker.getTable("betterslimes:quazar").addPool("loot", 1.0, 1.0, 0.0, 0.0);
quazarLootPool.addLootTableEntry("minecraft:chests/simple_dungeon", 1, 1, [Conditions.killedByPlayer()]);

LootTweaker.getTable("betterslimes:knight_slime").getPool("main").setRolls(1.0, 1.0);
LootTweaker.getTable("betterslimes:knight_slime").getPool("main").setBonusRolls(0.0, 0.0);
LootTweaker.getTable("betterslimes:knight_slime").getPool("main").addConditions([Conditions.randomChance(0.5)]);
LootTweaker.getTable("betterslimes:knight_slime").getPool("main").addItemEntry(<tconstruct:nuggets:3>, 100, 1, [Functions.setCount(1, 2)], []);
LootTweaker.getTable("betterslimes:knight_slime").getPool("main").addItemEntry(<tconstruct:nuggets:3>, 10, 1, [Functions.setCount(2, 7)], []);
LootTweaker.getTable("betterslimes:knight_slime").getPool("main").addItemEntry(<tconstruct:ingots:3>, 4, 1, [Functions.setCount(1, 2)], []);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").setRolls(1.0, 1.0);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").setBonusRolls(0.0, 0.0);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").addConditions([Conditions.randomChance(0.5)]);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").addItemEntry(<minecraft:gold_nugget>, 200, 1, [Functions.setCount(1, 3)], []);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").addItemEntry(<minecraft:gold_ingot>, 20, 1, [Functions.setCount(1, 2)], []);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").addItemEntry(<minecraft:golden_apple>, 10, 1, [Functions.setCount(1, 1)], []);
LootTweaker.getTable("betterslimes:gold_slime").getPool("main").addItemEntry(<minecraft:golden_apple:1>, 1, 1, [Functions.setCount(1, 1)], []);

LootTweaker.getTable("mowziesmobs:entities/ferrous_wroughtnaut").getPool("main").setRolls(2.0, 2.0);
LootTweaker.getTable("mowziesmobs:entities/ferrous_wroughtnaut").getPool("main").setBonusRolls(0.0, 0.0);
LootTweaker.getTable("mowziesmobs:entities/ferrous_wroughtnaut").getPool("main").addItemEntry(<thermalfoundation:material:160>, 1, 1, [Functions.setCount(4, 16)], []);
LootTweaker.getTable("mowziesmobs:entities/ferrous_wroughtnaut").getPool("main").addItemEntry(<minecraft:iron_ingot>, 1, 1, [Functions.setCount(32, 64)], []);
LootTweaker.getTable("mowziesmobs:entities/ferrous_wroughtnaut").getPool("main").addLootTableEntry("minecraft:chests/simple_dungeon", 1, 1, [Conditions.killedByPlayer()]);

if (CalendarUtil.isChristmas()) {
    for mob in mobList {
        var table as LootTable = LootTweaker.getTable("minecraft:entities/" + mob);
        var pool as LootPool = table.addPool("christmas_gift", 1, 1, 0, 0);
        pool.addItemEntry(<additions:greedycraft-gift>, 1, 1, [Functions.setCount(1, 1)], []);
        pool.addConditions([Conditions.randomChanceWithLooting(0.00, 0.005), Conditions.killedByPlayer()]);
    }
}

if (CalendarUtil.isLunarNewYear()) {
    for mob in mobList {
        var table as LootTable = LootTweaker.getTable("minecraft:entities/" + mob);
        var pool as LootPool = table.addPool("red_envelope", 1, 1, 0, 0);
        pool.addItemEntry(<additions:greedycraft-red_packet>, 1, 1, [Functions.setCount(1, 1)], []);
        pool.addConditions([Conditions.randomChanceWithLooting(0.00, 0.005), Conditions.killedByPlayer()]);
    }
}

for table in slimeTables {
    var table as LootTable = LootTweaker.getTable(table);
    var pool as LootPool = table.addPool("slime_crown", 1, 1, 0, 0); 
    pool.addItemEntry(<additions:greedycraft-slime_crown>, 1, 1, [Functions.setCount(1, 1)], []);
    pool.addConditions([Conditions.randomChanceWithLooting(0.005, 0.0025), Conditions.killedByPlayer()]);
}
