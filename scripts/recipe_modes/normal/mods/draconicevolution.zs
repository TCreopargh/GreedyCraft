/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#packmode casual adventure

import moretweaker.draconicevolution.FusionCrafting;

FusionCrafting.remove(<draconicevolution:chaos_shard>);
FusionCrafting.remove(<minecraft:nether_star>);
FusionCrafting.remove(<draconicevolution:draconic_pick>);

FusionCrafting.add(<projecte:transmutation_table>, <additions:greedycraft-energy_matter_core>, 1, 2147483647, [ 
    <avaritia:extreme_crafting_table>,
    <projectex:matter:1>,
    <tconevo:metal_block>,
    <draconicevolution:dragon_heart>,
    <additions:greedycraft-ancient_tome_page>,
    <additions:greedycraft-pearl_of_knowledge>,
    <additions:greedycraft-bounty_hunter_medal>,
    <additions:greedycraft-city_defender_medal>
]);
FusionCrafting.add(<projecte:item.pe_transmutation_tablet>, <projecte:transmutation_table>, 2, 400000000, [ 
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>,
    <draconicevolution:awakened_core>
]);
FusionCrafting.add(<additions:greedycraft-creative_soul>, <draconicevolution:chaotic_core>, 3, 8589934592, [ 
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-creative_shard>
]);
FusionCrafting.add(<draconicevolution:draconic_staff_of_power>, <avaritia:resource:5>, 2, 17179869184, [ 
    <tconevo:metal_block:1>,
    <tconevo:metal_block:1>,
    <tconevo:metal_block:1>,
    <tconevo:metal_block:1>,
    <tconevo:metal_block:1>,
    <tconevo:metal_block:1>,
    <additions:greedycraft-creative_soul>,
    <additions:greedycraft-ancient_tome>
]);
FusionCrafting.add(<avaritia:extreme_crafting_table>, <minecraft:crafting_table>, 1, 800000000, [ 
    <avaritia:block_resource:2>,
    <avaritia:block_resource:2>,
    <avaritia:resource:1>,
    <avaritia:resource:1>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <additions:greedycraft-ancient_tome_fragment>,
    <additions:greedycraft-ancient_tome_fragment>
]);
FusionCrafting.add(<projectex:arcane_tablet>, <projecte:item.pe_transmutation_tablet>, 3, 17179869184, [ 
    <projectex:matter:0>,
    <projectex:matter:0>,
    <projectex:matter:1>,
    <projectex:matter:1>,
    <draconicevolution:chaotic_core>,
    <draconicevolution:chaotic_core>,
    <additions:greedycraft-ancient_tome>,
    <projectex:magnum_star_ein>
]);
FusionCrafting.add(<projecte:condenser_mk2>, <projecte:condenser_mk1>, 1, 640000000, [ 
    <projecte:matter_block:1>,
    <projecte:matter_block:1>,
    <projecte:matter_block:1>,
    <projecte:matter_block:1>,
    <draconicevolution:wyvern_core>,
    <additions:greedycraft-energy_matter_core>,
    <additions:greedycraft-city_defender_medal>,
    <additions:greedycraft-ancient_tome_fragment>
]);
FusionCrafting.add(<projecte:condenser_mk1>, <projecte:alchemical_chest>, 0, 80000000, [ 
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <projecte:item.pe_matter>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:wyvern_core>,
    <additions:greedycraft-energy_matter_core>
]);
FusionCrafting.add(<draconicevolution:awakened_core>, <minecraft:nether_star>, 1, 128000000, [ 
    <draconicevolution:wyvern_core>,
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconic_ingot>,
    <additions:infernium_ingot>,
    <draconicevolution:draconic_ingot>,
    <additions:infernium_ingot>,
    <draconicevolution:draconic_ingot>,
    <additions:infernium_ingot>
]);
FusionCrafting.add(<additions:greedycraft-blueprint_tactic>, <additions:greedycraft-blueprint>, 0, 4000000, [ 
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>
]);
FusionCrafting.add(<draconicevolution:chaotic_core>, <draconicevolution:chaos_shard>, 2, 1024000000, [ 
    <tconevo:metal>,
    <tconevo:metal>,
    <tconevo:metal:5>,
    <tconevo:metal:5>,
    <avaritia:resource:4>,
    <avaritia:resource:4>,
    <additions:terra_alloy_ingot>,
    <additions:terra_alloy_ingot>
]);
FusionCrafting.add(<draconicevolution:wyvern_core>, <minecraft:nether_star>, 0, 1600000, [ 
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconic_core>,
    <draconicevolution:draconium_ingot>,
    <draconicevolution:draconium_ingot>,
    <additions:cryonium_ingot>,
    <additions:cryonium_ingot>
]);

FusionCrafting.add(<solarflux:solar_panel_wyvern>, <solarflux:solar_panel_8>, 1, 12800000, [ 
    <tconevo:metal>,
    <tconevo:metal>,
    <tconevo:metal>,
    <tconevo:metal>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:wyvern_energy_core>,
    <draconicevolution:wyvern_energy_core>
]);

FusionCrafting.add(<solarflux:solar_panel_draconic>, <solarflux:solar_panel_wyvern>, 2, 102400000, [ 
    <tconevo:metal:5>,
    <tconevo:metal:5>,
    <tconevo:metal:5>,
    <tconevo:metal:5>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:draconic_energy_core>,
    <draconicevolution:draconic_energy_core>
]);

FusionCrafting.add(<solarflux:custom_solar_panel_cosmic_solar_panel>, <solarflux:solar_panel_chaotic>, 3, 1638400000, [ 
    <additions:cosmilite_ingot>,
    <additions:cosmilite_ingot>,
    <additions:cosmilite_ingot>,
    <additions:cosmilite_ingot>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaotic_energy_core>
]);

FusionCrafting.add(<draconicevolution:reactor_core>, <draconicevolution:chaos_shard>, 3, 3276800000, [ 
    <additions:cosmilite_ingot>,
    <additions:cosmilite_ingot>,
    <tconevo:metal:5>,
    <tconevo:metal:5>,
    <draconicadditions:chaotic_energy_core>,
    <draconicadditions:chaotic_energy_core>,
    <additions:terra_alloy_ingot>,
    <additions:terra_alloy_ingot>
]);

FusionCrafting.add(<additions:electronium_ingot>, <tconevo:material>, 0, 100000000, [ 
    <redstonearsenal:material:32>,
    <redstonerepository:material:1>,
    <redstonearsenal:material:32>,
    <redstonerepository:material:1>,
    <redstonearsenal:material:32>,
    <redstonerepository:material:1>,
    <redstonearsenal:material:32>,
    <redstonerepository:material:1>
]);
