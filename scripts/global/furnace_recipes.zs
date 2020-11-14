/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 32767

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
    <ore:oreAqualite> : <additions:aqualite_ingot>
} as IItemStack[IIngredient];
