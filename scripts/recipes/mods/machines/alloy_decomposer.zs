/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 30
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;

val regName = "alloy_decomposer";
val speed = 10;
val energy = 20;

var recipeID = 0;

val alloyRecipes as ILiquidStack[][ILiquidStack] = {
    <liquid:modularium> * 288 : [<liquid:conductive_iron> * 144, <liquid:bronze> * 144],
    <liquid:scorched> * 144 : [<liquid:lava> * 144, <liquid:stone> * 144],
    <liquid:netherite> * 144 : [<liquid:gold> * 576, <liquid:ancient_debris> * 576],
    <liquid:liquid_chocolate> * 2 : [<liquid:chocolate_liquor> * 1, <liquid:milk> * 1],
    <liquid:terra_alloy> * 2 : [<liquid:cytosinite> * 1, <liquid:cryonium> * 1, <liquid:infernium> * 1, <liquid:titanium> * 1],
    <liquid:adamant_fluid> * 3 : [<liquid:nihilite_fluid> * 1, <liquid:iox_fluid> * 3],
    <liquid:fluxed_electrum> * 288 : [<liquid:electrum> * 288, <liquid:redstone> * 100],
    <liquid:fusion_matrix> * 2 : [<liquid:manyullyn> * 2, <liquid:adamant_fluid> * 1, <liquid:enderium> * 2],
    <liquid:experience> * 16 : [<liquid:blood> * 8, <liquid:emerald> * 1, <liquid:gold> * 1],
    <liquid:fierymetal> * 2 : [<liquid:iron> * 2, <liquid:pyrotheum> * 1, <liquid:lava> * 1],
    <liquid:emerald> * 2 : [<liquid:experience> * 3, <liquid:redstone> * 2, <liquid:glowstone> * 2],
    <liquid:end_steel> * 288 : [<liquid:obsidian> * 288, <liquid:dark_steel> * 288, <liquid:ender> * 250],
    <liquid:osgloglas> * 1 : [<liquid:osmium> * 1, <liquid:refined_obsidian> * 1, <liquid:refinedglowstone> * 1],
    <liquid:osmiridium> * 2 : [<liquid:osmium> * 1, <liquid:iridium> * 1],
    <liquid:obsidian> * 36 : [<liquid:water> * 125, <liquid:lava> * 125],
    <liquid:electrum> * 2 : [<liquid:silver> * 1, <liquid:gold> * 1],
    <liquid:invar> * 3 : [<liquid:iron> * 2, <liquid:nickel> * 1],
    <liquid:bronze> * 4 : [<liquid:copper> * 3, <liquid:tin> * 1],
    <liquid:constantan> * 2 : [<liquid:copper> * 1, <liquid:nickel> * 1],
    <liquid:signalum> * 72 : [<liquid:copper> * 54, <liquid:silver> * 18, <liquid:redstone> * 125],
    <liquid:lumium> * 72 : [<liquid:tin> * 54, <liquid:silver> * 18, <liquid:glowstone> * 125],
    <liquid:enderium> * 72 : [<liquid:lead> * 54, <liquid:platinum> * 18, <liquid:ender> * 125],
    <liquid:alumite> * 3 : [<liquid:aluminum> * 5, <liquid:iron> * 2, <liquid:obsidian> * 2],
    <liquid:clay> * 144 : [<liquid:water> * 250, <liquid:stone> * 72, <liquid:dirt> * 144],
    <liquid:pigiron> * 144 : [<liquid:clay> * 72, <liquid:blood> * 40, <liquid:iron> * 144],
    <liquid:manyullyn> * 2 : [<liquid:cobalt> * 2, <liquid:ardite> * 2],
    <liquid:vivid_alloy> * 72 : [<liquid:energetic_silver> * 72, <liquid:ender> * 125],
    <liquid:energetic_silver> * 72 : [<liquid:redstone> * 50, <liquid:silver> * 72, <liquid:glowstone> * 125],
    <liquid:dark_steel> * 1 : [<liquid:steel> * 1, <liquid:obsidian> * 2],
    <liquid:pulsating_iron> * 72 : [<liquid:iron> * 72, <liquid:ender> * 125],
    <liquid:conductive_iron> * 36 : [<liquid:iron> * 36, <liquid:redstone> * 25],
    <liquid:vibrant_alloy> * 72 : [<liquid:energetic_alloy> * 72, <liquid:ender> * 125],
    <liquid:energetic_alloy> * 72 : [<liquid:redstone> * 50, <liquid:gold> * 72, <liquid:glowstone> * 125],
    <liquid:alubrass> * 4 : [<liquid:copper> * 1, <liquid:aluminum> * 3],
    <liquid:terrax_fluid> * 2 : [<liquid:karmesine_fluid> * 1, <liquid:ovium_fluid> * 1, <liquid:jauxum_fluid> * 1],
    <liquid:triberium_fluid> * 1 : [<liquid:tiberium_fluid> * 5, <liquid:dilithium_fluid> * 2],
    <liquid:fractum_fluid> * 2 : [<liquid:triberium_fluid> * 3, <liquid:obsidian> * 3, <liquid:abyssum_fluid> * 1],
    <liquid:violium_fluid> * 2 : [<liquid:aurorium_fluid> * 3, <liquid:ardite> * 2],
    <liquid:proxii_fluid> * 3 : [<liquid:prometheum_fluid> * 3, <liquid:palladium_fluid> * 3, <liquid:eezo_fluid> * 1],
    <liquid:tritonite_fluid> * 2 : [<liquid:cobalt> * 3, <liquid:terrax_fluid> * 2],
    <liquid:ignitz_fluid> * 2 : [<liquid:ardite> * 2, <liquid:terrax_fluid> * 2, <liquid:osram_fluid> * 1],
    <liquid:imperomite_fluid> * 2 : [<liquid:duranite_fluid> * 3, <liquid:prometheum_fluid> * 1, <liquid:abyssum_fluid> * 1],
    <liquid:solarium_fluid> * 2 : [<liquid:valyrium_fluid> * 2, <liquid:uru_fluid> * 2, <liquid:nucleum_fluid> * 1],
    <liquid:adamant_fluid> * 3 : [<liquid:vibranium_fluid> * 1, <liquid:solarium_fluid> * 1, <liquid:iox_fluid> * 3],
    <liquid:nihilite_fluid> * 1 : [<liquid:vibranium_fluid> * 1, <liquid:solarium_fluid> * 1],
    <liquid:seismum_fluid> * 4 : [<liquid:obsidian> * 4, <liquid:triberium_fluid> * 2, <liquid:eezo_fluid> * 1],
    <liquid:astrium_fluid> * 2 : [<liquid:terrax_fluid> * 3, <liquid:aurorium_fluid> * 2],
    <liquid:niob_fluid> * 3 : [<liquid:palladium_fluid> * 3, <liquid:duranite_fluid> * 1, <liquid:osram_fluid> * 1],
    <liquid:yrdeen_fluid> * 3 : [<liquid:uru_fluid> * 3, <liquid:valyrium_fluid> * 3, <liquid:abyssum_fluid> * 1],
    <liquid:iox_fluid> * 1 : [<liquid:eezo_fluid> * 2, <liquid:abyssum_fluid> * 2, <liquid:osram_fluid> * 2, <liquid:obsidiorite_fluid> * 9],
    <liquid:lumix_fluid> * 1 : [<liquid:palladium_fluid> * 1, <liquid:terrax_fluid> * 1],
    <liquid:obsidiorite_fluid> * 1 : [<liquid:meteorite_fluid> * 1, <liquid:obsidian> * 1],
    <liquid:nucleum_fluid> * 3 : [<liquid:niob_fluid> * 3, <liquid:eezo_fluid> * 1, <liquid:abyssum_fluid> * 1],
    <liquid:dyonite_fluid> * 3 : [<liquid:triberium_fluid> * 3, <liquid:fractum_fluid> * 1, <liquid:seismum_fluid> * 1, <liquid:osram_fluid> * 1],
    <liquid:stainless_steel> * 576 : [<liquid:manganese_steel> * 576, <liquid:nickel> * 144, <liquid:chromium> * 144],
    <liquid:manganese_steel> * 288 : [<liquid:steel> * 288, <liquid:manganese> * 144]
} as ILiquidStack[][ILiquidStack];

for input in alloyRecipes {
    var outputs as ILiquidStack[] = alloyRecipes[input] as ILiquidStack[];
    var amount = input.amount;
    var alloyEnergy = energy as int;
    var alloySpeed = Math.ceil((amount as float / 100.0f) * speed as float) as int;
    var builder = RecipeBuilder.newBuilder(regName + "_alloy_" + input.definition.name + "_" + recipeID, regName, alloySpeed, 0);
        builder.addFluidInput(input);
        builder.addEnergyPerTickInput(alloyEnergy);
    for liquid in outputs {
        builder.addFluidOutput(liquid as ILiquidStack);
    }
    builder.build();
    recipeID += 1;
}
