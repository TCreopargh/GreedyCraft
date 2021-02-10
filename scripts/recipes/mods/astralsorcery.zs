/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */
 
#priority 30
#no_fix_recipe_book

import mods.astralsorcery.Altar;

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enchantment_amulet_craft");
Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/enchantment_amulet_reroll");

Altar.addDiscoveryAltarRecipe("shinydust", <astralsorcery:itemusabledust> * 16, 100, 100, [
            null, <ore:dustGlowstone>, null,
            <ore:dustGlowstone>, <ore:fallenStar>, <ore:dustGlowstone>,
            null, <ore:dustGlowstone>, null]);
            
Altar.addConstellationAltarRecipe("shining_star", <additions:greedycraft-shining_star>, 1000, 200, [
            <astralsorcery:itemusabledust>, <ore:dustAstralStarmetal>, <astralsorcery:itemusabledust>,
            <ore:dustAstralStarmetal>, <ore:blockGold>, <ore:dustAstralStarmetal>,
            <astralsorcery:itemusabledust>, <ore:dustAstralStarmetal>, <astralsorcery:itemusabledust>,
            <ore:fallenStar>, <ore:fallenStar>, <ore:fallenStar>, <ore:fallenStar>,
            <ore:fallenStar>, <ore:fallenStar>,
            <ore:fallenStar>, <ore:fallenStar>,
            <ore:fallenStar>, <ore:fallenStar>,
            <ore:fallenStar>, <ore:fallenStar>]);
