/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */

#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

function registerSeedRecipe(seed as IItemStack, baseItem as IItemStack, tier as int, outputAmount as int, essence as IItemStack, outputStack as IItemStack) {

    val regName = "organic_infuser";
    var energy = [30, 40, 50, 60, 80, 100, 200] as int[];
    var time = [15, 20, 25, 30, 40, 60, 600] as int[];
    var fluid = [500, 550, 600, 650, 700, 800, 3200] as int[];
    var timeCarpenter = [60, 75, 80, 100, 140, 210, 1200] as int[];
    var fluidCarpenter = [600, 750, 900, 1200, 1600, 2400, 10000] as int[];
    var fertilizer = [<thermalfoundation:fertilizer>, <thermalfoundation:fertilizer>, <thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:2>, <thermalfoundation:fertilizer:2>, <mysticalagriculture:mystical_fertilizer>] as IItemStack[];
    var output = outputStack;
    val essences as IIngredient[] = [null, <ore:essenceInfernium>, <ore:essencePrudentium>, <ore:essenceIntermedium>, <ore:essenceSuperium>, <ore:essenceSupremium>, <ore:essenceInsanium>];
    val bases as IIngredient[] = [null, <mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:21>, <mysticalagradditions:insanium:1>];
    if(isNull(output)) {
        output = baseItem;
    }
    
    if(tier <= 6 && tier > 0) {
    
        if(tier == 1) {
            <ore:seedsTier1>.add(seed);
        } else if(tier == 2) {
            <ore:seedsTier2>.add(seed);
        } else if(tier == 3) {
            <ore:seedsTier3>.add(seed);
        } else if(tier == 4) {
            <ore:seedsTier4>.add(seed);
        } else if(tier == 5) {
            <ore:seedsTier5>.add(seed);
        } else if(tier == 6) {
            <ore:seedsTier6>.add(seed);
        }
    
        mods.forestry.Carpenter.addRecipe(seed, [
            [baseItem, essences[tier], baseItem],
            [essences[tier], bases[tier], essences[tier]],
            [baseItem, essences[tier], baseItem]
        ] as IIngredient[][], timeCarpenter[tier], <liquid:organic_fluid> * fluidCarpenter[tier], fertilizer[tier]);
        recipes.addShaped(seed.definition.name + "_essence", (output * outputAmount) as IItemStack, [ 
            [essence, essence, essence],
            [essence, null, essence],
            [essence, essence, essence]
        ] as IIngredient[][]);
        mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_grow_" + seed.name, regName, time[tier], 0)
            .addItemInput(seed)
            .addEnergyPerTickInput(energy[tier])
            .addFluidInput(<liquid:organic_fluid> * fluid[tier])
            .addItemOutput(seed)
            .addItemOutput(seed)
            .setChance(0.1 as float)
            .addItemOutput(essence)
            .addItemOutput(essence)
            .setChance(0.5 as float)
            .addItemOutput(essence)
            .setChance(0.25 as float)
            .addItemOutput(essence)
            .setChance(0.125 as float)
            .build();
    }
}

registerSeedRecipe(<mysticalcreations:titanium_seeds>, <additions:titanium_ingot>, 6, 1, <mysticalcreations:titanium_essence>, <additions:greedycraft-titanium_nugget>);
registerSeedRecipe(<mysticalcreations:chromium_seeds>, <additions:chromium_ingot>, 5, 1, <mysticalcreations:chromium_essence>, null);
registerSeedRecipe(<mysticalcreations:cake_seeds>, <minecraft:cake>, 3, 2, <mysticalcreations:cake_essence>, null);
registerSeedRecipe(<mysticalcreations:witch_seeds>, <mysticalcreations:witch_chunk>, 4, 1, <mysticalcreations:witch_essence>, null);
registerSeedRecipe(<mysticalcreations:stainless_steel_seeds>, <additions:stainless_steel_ingot>, 5, 1, <mysticalcreations:stainless_steel_essence>, null);
