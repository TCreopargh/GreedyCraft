/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 30
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.modularmachinery.RecipeBuilder;

import scripts.util.mystical_agriculture.regName;
import scripts.util.mystical_agriculture.energy;
import scripts.util.mystical_agriculture.time;
import scripts.util.mystical_agriculture.fluid;
import scripts.util.mystical_agriculture.timeCarpenter;
import scripts.util.mystical_agriculture.fluidCarpenter;
import scripts.util.mystical_agriculture.seedChance;

val regName = "organic_infuser";
val speed = 200;

val crops as IItemStack[][] = [
    [<mysticalagriculture:dirt_seeds>, <mysticalagriculture:dirt_essence>],
    [<mysticalagriculture:water_seeds>, <mysticalagriculture:water_essence>],
    [<mysticalagriculture:zombie_seeds>, <mysticalagriculture:zombie_essence>],
    [<mysticalagriculture:wood_seeds>, <mysticalagriculture:wood_essence>],
    [<mysticalagriculture:ice_seeds>, <mysticalagriculture:ice_essence>],
    [<mysticalagriculture:nature_seeds>, <mysticalagriculture:nature_essence>],
    [<mysticalagriculture:stone_seeds>, <mysticalagriculture:stone_essence>],
    [<mysticalagriculture:aluminum_seeds>, <mysticalagriculture:aluminum_essence>],
    [<mysticalagriculture:fire_seeds>, <mysticalagriculture:fire_essence>],
    [<mysticalagriculture:dye_seeds>, <mysticalagriculture:dye_essence>],
    [<mysticalagriculture:slime_seeds>, <mysticalagriculture:slime_essence>],
    [<mysticalagriculture:sheep_seeds>, <mysticalagriculture:sheep_essence>],
    [<mysticalagriculture:nether_seeds>, <mysticalagriculture:nether_essence>],
    [<mysticalagriculture:aluminum_brass_seeds>, <mysticalagriculture:aluminum_brass_essence>],
    [<mysticalagriculture:marble_seeds>, <mysticalagriculture:marble_essence>],
    [<mysticalagriculture:chicken_seeds>, <mysticalagriculture:chicken_essence>],
    [<mysticalagriculture:limestone_seeds>, <mysticalagriculture:limestone_essence>],
    [<mysticalagriculture:silicon_seeds>, <mysticalagriculture:silicon_essence>],
    [<mysticalagriculture:cow_seeds>, <mysticalagriculture:cow_essence>],
    [<mysticalagriculture:copper_seeds>, <mysticalagriculture:copper_essence>],
    [<mysticalagriculture:sulfur_seeds>, <mysticalagriculture:sulfur_essence>],
    [<mysticalagriculture:pig_seeds>, <mysticalagriculture:pig_essence>],
    [<mysticalagriculture:coal_seeds>, <mysticalagriculture:coal_essence>],
    [<mysticalagriculture:mystical_flower_seeds>, <mysticalagriculture:mystical_flower_essence>],
    [<mysticalagriculture:grains_of_infinity_seeds>, <mysticalagriculture:grains_of_infinity_essence>],
    [<mysticalagriculture:apatite_seeds>, <mysticalagriculture:apatite_essence>],
    [<mysticalagriculture:basalt_seeds>, <mysticalagriculture:basalt_essence>],
    [<mysticalagriculture:slate_seeds>, <mysticalagriculture:slate_essence>],
    [<mysticalagriculture:brass_seeds>, <mysticalagriculture:brass_essence>],
    [<mysticalagriculture:bronze_seeds>, <mysticalagriculture:bronze_essence>],
    [<mysticalagriculture:glowstone_seeds>, <mysticalagriculture:glowstone_essence>],
    [<mysticalagriculture:thaumium_seeds>, <mysticalagriculture:thaumium_essence>],
    [<mysticalagriculture:guardian_seeds>, <mysticalagriculture:guardian_essence>],
    [<mysticalagriculture:blitz_seeds>, <mysticalagriculture:blitz_essence>],
    [<mysticalagriculture:steeleaf_seeds>, <mysticalagriculture:steeleaf_essence>],
    [<mysticalagriculture:spider_seeds>, <mysticalagriculture:spider_essence>],
    [<mysticalagriculture:coralium_seeds>, <mysticalagriculture:coralium_essence>],
    [<mysticalagriculture:ardite_seeds>, <mysticalagriculture:ardite_essence>],
    [<mysticalagriculture:iron_seeds>, <mysticalagriculture:iron_essence>],
    [<mysticalagriculture:certus_quartz_seeds>, <mysticalagriculture:certus_quartz_essence>],
    [<mysticalagriculture:sky_stone_seeds>, <mysticalagriculture:sky_stone_essence>],
    [<mysticalagriculture:tin_seeds>, <mysticalagriculture:tin_essence>],
    [<mysticalagriculture:redstone_alloy_seeds>, <mysticalagriculture:redstone_alloy_essence>],
    [<mysticalagriculture:knightslime_seeds>, <mysticalagriculture:knightslime_essence>],
    [<mysticalagriculture:rabbit_seeds>, <mysticalagriculture:rabbit_essence>],
    [<mysticalagriculture:silver_seeds>, <mysticalagriculture:silver_essence>],
    [<mysticalagriculture:aquamarine_seeds>, <mysticalagriculture:aquamarine_essence>],
    [<mysticalagriculture:obsidian_seeds>, <mysticalagriculture:obsidian_essence>],
    [<mysticalagriculture:skeleton_seeds>, <mysticalagriculture:skeleton_essence>],
    [<mysticalagriculture:manasteel_seeds>, <mysticalagriculture:manasteel_essence>],
    [<mysticalagriculture:ender_biotite_seeds>, <mysticalagriculture:ender_biotite_essence>],
    [<mysticalagriculture:black_quartz_seeds>, <mysticalagriculture:black_quartz_essence>],
    [<mysticalagriculture:quicksilver_seeds>, <mysticalagriculture:quicksilver_essence>],
    [<mysticalagriculture:conductive_iron_seeds>, <mysticalagriculture:conductive_iron_essence>],
    [<mysticalagriculture:lead_seeds>, <mysticalagriculture:lead_essence>],
    [<mysticalagriculture:nether_quartz_seeds>, <mysticalagriculture:nether_quartz_essence>],
    [<mysticalagriculture:saltpeter_seeds>, <mysticalagriculture:saltpeter_essence>],
    [<mysticalagriculture:blizz_seeds>, <mysticalagriculture:blizz_essence>],
    [<mysticalagriculture:electrical_steel_seeds>, <mysticalagriculture:electrical_steel_essence>],
    [<mysticalagriculture:graphite_seeds>, <mysticalagriculture:graphite_essence>],
    [<mysticalagriculture:creeper_seeds>, <mysticalagriculture:creeper_essence>],
    [<mysticalagriculture:basalz_seeds>, <mysticalagriculture:basalz_essence>],
    [<mysticalagriculture:ironwood_seeds>, <mysticalagriculture:ironwood_essence>],
    [<mysticalagriculture:redstone_seeds>, <mysticalagriculture:redstone_essence>],
    [<mysticalagriculture:pulsating_iron_seeds>, <mysticalagriculture:pulsating_iron_essence>],
    [<mysticalagriculture:gold_seeds>, <mysticalagriculture:gold_essence>],
    [<mysticalagriculture:end_seeds>, <mysticalagriculture:end_essence>],
    [<mysticalagriculture:tanzanite_seeds>, <mysticalagriculture:tanzanite_essence>],
    [<mysticalagriculture:experience_seeds>, <mysticalagriculture:experience_essence>],
    [<mysticalagriculture:dark_steel_seeds>, <mysticalagriculture:dark_steel_essence>],
    [<mysticalagriculture:signalum_seeds>, <mysticalagriculture:signalum_essence>],
    [<mysticalagriculture:energetic_alloy_seeds>, <mysticalagriculture:energetic_alloy_essence>],
    [<mysticalagriculture:lumium_seeds>, <mysticalagriculture:lumium_essence>],
    [<mysticalagriculture:osmium_seeds>, <mysticalagriculture:osmium_essence>],
    [<mysticalagriculture:elementium_seeds>, <mysticalagriculture:elementium_essence>],
    [<mysticalagriculture:electrum_seeds>, <mysticalagriculture:electrum_essence>],
    [<mysticalagriculture:fluix_seeds>, <mysticalagriculture:fluix_essence>],
    [<mysticalagriculture:amber_seeds>, <mysticalagriculture:amber_essence>],
    [<mysticalagriculture:malachite_seeds>, <mysticalagriculture:malachite_essence>],
    [<mysticalagriculture:ghast_seeds>, <mysticalagriculture:ghast_essence>],
    [<mysticalagriculture:mithril_seeds>, <mysticalagriculture:mithril_essence>],
    [<mysticalagriculture:topaz_seeds>, <mysticalagriculture:topaz_essence>],
    [<mysticalagriculture:peridot_seeds>, <mysticalagriculture:peridot_essence>],
    [<mysticalagriculture:nickel_seeds>, <mysticalagriculture:nickel_essence>],
    [<mysticalagriculture:soularium_seeds>, <mysticalagriculture:soularium_essence>],
    [<mysticalagriculture:enderman_seeds>, <mysticalagriculture:enderman_essence>],
    [<mysticalagriculture:alumite_seeds>, <mysticalagriculture:alumite_essence>],
    [<mysticalagriculture:knightmetal_seeds>, <mysticalagriculture:knightmetal_essence>],
    [<mysticalagriculture:steel_seeds>, <mysticalagriculture:steel_essence>],
    [<mysticalagriculture:cobalt_seeds>, <mysticalagriculture:cobalt_essence>],
    [<mysticalagriculture:invar_seeds>, <mysticalagriculture:invar_essence>],
    [<mysticalagriculture:fluxed_electrum_seeds>, <mysticalagriculture:fluxed_electrum_essence>],
    [<mysticalagriculture:fiery_ingot_seeds>, <mysticalagriculture:fiery_ingot_essence>],
    [<mysticalagriculture:glowstone_ingot_seeds>, <mysticalagriculture:glowstone_ingot_essence>],
    [<mysticalagriculture:void_metal_seeds>, <mysticalagriculture:void_metal_essence>],
    [<mysticalagriculture:sapphire_seeds>, <mysticalagriculture:sapphire_essence>],
    [<mysticalagriculture:abyssalnite_seeds>, <mysticalagriculture:abyssalnite_essence>],
    [<mysticalagriculture:lapis_lazuli_seeds>, <mysticalagriculture:lapis_lazuli_essence>],
    [<mysticalagriculture:constantan_seeds>, <mysticalagriculture:constantan_essence>],
    [<mysticalagriculture:ruby_seeds>, <mysticalagriculture:ruby_essence>],
    [<mysticalagriculture:blaze_seeds>, <mysticalagriculture:blaze_essence>],
    [<mysticalagriculture:starmetal_seeds>, <mysticalagriculture:starmetal_essence>],
    [<mysticalagriculture:enderium_seeds>, <mysticalagriculture:enderium_essence>],
    [<mysticalagriculture:terrasteel_seeds>, <mysticalagriculture:terrasteel_essence>],
    [<mysticalagriculture:draconium_seeds>, <mysticalagriculture:draconium_essence>],
    [<mysticalagriculture:wither_skeleton_seeds>, <mysticalagriculture:wither_skeleton_essence>],
    [<mysticalagriculture:iridium_seeds>, <mysticalagriculture:iridium_essence>],
    [<mysticalagriculture:yellorium_seeds>, <mysticalagriculture:yellorium_essence>],
    [<mysticalagriculture:manyullyn_seeds>, <mysticalagriculture:manyullyn_essence>],
    [<mysticalagriculture:ender_amethyst_seeds>, <mysticalagriculture:ender_amethyst_essence>],
    [<mysticalagriculture:emerald_seeds>, <mysticalagriculture:emerald_essence>],
    [<mysticalagriculture:rock_crystal_seeds>, <mysticalagriculture:rock_crystal_essence>],
    [<mysticalagriculture:dreadium_seeds>, <mysticalagriculture:dreadium_essence>],
    [<mysticalagriculture:end_steel_seeds>, <mysticalagriculture:end_steel_essence>],
    [<mysticalagriculture:platinum_seeds>, <mysticalagriculture:platinum_essence>],
    [<mysticalagriculture:refined_obsidian_seeds>, <mysticalagriculture:refined_obsidian_essence>],
    [<mysticalagriculture:vibrant_alloy_seeds>, <mysticalagriculture:vibrant_alloy_essence>],
    [<mysticalagriculture:diamond_seeds>, <mysticalagriculture:diamond_essence>],
    [<mysticalagradditions:awakened_draconium_seeds>, <mysticalagradditions:awakened_draconium_essence>],
    [<mysticalagradditions:nether_star_seeds>, <mysticalagradditions:nether_star_essence>],
    [<mysticalagradditions:neutronium_seeds>, <mysticalagradditions:neutronium_essence>],
    [<mysticalagradditions:dragon_egg_seeds>, <mysticalagradditions:dragon_egg_essence>],
    [<jaopca:item_mysticalseedsscarlite>, <jaopca:item_essencescarlite>],
    [<jaopca:item_mysticalseedscryonium>, <jaopca:item_essencecryonium>],
    [<jaopca:item_mysticalseedsambrosium>, <jaopca:item_essenceambrosium>],
    [<jaopca:item_mysticalseedshephaestite>, <jaopca:item_essencehephaestite>],
    [<jaopca:item_mysticalseedsexperience>, <jaopca:item_essenceexperience>],
    [<jaopca:item_mysticalseedsdimensionalshard>, <jaopca:item_essencedimensionalshard>],
    [<jaopca:item_mysticalseedsinfernium>, <jaopca:item_essenceinfernium>],
    [<jaopca:item_mysticalseedsliquifiedcoralium>, <jaopca:item_essenceliquifiedcoralium>],
    [<jaopca:item_mysticalseedsshadowium>, <jaopca:item_essenceshadowium>],
    [<jaopca:item_mysticalseedscytosinite>, <jaopca:item_essencecytosinite>],
    [<jaopca:item_mysticalseedsasgardium>, <jaopca:item_essenceasgardium>],
    [<jaopca:item_mysticalseedsaeroite>, <jaopca:item_essenceaeroite>],
    [<jaopca:item_mysticalseedsumbrium>, <jaopca:item_essenceumbrium>],
    [<jaopca:item_mysticalseedsniter>, <jaopca:item_essenceniter>],
    [<jaopca:item_mysticalseedsancientdebris>, <jaopca:item_essenceancientdebris>],
    [<jaopca:item_mysticalseedsastralstarmetal>, <jaopca:item_essenceastralstarmetal>],
    [<jaopca:item_mysticalseedsquartzblack>, <jaopca:item_essencequartzblack>],
    [<jaopca:item_mysticalseedsaqualite>, <jaopca:item_essenceaqualite>],
    [<jaopca:item_mysticalseedsmanganese>, <jaopca:item_essencemanganese>],
    [<mysticalagriculture:tier1_inferium_seeds>, <mysticalagriculture:crafting>],
    [<mysticalagriculture:tier2_inferium_seeds>, <mysticalagriculture:crafting> * 2],
    [<mysticalagriculture:tier3_inferium_seeds>, <mysticalagriculture:crafting> * 3],
    [<mysticalagriculture:tier4_inferium_seeds>, <mysticalagriculture:crafting> * 4],
    [<mysticalagriculture:tier5_inferium_seeds>, <mysticalagriculture:crafting> * 5],
    [<mysticalagradditions:tier6_inferium_seeds>, <mysticalagriculture:crafting> * 6],
    [<appliedenergistics2:crystal_seed>, <appliedenergistics2:material:10>],
    [<appliedenergistics2:crystal_seed:600>, <appliedenergistics2:material:11>],
    [<appliedenergistics2:crystal_seed:1200>, <appliedenergistics2:material:12>]
];

var recipeId = 0;

for row in crops {
    if (row.length != 2) {
        break;
    }
    var seed = row[0] as IItemStack;
    var essence = row[1] as IItemStack;
    var tier = 0;
    if (<ore:seedsTier1> has seed) {
        tier = 1;
    } else if (<ore:seedsTier2> has seed) {
        tier = 2;
    } else if (<ore:seedsTier3> has seed) {
        tier = 3;
    } else if (<ore:seedsTier4> has seed) {
        tier = 4;
    } else if (<ore:seedsTier5> has seed) {
        tier = 5;
    } else if (<ore:seedsTier6> has seed) {
        tier = 6;
    }
    RecipeBuilder.newBuilder(regName + "_grow_" + seed.name + "_" + recipeId, regName, time[tier], 0)
    .addItemInput(seed)
    .addEnergyPerTickInput(energy[tier])
    .addFluidInput(<liquid:organic_fluid> * fluid[tier])
    .addItemOutput(seed)
    .addItemOutput(seed)
    .setChance(seedChance[tier] as float)
    .addItemOutput(essence)
    .addItemOutput(essence)
    .setChance(0.25f)
    .addItemOutput(essence)
    .setChance(0.125f)
    .addItemOutput(essence)
    .setChance(0.0625f)
    .addItemOutput(<mysticalagriculture:fertilized_essence>)
    .setChance(0.01f)
    .build();
    
    recipeId += 1;
}
