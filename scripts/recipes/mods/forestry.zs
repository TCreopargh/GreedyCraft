/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 800
#no_fix_recipe_book
// Powered by TCreopargh

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.forestry.Carpenter;
import mods.zenutils.I18n;

val base as IIngredient[] = [<mysticalagriculture:crafting:16>, <mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:21>, <mysticalagradditions:insanium:1>];

val essence as IIngredient[] = [<mysticalagriculture:crafting:5>, <ore:essenceInferium>, <ore:essencePrudentium>, <ore:essenceIntermedium>, <ore:essenceSuperium>, <ore:essenceSupremium>, <ore:essenceInsanium>];

val seedRecipes as IIngredient[][][IItemStack] = {
    <mysticalagriculture:soularium_seeds> : [
        [<ore:ingotSoularium>, essence[4], <ore:ingotSoularium>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotSoularium>, essence[4], <ore:ingotSoularium>]
    ],
    <mysticalagriculture:quicksilver_seeds> : [
        [<ore:quicksilver>, essence[3], <ore:quicksilver>], 
        [essence[3], base[3], essence[3]], 
        [<ore:quicksilver>, essence[3], <ore:quicksilver>]
    ],
    <mysticalagriculture:vibrant_alloy_seeds> : [
        [<ore:ingotVibrantAlloy>, essence[5], <ore:ingotVibrantAlloy>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotVibrantAlloy>, essence[5], <ore:ingotVibrantAlloy>]
    ],
    <mysticalagriculture:draconium_seeds> : [
        [<ore:ingotDraconium>, essence[5], <ore:ingotDraconium>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotDraconium>, essence[5], <ore:ingotDraconium>]
    ],
    <mysticalagriculture:blizz_seeds> : [
        [<mysticalagriculture:chunk:21>, essence[3], <mysticalagriculture:chunk:21>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:21>, essence[3], <mysticalagriculture:chunk:21>]
    ],
    <mysticalagriculture:dark_steel_seeds> : [
        [<ore:ingotDarkSteel>, essence[4], <ore:ingotDarkSteel>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotDarkSteel>, essence[4], <ore:ingotDarkSteel>]
    ],
    <mysticalagriculture:ironwood_seeds> : [
        [<ore:ingotIronwood>, essence[3], <ore:ingotIronwood>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotIronwood>, essence[3], <ore:ingotIronwood>]
    ],
    <mysticalagriculture:coralium_seeds> : [
        [<ore:gemCoralium>, essence[3], <ore:gemCoralium>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemCoralium>, essence[3], <ore:gemCoralium>]
    ],
    <mysticalagriculture:slate_seeds> : [
        [<rustic:slate>, essence[2], <rustic:slate>], 
        [essence[2], base[2], essence[2]], 
        [<rustic:slate>, essence[2], <rustic:slate>]
    ],
    <mysticalagriculture:saltpeter_seeds> : [
        [<ore:dustSaltpeter>, essence[3], <ore:dustSaltpeter>], 
        [essence[3], base[3], essence[3]], 
        [<ore:dustSaltpeter>, essence[3], <ore:dustSaltpeter>]
    ],
    <mysticalagriculture:elementium_seeds> : [
        [<botania:manaresource:7>, essence[4], <botania:manaresource:7>], 
        [essence[4], base[4], essence[4]], 
        [<botania:manaresource:7>, essence[4], <botania:manaresource:7>]
    ],
    <mysticalagriculture:rabbit_seeds> : [
        [<mysticalagriculture:chunk:15>, essence[3], <mysticalagriculture:chunk:15>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:15>, essence[3], <mysticalagriculture:chunk:15>]
    ],
    <mysticalagriculture:void_metal_seeds> : [
        [<ore:ingotVoid>, essence[4], <ore:ingotVoid>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotVoid>, essence[4], <ore:ingotVoid>]
    ],
    <mysticalagriculture:fire_seeds> : [
        [<minecraft:lava_bucket>, essence[2], <minecraft:lava_bucket>], 
        [essence[2], base[2], essence[2]], 
        [<minecraft:lava_bucket>, essence[2], <minecraft:lava_bucket>]
    ],
    <mysticalagriculture:nether_quartz_seeds> : [
        [<minecraft:quartz>, essence[3], <minecraft:quartz>], 
        [essence[3], base[3], essence[3]], 
        [<minecraft:quartz>, essence[3], <minecraft:quartz>]
    ],
    <mysticalagriculture:redstone_seeds> : [
        [<minecraft:redstone>, essence[3], <minecraft:redstone>], 
        [essence[3], base[3], essence[3]], 
        [<minecraft:redstone>, essence[3], <minecraft:redstone>]
    ],
    <mysticalagriculture:aluminum_seeds> : [
        [<ore:ingotAluminum>, essence[2], <ore:ingotAluminum>], 
        [essence[2], base[2], essence[2]], 
        [<ore:ingotAluminum>, essence[2], <ore:ingotAluminum>]
    ],
    <mysticalagriculture:tin_seeds> : [
        [<ore:ingotTin>, essence[3], <ore:ingotTin>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotTin>, essence[3], <ore:ingotTin>]
    ],
    <mysticalagriculture:lapis_lazuli_seeds> : [
        [<minecraft:dye:4>, essence[4], <minecraft:dye:4>], 
        [essence[4], base[4], essence[4]], 
        [<minecraft:dye:4>, essence[4], <minecraft:dye:4>]
    ],
    <mysticalagriculture:basalz_seeds> : [
        [<mysticalagriculture:chunk:23>, essence[3], <mysticalagriculture:chunk:23>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:23>, essence[3], <mysticalagriculture:chunk:23>]
    ],
    <mysticalagriculture:amber_seeds> : [
        [<ore:gemAmber>, essence[4], <ore:gemAmber>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemAmber>, essence[4], <ore:gemAmber>]
    ],
    <mysticalagriculture:refined_obsidian_seeds> : [
        [<ore:ingotRefinedObsidian>, essence[5], <ore:ingotRefinedObsidian>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotRefinedObsidian>, essence[5], <ore:ingotRefinedObsidian>]
    ],
    <mysticalagriculture:abyssalnite_seeds> : [
        [<ore:ingotAbyssalnite>, essence[4], <ore:ingotAbyssalnite>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotAbyssalnite>, essence[4], <ore:ingotAbyssalnite>]
    ],
    <mysticalagriculture:chicken_seeds> : [
        [<mysticalagriculture:chunk:8>, essence[2], <mysticalagriculture:chunk:8>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:chunk:8>, essence[2], <mysticalagriculture:chunk:8>]
    ],
    <mysticalagriculture:steel_seeds> : [
        [<ore:ingotSteel>, essence[5], <ore:ingotSteel>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotSteel>, essence[5], <ore:ingotSteel>]
    ],
    <mysticalagriculture:slime_seeds> : [
        [<mysticalagriculture:chunk:11>, essence[2], <mysticalagriculture:chunk:11>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:chunk:11>, essence[2], <mysticalagriculture:chunk:11>]
    ],
    <mysticalagriculture:blitz_seeds> : [
        [<mysticalagriculture:chunk:22>, essence[3], <mysticalagriculture:chunk:22>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:22>, essence[3], <mysticalagriculture:chunk:22>]
    ],
    <mysticalagriculture:platinum_seeds> : [
        [<ore:ingotPlatinum>, essence[5], <ore:ingotPlatinum>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotPlatinum>, essence[5], <ore:ingotPlatinum>]
    ],
    <mysticalagriculture:fluix_seeds> : [
        [<ore:crystalFluix>, essence[4], <ore:crystalFluix>], 
        [essence[4], base[4], essence[4]], 
        [<ore:crystalFluix>, essence[4], <ore:crystalFluix>]
    ],
    <mysticalagriculture:bronze_seeds> : [
        [<ore:ingotBronze>, essence[3], <ore:ingotBronze>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotBronze>, essence[3], <ore:ingotBronze>]
    ],
    <mysticalagriculture:copper_seeds> : [
        [<ore:ingotCopper>, essence[2], <ore:ingotCopper>], 
        [essence[2], base[2], essence[2]], 
        [<ore:ingotCopper>, essence[2], <ore:ingotCopper>]
    ],
    <mysticalagriculture:end_steel_seeds> : [
        [<ore:ingotEndSteel>, essence[5], <ore:ingotEndSteel>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotEndSteel>, essence[5], <ore:ingotEndSteel>]
    ],
    <mysticalagriculture:creeper_seeds> : [
        [<mysticalagriculture:chunk:13>, essence[3], <mysticalagriculture:chunk:13>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:13>, essence[3], <mysticalagriculture:chunk:13>]
    ],
    <mysticalagriculture:enderman_seeds> : [
        [<mysticalagriculture:chunk:19>, essence[4], <mysticalagriculture:chunk:19>], 
        [essence[4], base[4], essence[4]], 
        [<mysticalagriculture:chunk:19>, essence[4], <mysticalagriculture:chunk:19>]
    ],
    <mysticalagriculture:lead_seeds> : [
        [<ore:ingotLead>, essence[3], <ore:ingotLead>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotLead>, essence[3], <ore:ingotLead>]
    ],
    <mysticalagriculture:dye_seeds> : [
        [<mysticalagriculture:crafting:7>, essence[2], <mysticalagriculture:crafting:7>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:crafting:7>, essence[2], <mysticalagriculture:crafting:7>]
    ],
    <mysticalagriculture:ender_amethyst_seeds> : [
        [<biomesoplenty:gem>, essence[5], <biomesoplenty:gem>], 
        [essence[5], base[5], essence[5]], 
        [<biomesoplenty:gem>, essence[5], <biomesoplenty:gem>]
    ],
    <mysticalagriculture:starmetal_seeds> : [
        [<astralsorcery:itemcraftingcomponent:1>, essence[5], <astralsorcery:itemcraftingcomponent:1>], 
        [essence[5], base[5], essence[5]], 
        [<astralsorcery:itemcraftingcomponent:1>, essence[5], <astralsorcery:itemcraftingcomponent:1>]
    ],
    <mysticalagriculture:knightmetal_seeds> : [
        [<ore:ingotKnightmetal>, essence[4], <ore:ingotKnightmetal>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotKnightmetal>, essence[4], <ore:ingotKnightmetal>]
    ],
    <mysticalagriculture:nickel_seeds> : [
        [<ore:ingotNickel>, essence[4], <ore:ingotNickel>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotNickel>, essence[4], <ore:ingotNickel>]
    ],
    <mysticalagriculture:ender_biotite_seeds> : [
        [<ore:gemEnderBiotite>, essence[3], <ore:gemEnderBiotite>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemEnderBiotite>, essence[3], <ore:gemEnderBiotite>]
    ],
    <mysticalagriculture:steeleaf_seeds> : [
        [<ore:ingotSteeleaf>, essence[3], <ore:ingotSteeleaf>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotSteeleaf>, essence[3], <ore:ingotSteeleaf>]
    ],
    <mysticalagriculture:marble_seeds> : [
        [<chisel:marble2:7>, essence[2], <chisel:marble2:7>], 
        [essence[2], base[2], essence[2]], 
        [<chisel:marble2:7>, essence[2], <chisel:marble2:7>]
    ],
    <mysticalagriculture:conductive_iron_seeds> : [
        [<ore:ingotConductiveIron>, essence[3], <ore:ingotConductiveIron>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotConductiveIron>, essence[3], <ore:ingotConductiveIron>]
    ],
    <mysticalagriculture:black_quartz_seeds> : [
        [<ore:gemQuartzBlack>, essence[3], <ore:gemQuartzBlack>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemQuartzBlack>, essence[3], <ore:gemQuartzBlack>]
    ],
    <mysticalagriculture:tanzanite_seeds> : [
        [<ore:gemTanzanite>, essence[4], <ore:gemTanzanite>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemTanzanite>, essence[4], <ore:gemTanzanite>]
    ],
    <mysticalagriculture:mithril_seeds> : [
        [<ore:ingotMithril>, essence[4], <ore:ingotMithril>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotMithril>, essence[4], <ore:ingotMithril>]
    ],
    <mysticalagriculture:alumite_seeds> : [
        [<ore:ingotAlumite>, essence[4], <ore:ingotAlumite>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotAlumite>, essence[4], <ore:ingotAlumite>]
    ],
    <mysticalagriculture:iron_seeds> : [
        [<ore:ingotIron>, essence[3], <ore:ingotIron>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotIron>, essence[3], <ore:ingotIron>]
    ],
    <mysticalagriculture:manasteel_seeds> : [
        [<botania:manaresource>, essence[3], <botania:manaresource>], 
        [essence[3], base[3], essence[3]], 
        [<botania:manaresource>, essence[3], <botania:manaresource>]
    ],
    <mysticalagriculture:basalt_seeds> : [
        [<chisel:basalt2:7>, essence[2], <chisel:basalt2:7>], 
        [essence[2], base[2], essence[2]], 
        [<chisel:basalt2:7>, essence[2], <chisel:basalt2:7>]
    ],
    <mysticalagriculture:aquamarine_seeds> : [
        [<astralsorcery:itemcraftingcomponent>, essence[3], <astralsorcery:itemcraftingcomponent>], 
        [essence[3], base[3], essence[3]], 
        [<astralsorcery:itemcraftingcomponent>, essence[3], <astralsorcery:itemcraftingcomponent>]
    ],
    <mysticalagriculture:malachite_seeds> : [
        [<ore:gemMalachite>, essence[4], <ore:gemMalachite>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemMalachite>, essence[4], <ore:gemMalachite>]
    ],
    <mysticalagriculture:thaumium_seeds> : [
        [<ore:ingotThaumium>, essence[3], <ore:ingotThaumium>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotThaumium>, essence[3], <ore:ingotThaumium>]
    ],
    <mysticalagriculture:aluminum_brass_seeds> : [
        [<tconstruct:ingots:5>, essence[2], <tconstruct:ingots:5>], 
        [essence[2], base[2], essence[2]], 
        [<tconstruct:ingots:5>, essence[2], <tconstruct:ingots:5>]
    ],
    <mysticalagriculture:invar_seeds> : [
        [<ore:ingotInvar>, essence[4], <ore:ingotInvar>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotInvar>, essence[4], <ore:ingotInvar>]
    ],
    <mysticalagriculture:gold_seeds> : [
        [<ore:ingotGold>, essence[4], <ore:ingotGold>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotGold>, essence[4], <ore:ingotGold>]
    ],
    <mysticalagriculture:experience_seeds> : [
        [<mysticalagriculture:chunk:5>, essence[4], <mysticalagriculture:chunk:5>], 
        [essence[4], base[4], essence[4]], 
        [<mysticalagriculture:chunk:5>, essence[4], <mysticalagriculture:chunk:5>]
    ],
    <mysticalagriculture:obsidian_seeds> : [
        [<minecraft:obsidian>, essence[3], <minecraft:obsidian>], 
        [essence[3], base[3], essence[3]], 
        [<minecraft:obsidian>, essence[3], <minecraft:obsidian>]
    ],
    <mysticalagriculture:skeleton_seeds> : [
        [<mysticalagriculture:chunk:12>, essence[3], <mysticalagriculture:chunk:12>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:12>, essence[3], <mysticalagriculture:chunk:12>]
    ],
    <mysticalagriculture:dreadium_seeds> : [
        [<ore:ingotDreadium>, essence[5], <ore:ingotDreadium>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotDreadium>, essence[5], <ore:ingotDreadium>]
    ],
    <mysticalagriculture:cow_seeds> : [
        [<mysticalagriculture:chunk:9>, essence[2], <mysticalagriculture:chunk:9>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:chunk:9>, essence[2], <mysticalagriculture:chunk:9>]
    ],
    <mysticalagriculture:emerald_seeds> : [
        [<minecraft:emerald>, essence[5], <minecraft:emerald>], 
        [essence[5], base[5], essence[5]], 
        [<minecraft:emerald>, essence[5], <minecraft:emerald>]
    ],
    <mysticalagriculture:certus_quartz_seeds> : [
        [<ore:crystalCertusQuartz>, essence[3], <ore:crystalCertusQuartz>], 
        [essence[3], base[3], essence[3]], 
        [<ore:crystalCertusQuartz>, essence[3], <ore:crystalCertusQuartz>]
    ],
    <mysticalagriculture:apatite_seeds> : [
        [<ore:gemApatite>, essence[2], <ore:gemApatite>], 
        [essence[2], base[2], essence[2]], 
        [<ore:gemApatite>, essence[2], <ore:gemApatite>]
    ],
    <mysticalagriculture:wither_skeleton_seeds> : [
        [<mysticalagriculture:chunk:20>, essence[5], <mysticalagriculture:chunk:20>], 
        [essence[5], base[5], essence[5]], 
        [<mysticalagriculture:chunk:20>, essence[5], <mysticalagriculture:chunk:20>]
    ],
    <mysticalagriculture:coal_seeds> : [
        [<minecraft:coal>, essence[2], <minecraft:coal>], 
        [essence[2], base[2], essence[2]], 
        [<minecraft:coal>, essence[2], <minecraft:coal>]
    ],
    <mysticalagriculture:peridot_seeds> : [
        [<ore:gemPeridot>, essence[4], <ore:gemPeridot>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemPeridot>, essence[4], <ore:gemPeridot>]
    ],
    <mysticalagriculture:redstone_alloy_seeds> : [
        [<ore:ingotRedstoneAlloy>, essence[3], <ore:ingotRedstoneAlloy>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotRedstoneAlloy>, essence[3], <ore:ingotRedstoneAlloy>]
    ],
    <mysticalagriculture:silicon_seeds> : [
        [<ore:itemSilicon>, essence[2], <ore:itemSilicon>], 
        [essence[2], base[2], essence[2]], 
        [<ore:itemSilicon>, essence[2], <ore:itemSilicon>]
    ],
    <mysticalagriculture:energetic_alloy_seeds> : [
        [<ore:ingotEnergeticAlloy>, essence[4], <ore:ingotEnergeticAlloy>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotEnergeticAlloy>, essence[4], <ore:ingotEnergeticAlloy>]
    ],
    <mysticalagriculture:constantan_seeds> : [
        [<ore:ingotConstantan>, essence[4], <ore:ingotConstantan>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotConstantan>, essence[4], <ore:ingotConstantan>]
    ],
    <mysticalagriculture:sapphire_seeds> : [
        [<ore:gemSapphire>, essence[4], <ore:gemSapphire>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemSapphire>, essence[4], <ore:gemSapphire>]
    ],
    <mysticalagriculture:graphite_seeds> : [
        [<ore:ingotGraphite>, essence[3], <ore:ingotGraphite>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotGraphite>, essence[3], <ore:ingotGraphite>]
    ],
    <mysticalagriculture:ruby_seeds> : [
        [<ore:gemRuby>, essence[4], <ore:gemRuby>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemRuby>, essence[4], <ore:gemRuby>]
    ],
    <mysticalagriculture:fiery_ingot_seeds> : [
        [<ore:ingotFiery>, essence[4], <ore:ingotFiery>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotFiery>, essence[4], <ore:ingotFiery>]
    ],
    <mysticalagriculture:iridium_seeds> : [
        [<ore:ingotIridium>, essence[5], <ore:ingotIridium>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotIridium>, essence[5], <ore:ingotIridium>]
    ],
    <mysticalagriculture:electrum_seeds> : [
        [<ore:ingotElectrum>, essence[4], <ore:ingotElectrum>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotElectrum>, essence[4], <ore:ingotElectrum>]
    ],
    <mysticalagriculture:topaz_seeds> : [
        [<ore:gemTopaz>, essence[4], <ore:gemTopaz>], 
        [essence[4], base[4], essence[4]], 
        [<ore:gemTopaz>, essence[4], <ore:gemTopaz>]
    ],
    <mysticalagriculture:limestone_seeds> : [
        [<chisel:limestone2:7>, essence[2], <chisel:limestone2:7>], 
        [essence[2], base[2], essence[2]], 
        [<chisel:limestone2:7>, essence[2], <chisel:limestone2:7>]
    ],
    <mysticalagriculture:glowstone_seeds> : [
        [<minecraft:glowstone>, essence[3], <minecraft:glowstone>], 
        [essence[3], base[3], essence[3]], 
        [<minecraft:glowstone>, essence[3], <minecraft:glowstone>]
    ],
    <mysticalagriculture:ghast_seeds> : [
        [<mysticalagriculture:chunk:18>, essence[4], <mysticalagriculture:chunk:18>], 
        [essence[4], base[4], essence[4]], 
        [<mysticalagriculture:chunk:18>, essence[4], <mysticalagriculture:chunk:18>]
    ],
    <mysticalagriculture:fluxed_electrum_seeds> : [
        [<ore:ingotElectrumFlux>, essence[4], <ore:ingotElectrumFlux>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotElectrumFlux>, essence[4], <ore:ingotElectrumFlux>]
    ],
    <mysticalagriculture:sheep_seeds> : [
        [<mysticalagriculture:chunk:10>, essence[2], <mysticalagriculture:chunk:10>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:chunk:10>, essence[2], <mysticalagriculture:chunk:10>]
    ],
    <mysticalagriculture:diamond_seeds> : [
        [<minecraft:diamond>, essence[5], <minecraft:diamond>], 
        [essence[5], base[5], essence[5]], 
        [<minecraft:diamond>, essence[5], <minecraft:diamond>]
    ],
    <mysticalagriculture:cobalt_seeds> : [
        [<tconstruct:ingots>, essence[4], <tconstruct:ingots>], 
        [essence[4], base[4], essence[4]], 
        [<tconstruct:ingots>, essence[4], <tconstruct:ingots>]
    ],
    <mysticalagriculture:knightslime_seeds> : [
        [<tconstruct:ingots:3>, essence[3], <tconstruct:ingots:3>], 
        [essence[3], base[3], essence[3]], 
        [<tconstruct:ingots:3>, essence[3], <tconstruct:ingots:3>]
    ],
    <mysticalagriculture:marble_seeds> : [
        [<astralsorcery:blockmarble>, essence[2], <astralsorcery:blockmarble>], 
        [essence[2], base[2], essence[2]], 
        [<astralsorcery:blockmarble>, essence[2], <astralsorcery:blockmarble>]
    ],
    <mysticalagriculture:grains_of_infinity_seeds> : [
        [<ore:dustBedrock>, essence[2], <ore:dustBedrock>], 
        [essence[2], base[2], essence[2]], 
        [<ore:dustBedrock>, essence[2], <ore:dustBedrock>]
    ],
    <mysticalagriculture:pig_seeds> : [
        [<mysticalagriculture:chunk:7>, essence[2], <mysticalagriculture:chunk:7>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:chunk:7>, essence[2], <mysticalagriculture:chunk:7>]
    ],
    <mysticalagriculture:guardian_seeds> : [
        [<mysticalagriculture:chunk:16>, essence[3], <mysticalagriculture:chunk:16>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:16>, essence[3], <mysticalagriculture:chunk:16>]
    ],
    <mysticalagriculture:terrasteel_seeds> : [
        [<botania:manaresource:4>, essence[5], <botania:manaresource:4>], 
        [essence[5], base[5], essence[5]], 
        [<botania:manaresource:4>, essence[5], <botania:manaresource:4>]
    ],
    <mysticalagriculture:signalum_seeds> : [
        [<ore:ingotSignalum>, essence[4], <ore:ingotSignalum>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotSignalum>, essence[4], <ore:ingotSignalum>]
    ],
    <mysticalagriculture:glowstone_ingot_seeds> : [
        [<ore:ingotRefinedGlowstone>, essence[4], <ore:ingotRefinedGlowstone>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotRefinedGlowstone>, essence[4], <ore:ingotRefinedGlowstone>]
    ],
    <mysticalagriculture:ardite_seeds> : [
        [<tconstruct:ingots:1>, essence[3], <tconstruct:ingots:1>], 
        [essence[3], base[3], essence[3]], 
        [<tconstruct:ingots:1>, essence[3], <tconstruct:ingots:1>]
    ],
    <mysticalagriculture:blaze_seeds> : [
        [<mysticalagriculture:chunk:17>, essence[4], <mysticalagriculture:chunk:17>], 
        [essence[4], base[4], essence[4]], 
        [<mysticalagriculture:chunk:17>, essence[4], <mysticalagriculture:chunk:17>]
    ],
    <mysticalagriculture:spider_seeds> : [
        [<mysticalagriculture:chunk:14>, essence[3], <mysticalagriculture:chunk:14>], 
        [essence[3], base[3], essence[3]], 
        [<mysticalagriculture:chunk:14>, essence[3], <mysticalagriculture:chunk:14>]
    ],
    <mysticalagriculture:manyullyn_seeds> : [
        [<tconstruct:ingots:2>, essence[5], <tconstruct:ingots:2>], 
        [essence[5], base[5], essence[5]], 
        [<tconstruct:ingots:2>, essence[5], <tconstruct:ingots:2>]
    ],
    <mysticalagriculture:osmium_seeds> : [
        [<ore:ingotOsmium>, essence[4], <ore:ingotOsmium>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotOsmium>, essence[4], <ore:ingotOsmium>]
    ],
    <mysticalagriculture:pulsating_iron_seeds> : [
        [<ore:ingotPulsatingIron>, essence[4], <ore:ingotPulsatingIron>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotPulsatingIron>, essence[4], <ore:ingotPulsatingIron>]
    ],
    <mysticalagriculture:mystical_flower_seeds> : [
        [<mysticalagriculture:crafting:10>, essence[2], <mysticalagriculture:crafting:10>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:crafting:10>, essence[2], <mysticalagriculture:crafting:10>]
    ],
    <mysticalagriculture:sulfur_seeds> : [
        [<ore:dustSulfur>, essence[2], <ore:dustSulfur>], 
        [essence[2], base[2], essence[2]], 
        [<ore:dustSulfur>, essence[2], <ore:dustSulfur>]
    ],
    <mysticalagriculture:lumium_seeds> : [
        [<ore:ingotLumium>, essence[4], <ore:ingotLumium>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotLumium>, essence[4], <ore:ingotLumium>]
    ],
    <mysticalagriculture:rock_crystal_seeds> : [
        [<astralsorcery:blockcustomore:0>, essence[5], <astralsorcery:blockcustomore:0>], 
        [essence[5], base[5], essence[5]], 
        [<astralsorcery:blockcustomore:0>, essence[5], <astralsorcery:blockcustomore:0>]
    ],
    <mysticalagriculture:end_seeds> : [
        [<mysticalagriculture:crafting:9>, essence[4], <mysticalagriculture:crafting:9>], 
        [essence[4], base[4], essence[4]], 
        [<mysticalagriculture:crafting:9>, essence[4], <mysticalagriculture:crafting:9>]
    ],
    <mysticalagriculture:electrical_steel_seeds> : [
        [<ore:ingotElectricalSteel>, essence[3], <ore:ingotElectricalSteel>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotElectricalSteel>, essence[3], <ore:ingotElectricalSteel>]
    ],
    <mysticalagriculture:silver_seeds> : [
        [<ore:ingotSilver>, essence[3], <ore:ingotSilver>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotSilver>, essence[3], <ore:ingotSilver>]
    ],
    <mysticalagriculture:sky_stone_seeds> : [
        [<appliedenergistics2:sky_stone_block>, essence[3], <appliedenergistics2:sky_stone_block>], 
        [essence[3], base[3], essence[3]], 
        [<appliedenergistics2:sky_stone_block>, essence[3], <appliedenergistics2:sky_stone_block>]
    ],
    <mysticalagriculture:brass_seeds> : [
        [<ore:ingotBrass>, essence[3], <ore:ingotBrass>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotBrass>, essence[3], <ore:ingotBrass>]
    ],
    <mysticalagriculture:yellorium_seeds> : [
        [<ore:ingotYellorium>, essence[5], <ore:ingotYellorium>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotYellorium>, essence[5], <ore:ingotYellorium>]
    ],
    <mysticalagriculture:enderium_seeds> : [
        [<ore:ingotEnderium>, essence[5], <ore:ingotEnderium>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotEnderium>, essence[5], <ore:ingotEnderium>]
    ],
    <mysticalagriculture:nether_seeds> : [
        [<mysticalagriculture:crafting:8>, essence[2], <mysticalagriculture:crafting:8>], 
        [essence[2], base[2], essence[2]], 
        [<mysticalagriculture:crafting:8>, essence[2], <mysticalagriculture:crafting:8>]
    ],
    <mysticalagriculture:dirt_seeds> : [
        [<ore:dirt>, essence[1], <ore:dirt>], 
        [essence[1], base[1], essence[1]], 
        [<ore:dirt>, essence[1], <ore:dirt>]
    ],
    <mysticalagriculture:stone_seeds> : [
        [<ore:stone>, essence[1], <ore:stone>], 
        [essence[1], base[1], essence[1]], 
        [<ore:stone>, essence[1], <ore:stone>]
    ],
    <mysticalagriculture:nature_seeds> : [
        [<mysticalagriculture:crafting:6>, essence[1], <mysticalagriculture:crafting:6>], 
        [essence[1], base[1], essence[1]], 
        [<mysticalagriculture:crafting:6>, essence[1], <mysticalagriculture:crafting:6>]
    ],
    <mysticalagriculture:wood_seeds> : [
        [<ore:logWood>, essence[1], <ore:logWood>], 
        [essence[1], base[1], essence[1]], 
        [<ore:logWood>, essence[1], <ore:logWood>]
    ],
    <mysticalagriculture:water_seeds> : [
        [<minecraft:water_bucket>, essence[1], <minecraft:water_bucket>], 
        [essence[1], base[1], essence[1]], 
        [<minecraft:water_bucket>, essence[1], <minecraft:water_bucket>]
    ],
    <mysticalagriculture:zombie_seeds> : [
        [<mysticalagriculture:chunk:6>, essence[1], <mysticalagriculture:chunk:6>], 
        [essence[1], base[1], essence[1]], 
        [<mysticalagriculture:chunk:6>, essence[1], <mysticalagriculture:chunk:6>]
    ],
    <mysticalagriculture:ice_seeds> : [
        [<ore:ice>, essence[1], <ore:ice>], 
        [essence[1], base[1], essence[1]], 
        [<ore:ice>, essence[1], <ore:ice>]
    ],
    <jaopca:item_mysticalseedsscarlite> : [
        [<ore:gemScarlite>, essence[5], <ore:gemScarlite>], 
        [essence[5], base[5], essence[5]], 
        [<ore:gemScarlite>, essence[5], <ore:gemScarlite>]
    ],
    <jaopca:item_mysticalseedscryonium> : [
        [<ore:ingotCryonium>, essence[6], <ore:ingotCryonium>], 
        [essence[6], base[6], essence[6]], 
        [<ore:ingotCryonium>, essence[6], <ore:ingotCryonium>]
    ],
    <jaopca:item_mysticalseedsambrosium> : [
        [<ore:gemAmbrosium>, essence[3], <ore:gemAmbrosium>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemAmbrosium>, essence[3], <ore:gemAmbrosium>]
    ],
    <jaopca:item_mysticalseedshephaestite> : [
        [<ore:gemHephaestite>, essence[3], <ore:gemHephaestite>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemHephaestite>, essence[3], <ore:gemHephaestite>]
    ],
    <jaopca:item_mysticalseedsexperience> : [
        [<ore:ingotExperience>, essence[3], <ore:ingotExperience>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotExperience>, essence[3], <ore:ingotExperience>]
    ],
    <jaopca:item_mysticalseedsaqualite> : [
        [<ore:ingotAqualite>, essence[5], <ore:ingotAqualite>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotAqualite>, essence[5], <ore:ingotAqualite>]
    ],
    <jaopca:item_mysticalseedsmanganese> : [
        [<ore:ingotManganese>, essence[4], <ore:ingotManganese>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotManganese>, essence[4], <ore:ingotManganese>]
    ],
    <jaopca:item_mysticalseedsdimensionalshard> : [
        [<ore:gemDimensionalShard>, essence[3], <ore:gemDimensionalShard>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemDimensionalShard>, essence[3], <ore:gemDimensionalShard>]
    ],
    <jaopca:item_mysticalseedsinfernium> : [
        [<ore:ingotInfernium>, essence[6], <ore:ingotInfernium>], 
        [essence[6], base[6], essence[6]], 
        [<ore:ingotInfernium>, essence[6], <ore:ingotInfernium>]
    ],
    <jaopca:item_mysticalseedsliquifiedcoralium> : [
        [<ore:ingotLiquifiedCoralium>, essence[3], <ore:ingotLiquifiedCoralium>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotLiquifiedCoralium>, essence[3], <ore:ingotLiquifiedCoralium>]
    ],
    <jaopca:item_mysticalseedsshadowium> : [
        [<ore:ingotShadowium>, essence[5], <ore:ingotShadowium>], 
        [essence[5], base[5], essence[5]], 
        [<ore:ingotShadowium>, essence[5], <ore:ingotShadowium>]
    ],
    <jaopca:item_mysticalseedscytosinite> : [
        [<ore:ingotCytosinite>, essence[6], <ore:ingotCytosinite>], 
        [essence[6], base[6], essence[6]], 
        [<ore:ingotCytosinite>, essence[6], <ore:ingotCytosinite>]
    ],
    <jaopca:item_mysticalseedsasgardium> : [
        [<ore:ingotAsgardium>, essence[4], <ore:ingotAsgardium>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotAsgardium>, essence[4], <ore:ingotAsgardium>]
    ],
    <jaopca:item_mysticalseedsaeroite> : [
        [<ore:ingotAeroite>, essence[4], <ore:ingotAeroite>], 
        [essence[4], base[4], essence[4]], 
        [<ore:ingotAeroite>, essence[4], <ore:ingotAeroite>]
    ],
    <jaopca:item_mysticalseedsumbrium> : [
        [<ore:ingotUmbrium>, essence[3], <ore:ingotUmbrium>], 
        [essence[3], base[3], essence[3]], 
        [<ore:ingotUmbrium>, essence[3], <ore:ingotUmbrium>]
    ],
    <jaopca:item_mysticalseedsniter> : [
        [<ore:dustNiter>, essence[3], <ore:dustNiter>], 
        [essence[3], base[3], essence[3]], 
        [<ore:dustNiter>, essence[3], <ore:dustNiter>]
    ],
    <jaopca:item_mysticalseedsancientdebris> : [
        [<ore:gemAncientDebris>, essence[6], <ore:gemAncientDebris>], 
        [essence[6], base[6], essence[6]], 
        [<ore:gemAncientDebris>, essence[6], <ore:gemAncientDebris>]
    ],
    <jaopca:item_mysticalseedsquartzblack> : [
        [<ore:gemQuartzBlack>, essence[3], <ore:gemQuartzBlack>], 
        [essence[3], base[3], essence[3]], 
        [<ore:gemQuartzBlack>, essence[3], <ore:gemQuartzBlack>]
    ],
    <mysticalagradditions:awakened_draconium_seeds> : [
        [<ore:ingotDraconiumAwakened>, essence[6], <ore:ingotDraconiumAwakened>], 
        [essence[6], base[6], essence[6]], 
        [<ore:ingotDraconiumAwakened>, essence[6], <ore:ingotDraconiumAwakened>]
    ],
    <mysticalagradditions:dragon_egg_seeds> : [
        [<mysticalagradditions:stuff:3>, essence[6], <mysticalagradditions:stuff:3>], 
        [essence[6], base[6], essence[6]], 
        [<mysticalagradditions:stuff:3>, essence[6], <mysticalagradditions:stuff:3>]
    ],
    <mysticalagradditions:tier6_inferium_seeds> : [
        [essence[6], essence[6], essence[6]], 
        [essence[6], <mysticalagriculture:tier5_inferium_seeds>, essence[6]], 
        [essence[6], essence[6], essence[6]]
    ],
    <mysticalagradditions:nether_star_seeds> : [
        [<minecraft:nether_star>, essence[6], <minecraft:nether_star>], 
        [essence[6], base[6], essence[6]], 
        [<minecraft:nether_star>, essence[6], <minecraft:nether_star>]
    ],
    <mysticalagradditions:neutronium_seeds> : [
        [<ore:ingotCosmicNeutronium>, essence[6], <ore:ingotCosmicNeutronium>], 
        [essence[6], base[6], essence[6]], 
        [<ore:ingotCosmicNeutronium>, essence[6], <ore:ingotCosmicNeutronium>]
    ],
    <mysticalagriculture:tier4_inferium_seeds> : [
        [essence[4], essence[4], essence[4]], 
        [essence[4], <mysticalagriculture:tier3_inferium_seeds>, essence[4]], 
        [essence[4], essence[4], essence[4]]
    ],
    <mysticalagriculture:tier2_inferium_seeds> : [
        [essence[2], essence[2], essence[2]], 
        [essence[2], <mysticalagriculture:tier1_inferium_seeds>, essence[2]], 
        [essence[2], essence[2], essence[2]]
    ],
    <mysticalagriculture:tier1_inferium_seeds> : [
        [essence[1], essence[1], essence[1]], 
        [essence[1], <minecraft:wheat_seeds>, essence[1]], 
        [essence[1], essence[1], essence[1]]
    ],
    <mysticalagriculture:tier5_inferium_seeds> : [
        [essence[5], essence[5], essence[5]], 
        [essence[5], <mysticalagriculture:tier4_inferium_seeds>, essence[5]], 
        [essence[5], essence[5], essence[5]]
    ],
    <mysticalagriculture:tier3_inferium_seeds> : [
        [essence[3], essence[3], essence[3]], 
        [essence[3], <mysticalagriculture:tier2_inferium_seeds>, essence[3]], 
        [essence[3], essence[3], essence[3]]
    ]
} as IIngredient[][][IItemStack];

for seed in seedRecipes {
    recipes.remove(seed);
    var baseItemName as string = game.localize("greedycraft.mysticalagriculture.base_item");
    var grid as IIngredient[][] = seedRecipes[seed] as IIngredient[][];
    if (grid.length > 0 && grid[0].length > 0) {
        baseItemName = grid[0][0].items[0].displayName;
    }
    seed.addTooltip(I18n.format("greedycraft.mysticalagriculture.seed_tooltip", baseItemName));
    mods.jei.JEI.addDescription(seed, I18n.format("greedycraft.mysticalagriculture.jei_info", baseItemName));
    var time = [60, 75, 80, 100, 140, 210, 1200] as int[];
    var fluid = [600, 750, 900, 1200, 1600, 2400, 10000] as int[];
    var fertilizer = [<thermalfoundation:fertilizer>, <thermalfoundation:fertilizer>, <thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:2>, <thermalfoundation:fertilizer:2>, <mysticalagriculture:mystical_fertilizer>] as IItemStack[];
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
    Carpenter.addRecipe(seed, grid, time[tier], <liquid:organic_fluid> * fluid[tier], fertilizer[tier]);
}

Carpenter.addRecipe(<morebees:diamondfragment>, [
    [null, <morebees:graincrystal>, null],
    [<morebees:graincrystal>, <morebees:graincrystal>, <morebees:graincrystal>],
    [null, <morebees:graincrystal>, null]
], 100, <liquid:water> * 1000, null);
