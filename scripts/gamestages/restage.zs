/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 750
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;

GameStagesUtil.removeItemStages([
    <extrabotany:candybag>,
    <extrabotany:candy:*>,
    <ore:rock>,
    <taiga:basalt_block>,
    <ore:dustDiamond>,
    <cyclicmagic:slingshot_weapon>,
    <aether_legacy:aercloud:*>,
    <ore:dustSalt>,
    <mekanism:salt>,
    <bloodmagic:monster_soul:3>,
    <ore:blockSalt>,
    <aether_legacy:ambrosium_shard>,
    <cyclicmagic:ender_tnt_6>,
    <cyclicmagic:ender_tnt_5>,
    <cyclicmagic:ender_tnt_4>,
    <cyclicmagic:ender_tnt_3>,
    <cyclicmagic:ender_tnt_2>,
    <cyclicmagic:ender_tnt_1>,
    <extrabotany:material>,
    <extrabotany:bottledstar>,
    <extrabotany:bottledpixie>,
    <extrabotany:rewardbag:*>,
    <mekanism:basicblock:3>
] as IIngredient[]);

GameStagesUtil.restageItems("wielder_of_infinity", [
    <avaritia:infinity_sword>,
    <avaritia:infinity_bow>,
    <avaritia:infinity_pickaxe>,
    <avaritia:infinity_shovel>,
    <avaritia:infinity_axe>,
    <avaritia:infinity_hoe>,
    <avaritia:infinity_helmet>,
    <avaritia:infinity_chestplate>,
    <avaritia:infinity_pants>,
    <avaritia:infinity_boots>,
    <ore:ingotInfinity>,
    <ore:blockInfinity>,
    <bloodmagic:sacrificial_dagger:1>,
    <thermalcultivation:watering_can:32000>
]);

GameStagesUtil.restageItem("awakened", <draconicevolution:chaos_shard>);
GameStagesUtil.restageItem("chaotic_dominator", <draconicevolution:chaotic_core>);
GameStagesUtil.restageItem("descendant_of_the_sun", <draconicevolution:awakened_core>);
GameStagesUtil.restageItems("chaotic", [
    <mekanism:machineblock2:14>,
    <avaritia:resource:5>,
    <draconicevolution:reactor_component>
]);
GameStagesUtil.restageItems("master_engineer", [
    <enderio:block_killer_joe>,
    <cyclicmagic:block_user>,
    <ore:alloyUltimate>,
    <ore:circuitUltimate>
]);
GameStagesUtil.restageItems("wither_slayer", [
    <enderio:block_reinforced_obsidian>, 
    <enderio:item_alloy_endergy_ingot:3>
]);
GameStagesUtil.restageItem("awakened", <cyclicmagic:glowing_chorus>);
GameStagesUtil.restageItems("getting_started", [
    <cyclicmagic:inventory_food>,
    <cyclicmagic:crafting_food>,
    <cyclicmagic:sandstone_pickaxe>,
    <cyclicmagic:sandstone_axe>,
    <cyclicmagic:sandstone_spade>
]);
GameStagesUtil.restageItems("fusion_matrix", [ 
    <ore:dustDraconium>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconic_core>,
    <ore:ingotDraconium>,
    <ore:oreDraconium>,
    <ore:dustDraconium>,
    <ore:blockDraconium>,
    <ore:ingotDraconiumAwakened>,
    <ore:blockDraconiumAwakened>,
    <ore:nuggetDraconiumAwakened>,
    <mysticalagradditions:awakened_draconium_essence>,
    <mysticalagradditions:special:4>,
    <ore:nuggetDraconium>,
    <draconicevolution:draconium_chest>,
    <mysticalagriculture:draconium_essence>
]);
GameStagesUtil.restageItems("wyvern", [
    <avaritia:neutron_collector>, 
    <avaritia:resource:2>,
    <ore:nuggetCosmicNeutronium>,
    <ore:ingotCosmicNeutronium>,
    <ore:blockCosmicNeutronium>
] as IIngredient[]);
GameStagesUtil.restageItem("awakened", <avaritia:neutronium_compressor>);
GameStagesUtil.restageItem("hardmode", <cyclicmagic:block_disenchanter>);
GameStagesUtil.restageItem("fusion_matrix", <cyclicmagic:ender_lightning>);
GameStagesUtil.restageItems("graduated", [
    <cyclicmagic:battery_infinite>,
    <projecte:item.pe_harvest_god>,
    <draconicevolution:draconium_capacitor:2>,
    <projectex:final_star>,
    <draconicevolution:creative_exchanger>
]);
GameStagesUtil.restageItem("skilled_engineer", <cyclicmagic:harvester_block>);
GameStagesUtil.restageItems("energy_matter_core", [
    <projectex:stone_table>,
    <projectex:arcane_tablet>,
    <projecte:transmutation_table>,
    <projecte:item.pe_transmutation_tablet>,
    <projectex:collector:*>,
    <projectex:matter:*>,
    <projecte:condenser_mk1>,
    <projecte:condenser_mk2>
] as IIngredient[]);
