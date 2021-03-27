/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 11000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenutils.I18n;

import scripts.util.mystical_agriculture.regName;
import scripts.util.mystical_agriculture.energy;
import scripts.util.mystical_agriculture.time;
import scripts.util.mystical_agriculture.fluid;
import scripts.util.mystical_agriculture.timeCarpenter;
import scripts.util.mystical_agriculture.fluidCarpenter;
import scripts.util.mystical_agriculture.seedChance;
import scripts.util.mystical_agriculture.registerSeedRecipe;

registerSeedRecipe(<mysticalcreations:titanium_seeds>, <additions:titanium_ingot>, 6, 1, <mysticalcreations:titanium_essence>, <additions:greedycraft-titanium_nugget>);
registerSeedRecipe(<mysticalcreations:chromium_seeds>, <additions:chromium_ingot>, 5, 1, <mysticalcreations:chromium_essence>, null);
registerSeedRecipe(<mysticalcreations:cake_seeds>, <minecraft:cake>, 3, 2, <mysticalcreations:cake_essence>, null);
registerSeedRecipe(<mysticalcreations:witch_seeds>, <mysticalcreations:witch_chunk>, 4, 1, <mysticalcreations:witch_essence>, null);
registerSeedRecipe(<mysticalcreations:stainless_steel_seeds>, <additions:stainless_steel_ingot>, 5, 1, <mysticalcreations:stainless_steel_essence>, null);
registerSeedRecipe(<mysticalcreations:fusion_matrix_seeds>, <tconevo:material>, 6, 1, <mysticalcreations:fusion_matrix_essence>, <tconevo:material>);
registerSeedRecipe(<mysticalcreations:meteor_seeds>, <nyx:meteor_ingot>, 5, 1, <mysticalcreations:meteor_essence>, <nyx:meteor_ingot>);
