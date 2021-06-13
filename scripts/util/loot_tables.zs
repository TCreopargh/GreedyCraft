/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32000
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

static pools as LootPool[] = [
    LootTweaker.getTable("minecraft:gameplay/fishing/treasure").getPool("main"),
    LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main"),
    LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool1"),
    LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool2"),
    LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main"),
    LootTweaker.getTable("minecraft:chests/end_city_treasure").getPool("main"),
    LootTweaker.getTable("minecraft:chests/igloo_chest").getPool("main"),
    LootTweaker.getTable("minecraft:chests/jungle_temple").getPool("main"),
    LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main"),
    LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main"),
    LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main"),
    LootTweaker.getTable("minecraft:chests/woodland_mansion").getPool("main"),
    LootTweaker.getTable("minecraft:chests/stronghold_library").getPool("main"),
    LootTweaker.getTable("minecraft:chests/stronghold_crossing").getPool("main"),
    LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main"),
    LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_chest").getPool("main"),
    LootTweaker.getTable("aether_legacy:chests/silver_dungeon_chest").getPool("main"),
    LootTweaker.getTable("abyssalcraft:chests/omothol/library").getPool("main"),
    LootTweaker.getTable("abyssalcraft:chests/omothol/storage_treasure").getPool("main"),
    LootTweaker.getTable("abyssalcraft:chests/omothol/blacksmith").getPool("main"),
    LootTweaker.getTable("abyssalcraft:chests/stronghold_corridor").getPool("main"),
    LootTweaker.getTable("abyssalcraft:chests/stronghold_crossing").getPool("main"),
    LootTweaker.getTable("cqrepoured:chests/treasure").getPool("main"),
    LootTweaker.getTable("cqrepoured:chests/material").getPool("main"),
    LootTweaker.getTable("defiledlands:chests/dungeon_defiled").getPool("main"),
    LootTweaker.getTable("lostcities:chests/lostcitychest").getPool("main"),
    LootTweaker.getTable("lostcities:chests/raildungeonchest").getPool("main"),
    LootTweaker.getTable("quark:chests/pirate_chest").getPool("main")
];

static hardmodePools as LootPool[] = [
    LootTweaker.getTable("minecraft:gameplay/fishing/treasure").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/simple_dungeon").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/end_city_treasure").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/igloo_chest").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/jungle_temple").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/nether_bridge").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/stronghold_corridor").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/desert_pyramid").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/woodland_mansion").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/stronghold_library").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/stronghold_crossing").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("minecraft:chests/village_blacksmith").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("aether_legacy:chests/bronze_dungeon_chest").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("aether_legacy:chests/silver_dungeon_chest").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("abyssalcraft:chests/omothol/library").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("abyssalcraft:chests/omothol/storage_treasure").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("abyssalcraft:chests/omothol/blacksmith").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("abyssalcraft:chests/stronghold_corridor").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("abyssalcraft:chests/stronghold_crossing").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("cqrepoured:chests/treasure").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("cqrepoured:chests/material").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("defiledlands:chests/dungeon_defiled").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("lostcities:chests/lostcitychest").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("lostcities:chests/raildungeonchest").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1),
    LootTweaker.getTable("quark:chests/pirate_chest").addPool("hardmode", HARDMODE_MIN_ROLLS, HARDMODE_MAX_ROLLS, 0, 1)
];

for pool in hardmodePools {
    pool.addConditions([{
		"condition": "required_stage",
		"stage_name": "hardmode"
	}, {
        "condition": "minecraft:random_chance",
        "chance": 0.5
    }]);
}

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

function addItem(item as IItemStack, weight as int, quality as int, minCount as int, maxCount as int) {
    for pool in pools {
        pool.addItemEntry(item, weight, quality, [Functions.setCount(minCount, maxCount)], []);
    }
}

function addHardmodeItem(item as IItemStack, weight as int, quality as int, minCount as int, maxCount as int) {
    for pool in hardmodePools {
        pool.addItemEntry(item, weight, quality, [Functions.setCount(minCount, maxCount)], []);
    }
}
