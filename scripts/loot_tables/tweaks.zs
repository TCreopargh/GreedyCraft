/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 80
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

import scripts.util.versions as VersionUtil;

val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");
var mainPool = dungeon.getPool("main");
var dungeonPool1 = dungeon.getPool("pool1");  

LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool1").setRolls(1.0, 1.0);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool2").setRolls(1.0, 2.0);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").setRolls(2.0, 4.0);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").setBonusRolls(0.0, 1.0);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("Ender IO").addConditions([Conditions.randomChance(0.3)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool1").addConditions([Conditions.randomChance(0.5)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("pool2").addConditions([Conditions.randomChance(0.25)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("botania_inject_pool").addConditions([Conditions.randomChance(0.2)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("extrabotany_inject_pool").addConditions([Conditions.randomChance(0.05)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("lavacharm").addConditions([Conditions.randomChance(0.15)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("slimecube").addConditions([Conditions.randomChance(0.25)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("openmods_inject_pool").addConditions([Conditions.randomChance(0.1)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("power_point").clearConditions();
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("power_point").addConditions([Conditions.randomChance(0.2)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("forestry_apiculture_bees").addConditions([Conditions.randomChance(0.2)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("treasure").addConditions([Conditions.randomChance(0.1)]);
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("tconevo_artifacts").addConditions([Conditions.randomChance(0.1)]);

LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("smart_slab").addConditions([Conditions.randomChance(0.005)]);
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("smart_slab").addConditions([Conditions.randomChance(0.0075)]);
LootTweaker.getTable("minecraft:chests/stronghold_crossing").getPool("smart_slab").addConditions([Conditions.randomChance(0.0075)]);
LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("smart_slab").addConditions([Conditions.randomChance(0.0075)]);
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("smart_slab").addConditions([Conditions.randomChance(0.0075)]);
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("smart_slab").addConditions([Conditions.randomChance(0.0075)]);
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("smart_slab").addConditions([Conditions.randomChance(0.0075)]);

LootTweaker.getTable("extrabotany:inject/simple_dungeon").getPool("main").removeEntry("extrabotany:bottledflame");

dungeon.removePool("spectrecoil_number");
LootTweaker.getTable("botania:inject/simple_dungeon").getPool("main").removeEntry("botania:lexicon");
mainPool.removeEntry("cyclicmagic:item.cyclic_wand_build");
mainPool.removeEntry("abyssalcraft:tin_ingot");
mainPool.removeEntry("abyssalcraft:copper_ingot");
dungeon.getPool("bountifulbaubles_dungeon").removeEntry("bountifulbaubles:trinketbrokenheart");

if(!VersionUtil.isServerPack()) {
    print("The modpack decided that it's currently not loading a server pack because resourceloader is found.");
    print("Some loot table changes will not apply.");
    LootTweaker.getTable("minecraft:chests/jungle_temple").removePool("jungleTemple");
    LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").removePool("abandonedMineshaft");
    LootTweaker.getTable("minecraft:chests/end_city_treasure").removePool("endCity");
    LootTweaker.getTable("minecraft:chests/desert_pyramid").removePool("desertPyramid");
    LootTweaker.getTable("minecraft:chests/village_blacksmith").removePool("villageBlocksmith");
    LootTweaker.getTable("minecraft:chests/simple_dungeon").removePool("simpleDungeon");
} else {
    print("The modpack decided that it's currently loading a server pack because resourceloader is not found.");
}

LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").removePool("spectrecoil_number");
LootTweaker.getTable("minecraft:chests/end_city_treasure").removePool("spectrecoil_number");

LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("bountifulbaubles_nether_bridge").removeEntry("bountifulbaubles:trinketbrokenheart");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("abyssalcraft:tin_ingot");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("forestry_factory_items").removeEntry("forestry:broken_bronze_shovel");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("forestry_factory_items").removeEntry("forestry:broken_bronze_pickaxe");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:copper_ingot");
LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("abyssalcraft:tin_ingot");

LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").removePool("forestry_factory_items");

LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/stronghold_crossing").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/jungle_temple").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/end_city_treasure").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("cyclicmagic:item.cyclic_wand_build");

LootTweaker.getTable("minecraft:chests/stronghold_corridor").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/stronghold_crossing").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/abandoned_mineshaft").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/jungle_temple").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/desert_pyramid").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/village_blacksmith").getPool("main").removeEntry("cyclicmagic:item.tool_push");
LootTweaker.getTable("minecraft:chests/simple_dungeon").getPool("main").removeEntry("cyclicmagic:item.tool_push");

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

LootTweaker.getTable("enderio:chests/simple_dungeon").getPool("Ender IO").removeEntry("enderio:item_dark_steel_sword:0");
LootTweaker.getTable("enderio:chests/simple_dungeon").getPool("Ender IO").removeEntry("enderio:item_dark_steel_boots:0");
LootTweaker.getTable("enderio:chests/village_blacksmith").getPool("Ender IO").removeEntry("enderio:item_dark_steel_sword:0");
LootTweaker.getTable("enderio:chests/village_blacksmith").getPool("Ender IO").removeEntry("enderio:item_dark_steel_boots:0");
LootTweaker.getTable("enderio:chests/nether_bridge").getPool("Ender IO").removeEntry("enderio:item_dark_steel_boots:0");
LootTweaker.getTable("enderio:chests/desert_pyramid").getPool("Ender IO").removeEntry("enderio:item_dark_steel_sword:0");
LootTweaker.getTable("enderio:chests/abandoned_mineshaft").getPool("Ender IO").removeEntry("enderio:item_dark_steel_sword:0");
LootTweaker.getTable("enderio:chests/jungle_temple").getPool("Ender IO").removeEntry("enderio:item_dark_steel_sword:0");

LootTweaker.getTable("enderio:chests/abandoned_mineshaft").getPool("Ender IO").removeEntry("enderio:item_material:9");
LootTweaker.getTable("enderio:chests/simple_dungeon").getPool("Ender IO").removeEntry("enderio:item_material:9");
LootTweaker.getTable("enderio:chests/village_blacksmith").getPool("Ender IO").removeEntry("enderio:item_material:9");
LootTweaker.getTable("enderio:chests/village_blacksmith").getPool("Ender IO").removeEntry("enderio:item_material:10");

LootTweaker.getTable("minecraft:chests/nether_bridge").getPool("main").addItemEntry(<additions:netherite_scrap>, 5, 1, [Functions.setCount(3, 8)], []);

var dungeonPool2 = dungeon.getPool("pool2"); 
dungeonPool2.addItemEntry(<additions:greedycraft-reward_ticket_common>, 4, 1, [Functions.setCount(1, 2)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-reward_ticket_rare>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-medkit_super>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-medkit_big>, 3, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-medkit_small>, 10, 1, [Functions.setCount(1, 6)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-experience_ingot>, 12, 1, [Functions.setCount(4, 20)], []);
dungeonPool2.addItemEntry(<scalinghealth:crystalshard>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<scalinghealth:heartdust>, 6, 1, [Functions.setCount(2, 8)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-delivery_order>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-tower_chest_key>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-sunny_doll>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-bag_of_dyes>, 6, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntry(<additions:tcsponsors-sponsor_chest_fragment>, 2, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntry(<additions:greedycraft-huaji>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntry(<bountifulbaubles:potionrecall>, 8, 1, [Functions.setCount(2, 6)], []);
dungeonPool2.addItemEntry(<bountifulbaubles:potionwormhole>, 4, 1, [Functions.setCount(3, 8)], []);
dungeonPool2.addItemEntry(<patchouli:guide_book>, 1, 1, [Functions.setCount(1, 1), Functions.setNBT({"patchouli:book": "patchouli:the_elysia_project"})], []);
