/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 760
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

import scripts.util.gamestages as GameStagesUtil;
import scripts.util.lang as LangUtil;

for mod in loadedMods {
    for item in mod.items {
        ItemStages.setUnfamiliarName(LangUtil.translate("greedycraft.stage.unfamiliar.name"), item);
    }
}

ItemStages.setUnfamiliarName(LangUtil.translate("greedycraft.stage.wither_skull.name"), <ore:skullWitherSkeleton>);
