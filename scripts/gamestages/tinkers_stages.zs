/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 299
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import mods.TinkerStages;

val materialStages as string[string] = {
    "draconium": "fusion_matrix",
    "insanium": "hardmode",
    "ma.supremium": "hardmode",
    "osmiridium": "hardmode",
    "osgloglas": "hardmode",
    "gelid_enderium": "skilled_engineer",
    "gelid_gem": "skilled_engineer",
    "infinity_metal": "wielder_of_infinity",
    "chaotic_metal": "awakened",
    "draconic_metal": "wyvern",
    "neutronium": "awakened",
    "infernium": "descendant_of_the_sun",
    "ardite": "nether",
    "cobalt": "nether",
    "manyullyn": "nether",
    "meteor": "nether",
    "titanium": "awakened",
    "cryonium": "hardmode",
    "cytosinite": "hardmode",
    "mithminite": "hardmode",
    "adaminite": "hardmode",
    "mithrillium": "hardmode",
    "terra_alloy": "awakened",
    "bedrock": "awakened",
    "protonium": "awakened",
    "cosmilite": "chaotic",
    "astral_metal": "skilled_wizard",
    "red_matter": "hardmode",
    "dark_matter": "hardmode",
    "fusion_matrix": "hardmode",
    "amethyst": "hardmode",
    "extrabotany:ingotorichalcos": "disabled",
    "extrabotany:ingotshadowium": "disabled",
    "void_metal": "master_wizard",
    "electronium": "fusion_matrix",
    "sentient_metal": "novice_wizard",
    "bound_metal": "novice_wizard",
    "blood_infused_wood": "novice_wizard",
    "blood_infused_iron": "novice_wizard",
    "crimsonite": "skilled_wizard",
    "end_steel": "novice_engineer",
    "stellar_alloy_gc": "wither_slayer",
    "enderium": "skilled_engineer",
    "lumium": "nether",
    "mirion": "abyssal_conquerer",
    "dreadium": "fearless_man",
    "ehtaxium": "hardmode",
    "xu_withering": "wither_slayer",
    "valkyrie": "nether",
    "gravitite": "nether",
    "zanite": "nether",
    "golden_amber": "nether",
    "platinum": "skilled_engineer",
    "iridium": "skilled_engineer",
    "primal_metal": "master_wizard",
    "void_metal": "master_wizard",
    "terrestrial": "hardmode",
    "protonium": "energy_matter_core",
    "asgardium": "nether",
    "dimansional_shard": "nether",
    "rime": "nether",
    "shadowium": "hardmode",
    "orichalcos": "hardmode",
    "gaia": "nether",
    "ravaging": "nether",
    "remorseful": "nether",
    "magmaslime": "nether",
    "ender_biotite": "hardmode",
    "aqualite": "nether",
    "fluix": "nether",
    "fluix_steel": "nether",
    "adamant": "hardmode",
    "aeonsteel": "hardmode",
    "chromasteel": "awakened",
    "durasteel": "nether",
    "gaiasteel": "wither_slayer"
} as string[string];

val toolTypeStages as string[string] = {
    "tconevo:tool_sceptre": "wand_blueprint",
    "tconstruct:rapier": "tactic_blueprint",
    "tconstruct:longsword": "tactic_blueprint",
    "plustic:katana": "tactic_blueprint",
    "plustic:laser_gun": "laser_gun_blueprint",
    "tconstruct:cleaver": "tactic_blueprint",
    "tconstruct:shuriken": "shuriken_blueprint"
} as string[string];

TinkerStages.addModifierStage("hardmode", "mending_moss");

for toolType in toolTypeStages {
    var stage as string = toolTypeStages[toolType] as string;
    TinkerStages.addToolTypeStage(stage, toolType);
}

for material in materialStages {
    var stage as string = materialStages[material] as string;
    TinkerStages.addMaterialStage(stage, material);
}
