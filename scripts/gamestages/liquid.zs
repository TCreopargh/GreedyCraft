/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 900

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;

GameStagesUtil.stageInfinity.addLiquid(<liquid:infinity_metal>);
GameStagesUtil.stageHardmode.addLiquid(<liquid:osmiridium>);
GameStagesUtil.stageHardmode.addLiquid(<liquid:osgloglas>);
GameStagesUtil.stageAwakened.addLiquid(<liquid:terra_alloy>);
GameStagesUtil.stageFusionMatrix.addLiquid(<liquid:draconium>);
GameStagesUtil.stageDisabled.addLiquid(<liquid:sakura.hot_spring_water>);
