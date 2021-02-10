/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 930
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;


GameStagesUtil.stageDescendantOfTheSun.addOreReplacement(<additions:greedycraft-infernium_ore>, <quark:basalt>, false);

GameStagesUtil.stageEnderCharm.addOreReplacement(<minecraft:end_portal_frame:*>, <additions:greedycraft-unknown_block>, false);

GameStagesUtil.stageGettingStarted.addOreReplacement(<ore:chest>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageGettingStarted.addOreReplacement(<ore:workbench>, <additions:greedycraft-unknown_block>, false);

GameStagesUtil.stageHardmode.addOreReplacement(<additions:greedycraft-cytosinite_ore>, <biomesoplenty:mud>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<biomesoplenty:gem_ore:*>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<biomesoplenty:gem_ore:0>, <minecraft:end_stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<draconicevolution:draconium_ore:1>, <minecraft:netherrack>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<draconicevolution:draconium_ore:2>, <minecraft:end_stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<draconicevolution:draconium_ore>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<netherex:amethyst_ore>, <minecraft:netherrack>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<ore:oreCryonium>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<ore:oreTitanium>, <minecraft:end_stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:abyssum_ore:*>, <minecraft:end_stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:aurorium_ore:*>, <minecraft:end_stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:dilithium_ore:*>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:duranite_ore:*>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:eezo_ore:*>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:jauxum_ore:*>, <minecraft:stone:1>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:karmesine_ore:*>, <minecraft:stone:5>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:meteorite_block>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:meteoritecobble_block>, <minecraft:cobblestone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:obsidiorite_block>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:obsidioritecobble_block>, <minecraft:cobblestone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:osram_ore:*>, <taiga:basalt_block>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:ovium_ore:*>, <minecraft:stone:3>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:palladium_ore:*>, <minecraft:end_stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:prometheum_ore:*>, <minecraft:netherrack>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:tiberium_ore:*>, <minecraft:netherrack>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:uru_ore:*>, <minecraft:stone>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:valyrium_ore:*>, <minecraft:netherrack>, false);
GameStagesUtil.stageHardmode.addOreReplacement(<taiga:vibranium_ore:*>, <minecraft:stone>, false);

GameStagesUtil.stageNether.addOreReplacement(<minecraft:anvil:*>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNether.addOreReplacement(<minecraft:beacon:*>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNether.addOreReplacement(<minecraft:enchanting_table:*>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNether.addOreReplacement(<minecraft:quartz_ore>, <minecraft:netherrack>, false);
GameStagesUtil.stageNether.addOreReplacement(<netherendingores:ore_other_1>, <minecraft:stone>, false);
GameStagesUtil.stageNether.addOreReplacement(<ore:oreAeroite>, <aether_legacy:aercloud>, false);
GameStagesUtil.stageNether.addOreReplacement(<ore:oreAqualite>, <minecraft:prismarine>, false);
GameStagesUtil.stageNether.addOreReplacement(<thaumcraft:ore_quartz>, <minecraft:stone>, false);

GameStagesUtil.stageNoviceEngineer.addOreReplacement(<enderio:block_simple_alloy_smelter>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNoviceEngineer.addOreReplacement(<enderio:block_simple_crafter>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNoviceEngineer.addOreReplacement(<enderio:block_simple_furnace>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNoviceEngineer.addOreReplacement(<enderio:block_simple_sag_mill>, <additions:greedycraft-unknown_block>, false);
GameStagesUtil.stageNoviceEngineer.addOreReplacement(<enderio:block_simple_stirling_generator>, <additions:greedycraft-unknown_block>, false);

GameStagesUtil.stageSkilledEngineer.addOreReplacement(<bigreactors:oreyellorite>, <minecraft:stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<mekanism:oreblock>, <minecraft:stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_end_modded_1:11>, <minecraft:end_stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_end_modded_1:13>, <minecraft:end_stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_end_modded_1:2>, <minecraft:end_stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_end_modded_1:6>, <minecraft:end_stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_nether_modded_1:11>, <minecraft:netherrack>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_nether_modded_1:13>, <minecraft:netherrack>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_nether_modded_1:2>, <minecraft:netherrack>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<netherendingores:ore_nether_modded_1:6>, <minecraft:netherrack>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<thermalfoundation:ore:6>, <minecraft:stone>, false);
GameStagesUtil.stageSkilledEngineer.addOreReplacement(<thermalfoundation:ore:7>, <minecraft:stone>, false);
