/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 760

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;

for mod in loadedMods {
    for item in mod.items {
        ItemStages.setUnfamiliarName(game.localize("greedycraft.stage.unfamiliar.name"), item);
    }
}

ItemStages.setUnfamiliarName(game.localize("greedycraft.stage.wither_skull.name"), <ore:skullWitherSkeleton>);
