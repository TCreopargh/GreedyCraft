/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 90
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

function addItem(item as IItemStack, weight as int, quality as int, minCount as int, maxCount as int) {
    var pools as LootPool[] = [
        LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main"),
        LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool1"),
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
    for pool in pools {
        pool.addItemEntryHelper(item, weight, quality, [Functions.setCount(minCount, maxCount)], []);
    }
}

function isBlacklisted(target as IItemStack) as bool {

    val itemBlacklist as IItemStack[] = [
        <bibliocraft:bibliocreativelock>
    ] as IItemStack[];

    for item in itemBlacklist {
        if(target.definition.id == item.definition.id && target.metadata == item.metadata) {
            if(!isNull(item.tag)) {
                if(item.tag as IData == target.tag as IData) {
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
        if(!isBlacklisted(item)) {
            if(item.metadata != 32767) {
                foodTableMainPool.addItemEntryHelper(item, 1, 1, [Functions.setCount(1, 4)], []);
            }
        }
    }
}


val furnitureTable = LootTweaker.newTable("loottweaker:furniture_crate_loot_table");
var furnitureTableMainPool = furnitureTable.addPool("main", 3, 10, 0, 0);
for item in loadedMods["bibliocraft"].items {
    if(!isBlacklisted(item)) {
        furnitureTableMainPool.addItemEntryHelper(item, 1, 1, [Functions.setCount(1, 3)], []);
    }
}
for item in loadedMods["cfm"].items {
    if(!isBlacklisted(item)) {
        furnitureTableMainPool.addItemEntryHelper(item, 1, 1, [Functions.setCount(1, 3)], []);
    }
}

LootTweaker.getTable("extrabotany:inject/simple_dungeon").getPool("main").removeEntry("extrabotany:bottledflame");

val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
dungeon.removePool("simpleDungeon");
dungeon.removePool("spectrecoil_number");
LootTweaker.getTable("botania:inject/simple_dungeon").getPool("main").removeEntry("botania:lexicon");
var mainPool = dungeon.getPool("main");
mainPool.removeEntry("cyclicmagic:item.cyclic_wand_build");
var dungeonPool1 = dungeon.getPool("pool1");  
mainPool.removeEntry("abyssalcraft:tin_ingot");
mainPool.removeEntry("abyssalcraft:copper_ingot");
dungeon.getPool("bountifulbaubles_dungeon").removeEntry("bountifulbaubles:trinketbrokenheart");
LootTweaker.getTable("minecraft:chests/jungle_temple").removePool("jungleTemple");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").removePool("abandonedMineshaft");
LootTweaker.getTable("minecraft:chests/end_city_treasure").removePool("endCity");
LootTweaker.getTable("minecraft:chests/desert_pyramid").removePool("desertPyramid");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").removePool("spectrecoil_number");
LootTweaker.getTable("minecraft:chests/end_city_treasure").removePool("spectrecoil_number");
LootTweaker.getTable("minecraft:chests/village_blacksmith").removePool("villageBlocksmith");

// var artifactsPool = dungeon.getPool("tconevo_artifacts");

LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("bountifulbaubles_nether_bridge").removeEntry("bountifulbaubles:trinketbrokenheart");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("forestry_factory_items").removeEntry("forestry:broken_bronze_shovel");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("forestry_factory_items").removeEntry("forestry:broken_bronze_pickaxe");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/jungle_temple").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/end_city_treasure").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");

LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/end_city_treasure").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/igloo_chest").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/jungle_temple").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/stronghold_library").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/stronghold_crossing").getPool("main").removeEntry("cyclicmagic:item.heart_food");
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("cyclicmagic:item.heart_food");

LootTweaker.getTable("minecraft:chests/desert_pyramid").removePool("moms_spaghetti");
LootTweaker.getTable("minecraft:chests/jungle_temple").removePool("moms_spaghetti");
LootTweaker.getTable("minecraft:chests/stronghold_crossing").removePool("moms_spaghetti");

addItem(<thermalfoundation:material:128>, 10, 1, 2, 12);
addItem(<thermalfoundation:material:129>, 10, 1, 2, 12);
addItem(<thermalfoundation:material:163>, 18, 1, 2, 10);
addItem(<thermalfoundation:material:134>, 6, 1, 2, 6);
addItem(<thermalfoundation:material:199>, 8, 1, 2, 8);
addItem(<thermalfoundation:material:131>, 8, 1, 2, 8);
addItem(<thermalfoundation:material:130>, 10, 1, 2, 8);
addItem(<thermalfoundation:material:132>, 7, 1, 3, 12);
addItem(<thermalfoundation:material:133>, 6, 1, 3, 12);
addItem(<thermalfoundation:material:160>, 4, 1, 2, 6);
addItem(<thermalfoundation:material:161>, 6, 1, 2, 12);
addItem(<thermalfoundation:material:162>, 6, 1, 2, 12);
addItem(<additions:chromium_ingot>, 5, 1, 4, 12);
addItem(<projecte:item.pe_fuel>, 3, 1, 2, 6);
addItem(<ae2wtlib:infinity_booster_card>, 12, 1, 1, 8);
addItem(<progressivebosses:nether_star_shard>, 2, 1, 4, 18);
addItem(<thaumcraft:sanity_soap>, 2, 1, 2, 8);
addItem(<minecraft:emerald>, 10, 1, 2, 6);
addItem(<minecraft:diamond>, 12, 1, 8, 18);
addItem(<tofucraft:tofustick>, 1, 1, 1, 1);
addItem(<appliedenergistics2:material>, 10, 1, 12, 28);
addItem(<ceramics:unfired_clay:9>, 3, 1, 4, 30);
addItem(<minecraft:glowstone_dust>, 8, 1, 12, 32);
addItem(<mysticalagriculture:crafting>, 8, 1, 16, 40);
addItem(<minecraft:quartz>, 10, 1, 16, 30);
addItem(<fluxnetworks:fluxcore>, 3, 1, 5, 10);
addItem(<touhou_little_maid:gashapon_coin>, 2, 1, 4, 12);
addItem(<additions:greedycraft-time_fragment>, 18, 1, 1, 3);
addItem(<additions:greedycraft-time_shard>, 3, 1, 1, 1);
addItem(<tofucraft:tofu_food>, 16, 1, 24, 64);
addItem(<tofucraft:tofu_food:2>, 8, 1, 12, 32);
addItem(<tofucraft:tofu_food:3>, 10, 1, 12, 24);
addItem(<tofucraft:tofu_material>, 4, 1, 4, 20);
addItem(<thermalfoundation:material:2053>, 4, 1, 4, 10);
addItem(<additions:greedycraft-one_punch>.withTag({ench: [{lvl: 33 as short, id: 19}]}), 1, 1, 1, 1);
addItem(<additions:greedycraft-reward_ticket_common>, 25, 1, 1, 3);
addItem(<additions:greedycraft-reward_ticket_rare>, 8, 1, 1, 2);
addItem(<additions:greedycraft-reward_ticket_epic>, 2, 1, 1, 1);
addItem(<additions:greedycraft-medkit_super>, 1, 1, 1, 1);
addItem(<additions:greedycraft-medkit_big>, 4, 1, 1, 3);
addItem(<additions:greedycraft-medkit_small>, 20, 1, 1, 6);
addItem(<additions:greedycraft-experience_ingot>, 18, 1, 2, 12);
addItem(<scalinghealth:crystalshard>, 10, 1, 1, 2);
addItem(<scalinghealth:heartdust>, 14, 1, 4, 24);
addItem(<additions:greedycraft-delivery_order>, 4, 1, 1, 1);
addItem(<additions:greedycraft-tower_chest_key>, 2, 1, 1, 1);
addItem(<additions:greedycraft-sunny_doll>, 2, 1, 1, 1);
addItem(<additions:greedycraft-bag_of_dyes>, 6, 1, 1, 3);
addItem(<additions:tcsponsors-sponsors_chest>, 1, 1, 1, 1);
addItem(<additions:tcsponsors-sponsor_chest_fragment>, 6, 1, 1, 2);
addItem(<additions:greedycraft-true_eye_of_ender>, 1, 1, 1, 1);
addItem(<abyssalcraft:shadowgem>, 6, 1, 1, 1);
addItem(<abyssalcraft:shadowshard>, 12, 1, 1, 6);
addItem(<abyssalcraft:shadowfragment>, 18, 1, 1, 20);
addItem(<additions:greedycraft-huaji>, 8, 1, 1, 2);
addItem(<additions:greedycraft-poop>, 8, 1, 1, 2);
addItem(<additions:greedycraft-experience_transporter>, 1, 1, 1, 1);
addItem(<additions:greedycraft-blueprint_yoyo>, 1, 1, 1, 1);
addItem(<actuallyadditions:block_treasure_chest>, 9, 1, 1, 1);
addItem(<additions:greedycraft-skill_reset_scroll>, 1, 1, 1, 1);
addItem(<additions:greedycraft-plate_of_honor>, 1, 1, 1, 1);
addItem(<inventorypets:meta_pet>, 3, 1, 1, 1);
addItem(<additions:greedycraft-purifying_dust>, 3, 1, 10, 40);
addItem(<additions:perfectly_generic_item>, 2, 1, 1, 1);
addItem(<additions:greedycraft-respawn_anchor>, 1, 1, 1, 1);
addItem(<additions:greedycraft-loli_lolipop>, 3, 1, 1, 2);
addItem(<additions:greedycraft-food_bag>, 4, 1, 1, 1);
addItem(<additions:greedycraft-furniture_crate>, 3, 1, 1, 1);
addItem(<sakura:sakura_diamond>, 2, 1, 3, 8);
addItem(<thaumcraft:curio>, 2, 1, 1, 2);
addItem(<thermalfoundation:material:136>, 1, 1, 2, 4);
addItem(<appliedenergistics2:material:36>, 3, 1, 3, 6);
addItem(<appliedenergistics2:material:38>, 1, 1, 2, 4);
addItem(<harvestcraft:bambooshootitem>, 2, 1, 8, 20);

var dungeonPool2 = dungeon.getPool("pool2");  
dungeonPool2.addItemEntryHelper(<additions:greedycraft-reward_ticket_common>, 12, 1, [Functions.setCount(1, 2)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-reward_ticket_rare>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-reward_ticket_epic>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-medkit_super>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-medkit_big>, 4, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-medkit_small>, 16, 1, [Functions.setCount(1, 6)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-experience_ingot>, 18, 1, [Functions.setCount(4, 20)], []);
dungeonPool2.addItemEntryHelper(<scalinghealth:crystalshard>, 10, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<scalinghealth:heartdust>, 14, 1, [Functions.setCount(4, 24)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-delivery_order>, 4, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-tower_chest_key>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-sunny_doll>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-bag_of_dyes>, 6, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<additions:tcsponsors-sponsor_chest_fragment>, 2, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-huaji>, 4, 1, [Functions.setCount(1, 2)], []);

/*
mainPool.addItemEntryHelper(<thermalfoundation:material:128>, 10, 1, [Functions.setCount(2, 12)], []);
mainPool.addItemEntryHelper(<thermalfoundation:material:129>, 10, 1, [Functions.setCount(2, 12)], []);
mainPool.addItemEntryHelper(<thermalfoundation:material:163>, 18, 1, [Functions.setCount(2, 10)], []);
mainPool.addItemEntryHelper(<thermalfoundation:material:134>, 6, 1, [Functions.setCount(2, 6)], []);
mainPool.addItemEntryHelper(<thermalfoundation:material:199>, 8, 1, [Functions.setCount(2, 8)], []);
mainPool.addItemEntryHelper(<tofucraft:tofu_food>, 16, 1, [Functions.setCount(24, 64)], []);
mainPool.addItemEntryHelper(<tofucraft:tofu_food:2>, 8, 1, [Functions.setCount(12, 32)], []);
mainPool.addItemEntryHelper(<tofucraft:tofu_food:3>, 10, 1, [Functions.setCount(12, 24)], []);
mainPool.addItemEntryHelper(<tofucraft:tofu_material>, 4, 1, [Functions.setCount(4, 20)], []);
mainPool.addItemEntryHelper(<additions:greedycraft-one_punch>, 1, 1, [Functions.setCount(1, 1)], []);
*/
