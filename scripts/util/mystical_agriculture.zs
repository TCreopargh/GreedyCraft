/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 31990
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenutils.I18n;

static regName as string = "organic_infuser";
static energy as int[] = [160, 240, 320, 480, 560, 800, 1600] as int[];
static time as int[] = [40, 60, 100, 160, 240, 400, 4800] as int[];
static fluid as int[] = [500, 550, 600, 650, 700, 800, 3200] as int[];
static timeCarpenter as int[] = [60, 75, 80, 100, 140, 210, 1200] as int[];
static fluidCarpenter as int[] = [600, 750, 900, 1200, 1600, 2400, 10000] as int[];
static seedChance as float[] = [0.12f, 0.1f, 0.08f, 0.06f, 0.04f, 0.02f, 0.005f] as float[];

function registerSeedRecipe(seed as IItemStack, baseItem as IItemStack, tier as int, outputAmount as int, essence as IItemStack, outputStack as IItemStack) {

    val regName = "organic_infuser";
    var fertilizer = [<thermalfoundation:fertilizer>, <thermalfoundation:fertilizer>, <thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:1>, <thermalfoundation:fertilizer:2>, <thermalfoundation:fertilizer:2>, <mysticalagriculture:mystical_fertilizer>] as IItemStack[];
    var output = outputStack;
    val essences as IIngredient[] = [null, <ore:essenceInfernium>, <ore:essencePrudentium>, <ore:essenceIntermedium>, <ore:essenceSuperium>, <ore:essenceSupremium>, <ore:essenceInsanium>];
    val bases as IIngredient[] = [null, <mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:18>, <mysticalagriculture:crafting:19>, <mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:21>, <mysticalagradditions:insanium:1>];
    if (isNull(output)) {
        output = baseItem;
    }
    
    if (tier <= 6 && tier > 0) {
    
        if (tier == 1) {
            <ore:seedsTier1>.add(seed);
        } else if (tier == 2) {
            <ore:seedsTier2>.add(seed);
        } else if (tier == 3) {
            <ore:seedsTier3>.add(seed);
        } else if (tier == 4) {
            <ore:seedsTier4>.add(seed);
        } else if (tier == 5) {
            <ore:seedsTier5>.add(seed);
        } else if (tier == 6) {
            <ore:seedsTier6>.add(seed);
        }
        
        var baseItemName as string = game.localize("greedycraft.mysticalagriculture.base_item");
        baseItemName = baseItem.displayName;
        seed.addTooltip(I18n.format("greedycraft.mysticalagriculture.seed_tooltip", baseItemName));
        mods.jei.JEI.addDescription(seed, I18n.format("greedycraft.mysticalagriculture.jei_info", baseItemName));

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
            .setChance(seedChance[tier] as float)
            .addItemOutput(essence)
            .addItemOutput(essence)
            .setChance(0.5f)
            .addItemOutput(essence)
            .setChance(0.25f)
            .addItemOutput(essence)
            .setChance(0.125f)
            .addItemOutput(<mysticalagriculture:fertilized_essence>)
            .setChance(0.01f)
            .build();
    }
}
