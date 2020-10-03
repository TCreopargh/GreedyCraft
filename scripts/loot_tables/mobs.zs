#disable_search_tree
#priority 120
// Powered by TCreopargh

import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

val lootHusk = LootTweaker.getTable("minecraft:entities/husk");
val lootBountifulBaubles = lootHusk.getPool("bountifulbaubles_husk");
lootBountifulBaubles.removeEntry("bountifulbaubles:apple");
