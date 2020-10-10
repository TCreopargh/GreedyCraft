#priority 3000
#disable_search_tree
mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:0>, <liquid:resin> * 200, 20);
mods.thermalexpansion.Compactor.removeStorageRecipe(<thaumadditions:adaminite_ingot>);
mods.thermalexpansion.Compactor.removeStorageRecipe(<thaumadditions:mithrillium_ingot>);
mods.thermalexpansion.Compactor.removeStorageRecipe(<thaumadditions:mithminite_ingot>);

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