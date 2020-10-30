/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */
#priority 3000
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:0>, <liquid:resin> * 200, 20);
mods.thermalexpansion.Compactor.removeStorageRecipe(<thaumadditions:adaminite_ingot>);
mods.thermalexpansion.Compactor.removeStorageRecipe(<thaumadditions:mithrillium_ingot>);
mods.thermalexpansion.Compactor.removeStorageRecipe(<thaumadditions:mithminite_ingot>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <thermalfoundation:material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <thermalfoundation:material>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <thermalfoundation:material>);

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:768>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:769>, <minecraft:iron_ingot>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:802>, <minecraft:iron_ingot>);

mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed>, <minecraft:glowstone_dust>);
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:600>, <minecraft:glowstone_dust>);
mods.thermalexpansion.Insolator.removeRecipe(<appliedenergistics2:crystal_seed:1200>, <minecraft:glowstone_dust>);

mods.thermalexpansion.Pulverizer.addRecipe(<nyx:meteor_dust>, <nyx:meteor_ingot>, 600);
mods.thermalexpansion.Pulverizer.addRecipe(<nyx:meteor_dust> * 9, <nyx:meteor_block>, 600);
mods.thermalexpansion.Pulverizer.addRecipe(<nyx:meteor_dust>, <nyx:meteor_shard>, 600);
mods.thermalexpansion.Pulverizer.addRecipe(<additions:greedycraft-purifying_dust> * 8, <botania:specialflower>.withTag({type: "puredaisy"}), 600);

/*
for item in <ore:dungeonlootTier1>.items {
    mods.thermalexpansion.Pulverizer.addRecipe(<additions:greedycraft-time_fragment>, item, 3000, <additions:greedycraft-experience_ingot>, 20);
}
for item in <ore:dungeonlootTier2>.items {
    mods.thermalexpansion.Pulverizer.addRecipe(<additions:greedycraft-time_fragment> * 3, item, 6000, <additions:greedycraft-experience_ingot> * 2, 35);
}
for item in <ore:dungeonlootTier3>.items {
    mods.thermalexpansion.Pulverizer.addRecipe(<additions:greedycraft-time_fragment> * 16, item, 15000, <additions:greedycraft-experience_ingot> * 16, 50);
}
*/