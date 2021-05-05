/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4001
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

RecipeUtil.removeAndAddShapeless("exu_squid_ring", <extrautils2:chickenring:1>, [
    <extrautils2:chickenring>, <minecraft:dye>
]);
RecipeUtil.removeAndAddShapeless("exu_angel_ring", <extrautils2:angelring>, [
    <extrautils2:chickenring:1>, <draconicevolution:awakened_core>
]);
RecipeUtil.removeAndAddShapeless("quark_rainbow_rune", <quark:rune:16> * 16, [
    <quark:rune>, <quark:rune:1>, <quark:rune:2>, <quark:rune:3>, <quark:rune:4>, <quark:rune:5>, <quark:rune:11>, <quark:rune:14>, <quark:rune:15>
]);

RecipeUtil.removeAndAdd("iron_chain_ring", <hooked:microcrafting:2>, [
    [null, <ore:nuggetIron>, <ore:nuggetIron>], 
    [<ore:nuggetIron>, null, <ore:nuggetIron>], 
    [<ore:nuggetIron>, <ore:nuggetIron>, null]
]);
RecipeUtil.removeAndAdd("bonsai_pot", <bonsaitrees:bonsaipot>, [
    [null, null, null], 
    [<ore:ingotBrick>, <ore:shardTime>, <ore:ingotBrick>], 
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>]
]);
RecipeUtil.removeAndAdd("laser_amplifier", <mekanism:machineblock2:14>, [
    [<ore:ingotOsmium>, <ore:gemDiamond>, <ore:ingotOsmium>],
    [<ore:shardCreative>, <mekanism:energycube>, <ore:shardCreative>], 
    [<ore:ingotOsmium>, <draconicevolution:chaotic_core>, <ore:ingotOsmium>]
]);
RecipeUtil.removeAndAdd("xu_overclocked_generator", <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
    [<actuallyadditions:item_crystal_empowered:1>, <ore:ingotAeonsteel>, <actuallyadditions:item_crystal_empowered:1>],
    [<ore:ingotDurasteel>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <ore:ingotDurasteel>], 
    [<actuallyadditions:item_crystal_empowered:1>, <ore:ingotAeonsteel>, <actuallyadditions:item_crystal_empowered:1>]
]);
RecipeUtil.removeAndAdd("fusion_core", <draconicevolution:fusion_crafting_core>, [
    [<ore:ingotFusionMatrix>, <ore:ingotDurasteel>, <ore:ingotFusionMatrix>],
    [<ore:ingotDurasteel>, <draconicevolution:draconic_core>, <ore:ingotDurasteel>], 
    [<ore:ingotFusionMatrix>, <ore:ingotDurasteel>, <ore:ingotFusionMatrix>]
]);
RecipeUtil.removeAndAdd("storage_detector", <rftools:storage_scanner>, [
    [<ore:ingotFluixSteel>, <ore:ingotDurasteel>, <ore:ingotFluixSteel>],
    [<ore:pearlEnderEye>, <rftools:machine_frame>, <ore:pearlEnderEye>], 
    [<ore:ingotFluixSteel>, <ore:ingotDurasteel>, <ore:ingotFluixSteel>]
]);
RecipeUtil.removeAndAdd("idol_of_sorrow", <defiledlands:idol_sorrow>, [
    [null, <ore:eternalLifeEssence>, null],
    [<ore:ingotRavaging>, <ore:blockScarlite>, <ore:ingotRavaging>], 
    [null, <ore:ingotUmbrium>, null]
]);
RecipeUtil.removeAndAdd("birdsfoods_pita", <birdsfoods:pita>, [
    [null, null, null],
    [<ore:foodFlour>, null, <ore:foodFlour>], 
    [<ore:foodFlour>, <ore:foodFlour>, <ore:foodFlour>]
]);
RecipeUtil.removeAndAdd("lens_of_certain_death", <actuallyadditions:item_more_damage_lens>, [
    [<ore:ingotAeonsteel>, <ore:ingotCrimsonite>, <ore:ingotAeonsteel>],
    [<ore:ingotCrimsonite>, <actuallyadditions:item_damage_lens>, <ore:ingotCrimsonite>], 
    [<ore:ingotAeonsteel>, <ore:ingotCrimsonite>, <ore:ingotAeonsteel>]
]);
RecipeUtil.removeAndAdd("lens_of_miner", <actuallyadditions:item_mining_lens>, [
    [<ore:ingotAeonsteel>, <ore:ingotChromium>, <ore:ingotAeonsteel>],
    [<ore:ingotChromium>, <actuallyadditions:item_misc:18>, <ore:ingotChromium>], 
    [<ore:ingotAeonsteel>, <ore:ingotChromium>, <ore:ingotAeonsteel>]
]);
RecipeUtil.removeAndAdd("master_infusion_crystal", <mysticalagriculture:master_infusion_crystal>, [
    [<ore:ingotDurasteel>, <ore:blockSupremiumEssence>, <ore:ingotDurasteel>],
    [<ore:blockSupremiumEssence>, <ore:netherStar>, <ore:blockSupremiumEssence>], 
    [<ore:ingotDurasteel>, <ore:blockSupremiumEssence>, <ore:ingotDurasteel>]
]);
RecipeUtil.removeAndAdd("transmutation_efficiency", <equivalentintegrations:efficiency_catalyst>, [
    [<charm:charged_emerald>, null, <charm:charged_emerald>],
    [<charm:charged_emerald>, <projecte:item.pe_matter:1>, <charm:charged_emerald>], 
    [<charm:charged_emerald>, <charm:charged_emerald>, <charm:charged_emerald>]
]);
RecipeUtil.removeAndAdd("transmutation_charm", <equivalentintegrations:soulbound_talisman>, [
    [<ore:ingotSoulium>, null, <ore:ingotSoulium>],
    [<ore:ingotSoulium>, <additions:greedycraft-energy_matter_core>, <ore:ingotSoulium>], 
    [<ore:ingotSoulium>, null, <ore:ingotSoulium>]
]);
RecipeUtil.removeAndAdd("transmutation_upgrade", <equivalentintegrations:alchemical_algorithms>, [
    [<minecraft:book>, null, <minecraft:book>],
    [<additions:greedycraft-pearl_of_knowledge>, <additions:greedycraft-energy_matter_core>, <additions:greedycraft-pearl_of_knowledge>], 
    [<minecraft:book>, <projecte:item.pe_matter:1>, <minecraft:book>]
]);
RecipeUtil.removeAndAdd("transmutation_machine_0", <equivalentintegrations:transmutation_chamber>, [
    [<ore:ingotAeonsteel>, <ore:ingotAeonsteel>, <ore:ingotAeonsteel>],
    [<ore:ingotAeonsteel>, <additions:greedycraft-energy_matter_core>, <ore:ingotAeonsteel>], 
    [<ore:ingotAeonsteel>, <ore:ingotAeonsteel>, <ore:ingotAeonsteel>]
]);
RecipeUtil.removeAndAdd("transmutation_machine_1", <equivalentintegrations:transmutation_disassembler>, [
    [<ore:ingotAeonsteel>, <ore:ingotAeonsteel>, <ore:ingotAeonsteel>],
    [<ore:ingotDurasteel>, <additions:greedycraft-energy_matter_core>, <ore:ingotDurasteel>], 
    [<ore:ingotAeonsteel>, <ore:ingotAeonsteel>, <ore:ingotAeonsteel>]
]);
RecipeUtil.removeAndAdd("transmutation_machine_2", <equivalentintegrations:transmutation_generator>, [
    [<ore:ingotAeonsteel>, <ore:ingotElectrumFlux>, <ore:ingotAeonsteel>],
    [<ore:ingotElectrumFlux>, <additions:greedycraft-energy_matter_core>, <ore:ingotElectrumFlux>], 
    [<ore:ingotAeonsteel>, <ore:ingotElectrumFlux>, <ore:ingotAeonsteel>]
]);
RecipeUtil.removeAndAdd("diamond_horse_armor", <minecraft:diamond_horse_armor>, [
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
    [<ore:leather>, <ore:wool>, <ore:leather>],
    [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]
]);
RecipeUtil.removeAndAdd("gold_horse_armor", <minecraft:golden_horse_armor>, [
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
    [<ore:leather>, <ore:wool>, <ore:leather>],
    [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
]);
RecipeUtil.removeAndAdd("iron_horse_armor", <minecraft:iron_horse_armor>, [
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
    [<ore:leather>, <ore:wool>, <ore:leather>],
    [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
]);

