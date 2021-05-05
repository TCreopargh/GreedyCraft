/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 32767
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

global furnaceXp as double = 2.0;

global furnaceRecipes as IItemStack[IIngredient] = {
    <ore:ingotBrick> : <tconstruct:materials>,
    <minecraft:brick_block> : <tconstruct:seared:3>,
    <additions:greedycraft-raw_human_meat> : <additions:greedycraft-cooked_human_meat>,
    <ore:stoneMarble> : <astralsorcery:blockblackmarble>,
    <ore:gemQuartz> : <actuallyadditions:item_misc:5>,
    <ore:oreExperience> : <additions:greedycraft-experience_ingot>,
    <ore:oreCryonium> : <additions:cryonium_ingot>,
    <ore:oreInfernium> : <additions:infernium_ingot>,
    <ore:oreTitanium> : <additions:titanium_ingot>,
    <ore:oreShadowium> : <additions:shadowium_ingot>,
    <ore:oreAsgardium> : <additions:asgardium_ingot>,
    <ore:oreAeroite> : <additions:aeroite_ingot>,
    <aether_legacy:aercloud:*> : <aether_legacy:aerogel>,
    <ore:oreAncientDebris> : <additions:netherite_scrap> * 2,
    <ore:ingotBrickSeared> : <tcomplement:materials:1>,
    <ore:blockSeared> : <tcomplement:scorched_block>,
    <ore:oreChromium> : <additions:chromium_ingot>,
    <ore:oreAqualite> : <additions:aqualite_ingot>,
    <taiga:tiberium_ore> : <taiga:tiberium_ingot>,
    <taiga:aurorium_ore> : <taiga:aurorium_ingot>,
    <taiga:prometheum_ore> : <taiga:prometheum_ingot>,
    <taiga:duranite_ore> : <taiga:duranite_ingot>,
    <taiga:valyrium_ore> : <taiga:valyrium_ingot>,
    <taiga:vibranium_ore> : <taiga:vibranium_ingot>,
    <taiga:karmesine_ore> : <taiga:karmesine_ingot>,
    <taiga:ovium_ore> : <taiga:ovium_ingot>,
    <taiga:jauxum_ore> : <taiga:jauxum_ingot>,
    <taiga:uru_ore> : <taiga:uru_ingot>,
    <taiga:palladium_ore> : <taiga:palladium_ingot>,
    <taiga:osram_ore> : <taiga:osram_ingot>,
    <taiga:eezo_ore> : <taiga:eezo_ingot>,
    <taiga:abyssum_ore> : <taiga:abyssum_ingot>,
    <taiga:basalt_block> : <taiga:basalt_ingot> * 9,
    <taiga:seismum_dust> : <taiga:seismum_ingot>,
    <taiga:astrium_dust> : <taiga:astrium_ingot>,
    <taiga:iox_dust> : <taiga:iox_ingot>,
    <taiga:meteorite_dust> : <taiga:meteorite_ingot>,
    <taiga:basalt_dust> : <taiga:basalt_ingot>,
    <taiga:dilithium_dust> : <taiga:dilithium_ingot>,
    <taiga:imperomite_dust> : <taiga:imperomite_ingot>,
    <taiga:tiberium_dust> : <taiga:tiberium_ingot>,
    <taiga:aurorium_dust> : <taiga:aurorium_ingot>,
    <taiga:prometheum_dust> : <taiga:prometheum_ingot>,
    <taiga:duranite_dust> : <taiga:duranite_ingot>,
    <taiga:valyrium_dust> : <taiga:valyrium_ingot>,
    <taiga:vibranium_dust> : <taiga:vibranium_ingot>,
    <taiga:karmesine_dust> : <taiga:karmesine_ingot>,
    <taiga:ovium_dust> : <taiga:ovium_ingot>,
    <taiga:jauxum_dust> : <taiga:jauxum_ingot>,
    <taiga:terrax_dust> : <taiga:terrax_ingot>,
    <taiga:palladium_dust> : <taiga:palladium_ingot>,
    <taiga:uru_dust> : <taiga:uru_ingot>,
    <taiga:osram_dust> : <taiga:osram_ingot>,
    <taiga:abyssum_dust> : <taiga:abyssum_ingot>,
    <taiga:eezo_dust> : <taiga:eezo_ingot>,
    <taiga:triberium_dust> : <taiga:triberium_ingot>,
    <taiga:fractum_dust> : <taiga:fractum_ingot>,
    <taiga:violium_dust> : <taiga:violium_ingot>,
    <taiga:proxii_dust> : <taiga:proxii_ingot>,
    <taiga:tritonite_dust> : <taiga:tritonite_ingot>,
    <taiga:ignitz_dust> : <taiga:ignitz_ingot>,
    <taiga:solarium_dust> : <taiga:solarium_ingot>,
    <taiga:nihilite_dust> : <taiga:nihilite_ingot>,
    <taiga:adamant_dust> : <taiga:adamant_ingot>,
    <taiga:dyonite_dust> : <taiga:dyonite_ingot>,
    <taiga:nucleum_dust> : <taiga:nucleum_ingot>,
    <taiga:lumix_dust> : <taiga:lumix_ingot>,
    <ore:dustShadowium> : <additions:shadowium_ingot>
} as IItemStack[IIngredient];
