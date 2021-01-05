/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 3000

import mods.thermalexpansion.Transposer;
import mods.thermalexpansion.Compactor;
import mods.thermalexpansion.InductionSmelter;
import mods.thermalexpansion.Insolator;
import mods.thermalexpansion.Pulverizer;
import mods.thermalexpansion.Infuser;
import mods.thermalexpansion.Coolant;

Transposer.addFillRecipe(<thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:0>, <liquid:resin> * 200, 20);

Compactor.removeStorageRecipe(<thaumadditions:adaminite_ingot>);
Compactor.removeStorageRecipe(<thaumadditions:mithrillium_ingot>);
Compactor.removeStorageRecipe(<thaumadditions:mithminite_ingot>);

InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <thermalfoundation:material>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <thermalfoundation:material>);

InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <minecraft:iron_ingot>);
InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <minecraft:iron_ingot>);

Insolator.removeRecipe(<appliedenergistics2:crystal_seed>, <minecraft:glowstone_dust>);
Insolator.removeRecipe(<appliedenergistics2:crystal_seed:600>, <minecraft:glowstone_dust>);
Insolator.removeRecipe(<appliedenergistics2:crystal_seed:1200>, <minecraft:glowstone_dust>);

Pulverizer.addRecipe(<nyx:meteor_dust>, <nyx:meteor_ingot>, 600);
Pulverizer.addRecipe(<nyx:meteor_dust> * 9, <nyx:meteor_block>, 600);
Pulverizer.addRecipe(<nyx:meteor_dust>, <nyx:meteor_shard>, 600);
Pulverizer.addRecipe(<additions:greedycraft-purifying_dust> * 8, <botania:specialflower>.withTag({type: "puredaisy"}), 600);

Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:1>, 200000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:2>, 400000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:3>, 600000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:4>, 800000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:5>, 1000000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:6>, 1200000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:7>, 1400000);
Infuser.addRecipe(<thaumcraft:primordial_pearl>, <thaumcraft:primordial_pearl:8>, 1600000);

Coolant.addCoolant(<liquid:cryonium>, 6000000, 75);
