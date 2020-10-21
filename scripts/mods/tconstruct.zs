/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 1000
mods.tconstruct.Melting.addRecipe(<liquid:blood> * 200, <ore:listAllmeatraw>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:pyrotheum> * 100, <ore:dustBlaze>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum> * 100, <ore:dustBlizz>, 50);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:zombie_pigman>, <liquid:gold>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:cow>, <liquid:milk>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:villager_golem>, <liquid:iron>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:snowman>, <liquid:water>);
mods.tconstruct.Melting.addEntityMelting(<entity:minecraft:enderman>, <liquid:ender>);
mods.tconstruct.Alloy.addRecipe(<liquid:end_steel> * 2, [<liquid:obsidian> * 2, <liquid:dark_steel> * 2, <liquid:ender> * 1]);
mods.tconstruct.Casting.addTableRecipe(<harvestcraft:cheeseitem>, null, <liquid:milk>, 20, false, 200);
mods.tconstruct.Melting.addRecipe(<liquid:pyrotheum> * 250, <ore:dustPyrotheum>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:cryotheum> * 250, <ore:dustCryotheum>, 50);
mods.tconstruct.Melting.addRecipe(<liquid:aerotheum> * 250, <ore:dustAerotheum>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:petrotheum> * 250, <ore:dustPetrotheum>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:aerotheum> * 100, <ore:dustBlitz>, 200);
mods.tconstruct.Melting.addRecipe(<liquid:petrotheum> * 100, <ore:dustBasalz>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:lava> * 200, <ore:netherrack>, 800);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 160, <actuallyadditions:item_solidified_experience>, 300);
mods.tconstruct.Casting.addTableRecipe(<harvestcraft:cheeseitem>, null, <liquid:milk>, 200, false);
mods.tconstruct.Alloy.addRecipe(<liquid:emerald> * 2, [<liquid:experience> * 3, <liquid:redstone> * 2, <liquid:glowstone> * 2]);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-experience_block>, null, <liquid:experience>, 1296, false, 200);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 1296, <ore:blockExperience>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 144, <ore:ingotExperience>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 16, <ore:nuggetExperience>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 11664, <ore:blockCompressedExperience>, 300);

mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-experience_nugget>, <tconstruct:cast_custom:1>, <liquid:experience>, 16, false, 20);
mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-experience_ingot>, <tconstruct:cast_custom>, <liquid:experience>, 144, false, 80);

mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-compressed_experience_block>, <ore:blockExperience>, <liquid:experience>, 10368, true, 300);

mods.tconstruct.Alloy.addRecipe(<liquid:fierymetal> * 2, [<liquid:iron> * 2, <liquid:pyrotheum> * 1, <liquid:lava> * 1]);
mods.tconstruct.Alloy.addRecipe(<liquid:experience> * 16, [<liquid:blood> * 8, <liquid:emerald> * 1, <liquid:gold> * 1]);

mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-pearl_of_knowledge>, <minecraft:emerald>, <liquid:experience>, 944784, true, 600);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 944784, <additions:greedycraft-pearl_of_knowledge>, 1200);
mods.tconstruct.Melting.addRecipe(<liquid:experience> * 288, <additions:greedycraft-experience_ore>, 100);

mods.tconstruct.Casting.addTableRecipe(<aether_legacy:golden_feather>, <minecraft:feather>, <liquid:gold>, 1152, true, 100);

mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:activator_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:detector_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:iron>, <minecraft:bucket>);
mods.tconstruct.Melting.removeRecipe(<liquid:gold>, <minecraft:golden_rail>);
mods.tconstruct.Melting.removeRecipe(<liquid:meteorite_fluid>, <taiga:obsidiorite_block>);
//mods.tconstruct.Melting.removeRecipe(<liquid:chocolate_liquor>, <minecraft:dye:3>);

mods.tconstruct.Casting.addTableRecipe(<additions:greedycraft-cryonic_artifact>, <minecraft:emerald>, <liquid:cryotheum>, 10000, true, 200);

mods.tconstruct.Casting.addTableRecipe(<tconevo:material>, <tconstruct:cast_custom>, <liquid:fusion_matrix>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-fusion_matrix_block>, null, <liquid:fusion_matrix>, 1296, false, 300);
mods.tconstruct.Melting.addRecipe(<liquid:fusion_matrix> * 144, <tconevo:material>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:fusion_matrix> * 1296, <ore:blockFusionMatrix>, 1300);
mods.tconstruct.Alloy.addRecipe(<liquid:fusion_matrix> * 2, [<liquid:manyullyn> * 2, <liquid:adamant_fluid> * 1, <liquid:enderium> * 2]);
mods.tconstruct.Alloy.addRecipe(<liquid:fluxed_electrum> * 288, [<liquid:gold> * 144, <liquid:silver> * 144, <liquid:redstone> * 1000]);
mods.tconstruct.Alloy.addRecipe(<liquid:adamant_fluid> * 3, [<liquid:nihilite_fluid> * 1, <liquid:iox_fluid> * 3]);

mods.tconstruct.Melting.addRecipe(<liquid:ethaxium> * 144, <ore:ingotEthaxium>, 1300);
//mods.tconstruct.Melting.addRecipe(<liquid:ethaxium> * 1296, <ore:blockEthaxium>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:gaia> * 144, <ore:ingotGaia>, 700);
mods.tconstruct.Melting.addRecipe(<liquid:ravaging> * 144, <ore:ingotRavaging>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:mithminite> * 144, <ore:ingotMithminite>, 1100);
mods.tconstruct.Melting.addRecipe(<liquid:adaminite> * 144, <ore:ingotAdaminite>, 1300);
mods.tconstruct.Melting.addRecipe(<liquid:mithrillium> * 144, <ore:ingotMithrillium>, 1500);

mods.tconstruct.Melting.addRecipe(<liquid:terra_alloy> * 144, <ore:ingotTerraAlloy>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:terra_alloy> * 1296, <ore:blockTerraAlloy>, 1500);

mods.tconstruct.Melting.addRecipe(<liquid:insanium> * 144, <ore:ingotInsanium>, 1400);

mods.tconstruct.Casting.addTableRecipe(<additions:terra_alloy_ingot>, <tconstruct:cast_custom>, <liquid:terra_alloy>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-terra_alloy_block>, null, <liquid:terra_alloy>, 1296, false, 300);
mods.tconstruct.Alloy.addRecipe(<liquid:terra_alloy> * 2, [<liquid:cytosinite> * 1, <liquid:cryonium> * 1, <liquid:infernium> * 1, <liquid:titanium> * 1]);

mods.tconstruct.Casting.addTableRecipe(<additions:astral_metal_ingot>, <tconstruct:cast_custom>, <liquid:astral_metal>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-astral_metal_block>, null, <liquid:astral_metal>, 1296, false, 300);
mods.tconstruct.Casting.addTableRecipe(<additions:cosmilite_ingot>, <tconstruct:cast_custom>, <liquid:cosmilite>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-cosmilite_block>, null, <liquid:cosmilite>, 1296, false, 300);
mods.tconstruct.Melting.addRecipe(<liquid:astral_metal> * 144, <ore:ingotAstralMetal>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:astral_metal> * 1296, <ore:blockAstralMetal>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:cosmilite> * 144, <ore:ingotCosmilite>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:cosmilite> * 1296, <ore:blockCosmilite>, 1500);

mods.tconstruct.Melting.addRecipe(<liquid:orichalcos> * 144, <ore:ingotOrichalcos>, 1400);
mods.tconstruct.Melting.addRecipe(<liquid:orichalcos> * 1296, <ore:blockOrichalcos>, 1400);

mods.tconstruct.Casting.addTableRecipe(<extrabotany:material:1>, <tconstruct:cast_custom>, <liquid:orichalcos>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<extrabotany:blockorichalcos>, null, <liquid:orichalcos>, 1296, false, 300);

mods.tconstruct.Melting.addRecipe(<liquid:yellorium> * 144, <ore:ingotYellorium>, 1400);
mods.tconstruct.Melting.addRecipe(<liquid:yellorium> * 1296, <ore:blockYellorium>, 1400);

mods.tconstruct.Melting.addRecipe(<liquid:liquid_chocolate> * 144, <ore:foodChocolate>, 300);
mods.tconstruct.Melting.addRecipe(<liquid:liquid_chocolate> * 1296, <ore:blockChocolate>, 300);
mods.tconstruct.Casting.addTableRecipe(<bigreactors:ingotyellorium>, <tconstruct:cast_custom>, <liquid:yellorium>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<bigreactors:blockyellorium>, null, <liquid:yellorium>, 1296, false, 300);

mods.tconstruct.Casting.addTableRecipe(<candymod:chocolate_bar>, <tconstruct:cast_custom>, <liquid:cosmilite>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<candymod:chocolate_block>, null, <liquid:cosmilite>, 1296, false, 300);

mods.tconstruct.Alloy.addRecipe(<liquid:liquid_chocolate> * 2, [<liquid:chocolate_liquor> * 1, <liquid:milk> * 1]);

mods.tconstruct.Melting.addRecipe(<liquid:netherite> * 144, <ore:ingotNetherite>, 1500);
mods.tconstruct.Melting.addRecipe(<liquid:netherite> * 1296, <ore:blockNetherite>, 1500);
mods.tconstruct.Casting.addTableRecipe(<additions:netherite_ingot>, <tconstruct:cast_custom>, <liquid:netherite>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-netherite_block>, null, <liquid:netherite>, 1296, false, 300);
mods.tconstruct.Alloy.addRecipe(<liquid:netherite> * 144, [<liquid:gold> * 576, <liquid:ancient_debris> * 576]);

mods.tconstruct.Melting.addRecipe(<liquid:ancient_debris> * 160, <ore:gemAncientDebris>, 1320);
mods.tconstruct.Melting.addRecipe(<liquid:ancient_debris> * 320, <ore:oreAncientDebris>, 1320);
mods.tconstruct.Casting.addTableRecipe(<additions:netherite_scrap>, <tconstruct:cast_custom>, <liquid:ancient_debris>, 160, false, 200);
mods.tconstruct.Casting.removeTableRecipe(<tcomplement:materials:1>);
mods.tconstruct.Casting.removeBasinRecipe(<tcomplement:scorched_block>);
mods.tconstruct.Casting.removeBasinRecipe(<tcomplement:scorched_block:1>);
mods.tconstruct.Casting.removeBasinRecipe(<tcomplement:scorched_block:10>);
mods.tconstruct.Melting.addRecipe(<liquid:scorched> * 144, <ore:ingotBrickScorched>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:scorched> * 576, <ore:blockScorched>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:scorched> * 288, <ore:slabScorched>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:scorched> * 432, <ore:stairScorched>, 900);
mods.tconstruct.Melting.addRecipe(<liquid:iron> * 288, <actuallyadditions:item_misc:20>, 1100);
mods.tconstruct.Alloy.addRecipe(<liquid:scorched> * 144, [<liquid:lava> * 144, <liquid:stone> * 144]);
mods.tconstruct.Casting.addTableRecipe(<tcomplement:materials:1>, <tconstruct:cast_custom>, <liquid:scorched>, 144, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<tcomplement:scorched_block>, null, <liquid:scorched>, 1296, false, 300);
mods.tconstruct.Melting.addRecipe(<liquid:organic_fluid> * 100, <mysticalagriculture:fertilized_essence>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:organic_fluid> * 150, <mysticalagriculture:mystical_fertilizer>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:organic_fluid> * 25, <ore:itemBiomass>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:organic_fluid> * 45, <ore:itemBiomassRich>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:organic_fluid> * 90, <ore:itemBioblend>, 400);
mods.tconstruct.Melting.addRecipe(<liquid:organic_fluid> * 115, <ore:itemBioblendRich>, 400);
mods.tconstruct.Casting.addTableRecipe(<modularmachinery:itemmodularium>, <tconstruct:cast_custom>, <liquid:modularium>, 144, false, 200);
mods.tconstruct.Alloy.addRecipe(<liquid:modularium> * 288, [<liquid:iron> * 144, <liquid:bronze> * 144, <liquid:redstone> * 100]);
mods.tconstruct.Melting.addRecipe(<liquid:modularium> * 144, <ore:ingotModularium>, 900);
//mods.tconstruct.Melting.addRecipe(<liquid:liquid_chocolate> * 48, <ore:beanCocoa>, 200);

//mods.tconstruct.Melting.addRecipe(<liquid:cryonium> * 288, <additions:greedycraft-cryonium_ore>, 200);
//mods.tconstruct.Melting.addRecipe(<liquid:cryonium> * 144, <additions:cryonium_ingot>, 200);
//mods.tconstruct.Melting.addRecipe(<liquid:cryonium> * 1296, <additions:greedycraft-cryonium_block>, 900);
//mods.tconstruct.Casting.addTableRecipe(<additions:cryonium_ingot>, <tconstruct:cast_custom>, <liquid:cryonium>, 144, false, 20);
//mods.tconstruct.Casting.addBasinRecipe(<additions:greedycraft-cryonium_block>, null, <liquid:cryonium>, 1296, false, 100);