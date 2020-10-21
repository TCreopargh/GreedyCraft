/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 120
// Powered by TCreopargh

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val lootHusk = LootTweaker.getTable("minecraft:entities/husk");
val lootBountifulBaubles = lootHusk.getPool("bountifulbaubles_husk");
lootBountifulBaubles.removeEntry("bountifulbaubles:apple");
