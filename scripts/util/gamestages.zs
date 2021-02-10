/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 31999
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

static stageTwilightShield as Stage = ZenStager.initStage("twilight_shield");
static stageHardmode as Stage = ZenStager.initStage("hardmode");
static stageSkilledEngineer as Stage = ZenStager.initStage("skilled_engineer");
static stageNether as Stage = ZenStager.initStage("nether");
static stageNoviceEngineer as Stage = ZenStager.initStage("novice_engineer");
static stageDisabled as Stage = ZenStager.initStage("disabled");
static stageInfinity as Stage = ZenStager.initStage("wielder_of_infinity");
static stageWitherSlayer as Stage = ZenStager.initStage("wither_slayer");
static stageCosmicSword as Stage = ZenStager.initStage("sword_of_cosmos");
static stageAbyssalConquerer as Stage = ZenStager.initStage("abyssal_conquerer");
static stageMasterEngineer as Stage = ZenStager.initStage("master_engineer");
static stageFusionMatrix as Stage = ZenStager.initStage("fusion_matrix");
static stageChallenger1 as Stage = ZenStager.initStage("challenger_a");
static stageChallenger2 as Stage = ZenStager.initStage("challenger_b");
static stageChallenger3 as Stage = ZenStager.initStage("challenger_c");
static stageChallenger4 as Stage = ZenStager.initStage("challenger_d");
static stageChallenger5 as Stage = ZenStager.initStage("challenger_e");
static stageChallenger6 as Stage = ZenStager.initStage("challenger_f");
static stageChallenger7 as Stage = ZenStager.initStage("challenger_g");
static stageChallenger8 as Stage = ZenStager.initStage("challenger_all");
static stageFearlessMan as Stage = ZenStager.initStage("fearless_man");
static stageNoviceWizard as Stage = ZenStager.initStage("novice_wizard");
static stageSkilledWizard as Stage = ZenStager.initStage("skilled_wizard");
static stageMasterWizard as Stage = ZenStager.initStage("master_wizard");
static stageEnderCharm as Stage = ZenStager.initStage("ender_charm");
static stageTransmutationTable as Stage = ZenStager.initStage("transmutation_table");
static stageEnergyMatter as Stage = ZenStager.initStage("energy_matter_core");
static stageAwakened as Stage = ZenStager.initStage("awakened");
static stageWyvern as Stage = ZenStager.initStage("wyvern");
static stageGettingStarted as Stage = ZenStager.initStage("getting_started");
static stageChaotic as Stage = ZenStager.initStage("chaotic");
static stageChaoticDominator as Stage = ZenStager.initStage("chaotic_dominator");
static stageExpert as Stage = ZenStager.initStage("expert");
static stageDescendantOfTheSun as Stage = ZenStager.initStage("descendant_of_the_sun");
static stageGraduated as Stage = ZenStager.initStage("graduated");

static zenStageMap as Stage[string] = ZenStager.getStageMap();

function restageItem(stage as string, item as IIngredient) {
    ItemStages.removeItemStage(item);
    ItemStages.addItemStage(stage, item);
}

function restageItems(stage as string, items as IIngredient[]) {
    for item in items {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(stage, item);
    }
}

function removeItemStages(items as IIngredient[]) {
    for item in items {
        ItemStages.removeItemStage(item);
    }
}
