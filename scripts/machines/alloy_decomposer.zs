/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */

#priority 30

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import mods.ctutils.utils.Math;

val regName = "alloy_decomposer";
val speed = 10;
val energy = 20;

val alloyRecipes as ILiquidStack[][] = [
    [<liquid:modularium> * 288, /*divide*/ <liquid:iron> * 144, <liquid:bronze> * 144, <liquid:redstone> * 100],
    [<liquid:scorched> * 144, /*divide*/ <liquid:lava> * 144, <liquid:stone> * 144],
    [<liquid:netherite> * 144, /*divide*/ <liquid:gold> * 576, <liquid:ancient_debris> * 576],
    [<liquid:liquid_chocolate> * 2, /*divide*/ <liquid:chocolate_liquor> * 1, <liquid:milk> * 1],
    [<liquid:terra_alloy> * 2, /*divide*/ <liquid:cytosinite> * 1, <liquid:cryonium> * 1, <liquid:infernium> * 1, <liquid:titanium> * 1],
    [<liquid:adamant_fluid> * 3, /*divide*/ <liquid:nihilite_fluid> * 1, <liquid:iox_fluid> * 3],
    [<liquid:fluxed_electrum> * 288, /*divide*/ <liquid:gold> * 144, <liquid:silver> * 144, <liquid:redstone> * 1000],
    [<liquid:fusion_matrix> * 2, /*divide*/ <liquid:manyullyn> * 2, <liquid:adamant_fluid> * 1, <liquid:enderium> * 2],
    [<liquid:experience> * 16, /*divide*/ <liquid:blood> * 8, <liquid:emerald> * 1, <liquid:gold> * 1],
    [<liquid:fierymetal> * 2, /*divide*/ <liquid:iron> * 2, <liquid:pyrotheum> * 1, <liquid:lava> * 1],
    [<liquid:emerald> * 2, /*divide*/ <liquid:experience> * 3, <liquid:redstone> * 2, <liquid:glowstone> * 2],
    [<liquid:end_steel> * 2, /*divide*/ <liquid:obsidian> * 2, <liquid:dark_steel> * 2, <liquid:ender> * 1],
    [<liquid:osgloglas> * 1, /*divide*/ <liquid:osmium> * 1, <liquid:refined_obsidian> * 1, <liquid:refinedglowstone> * 1],
    [<liquid:osmiridium> * 2, /*divide*/ <liquid:osmium> * 1, <liquid:iridium> * 1],
    [<liquid:obsidian> * 36, /*divide*/ <liquid:water> * 125, <liquid:lava> * 125],
    [<liquid:electrum> * 2, /*divide*/ <liquid:silver> * 1, <liquid:gold> * 1],
    [<liquid:invar> * 3, /*divide*/ <liquid:iron> * 2, <liquid:nickel> * 1],
    [<liquid:bronze> * 4, /*divide*/ <liquid:copper> * 3, <liquid:tin> * 1],
    [<liquid:constantan> * 2, /*divide*/ <liquid:copper> * 1, <liquid:nickel> * 1],
    [<liquid:signalum> * 72, /*divide*/ <liquid:copper> * 54, <liquid:silver> * 18, <liquid:redstone> * 125],
    [<liquid:lumium> * 72, /*divide*/ <liquid:tin> * 54, <liquid:silver> * 18, <liquid:glowstone> * 125],
    [<liquid:enderium> * 72, /*divide*/ <liquid:lead> * 54, <liquid:platinum> * 18, <liquid:ender> * 125],
    [<liquid:alumite> * 3, /*divide*/ <liquid:aluminum> * 5, <liquid:iron> * 2, <liquid:obsidian> * 2],
    [<liquid:clay> * 144, /*divide*/ <liquid:water> * 250, <liquid:stone> * 72, <liquid:dirt> * 144],
    [<liquid:pigiron> * 144, /*divide*/ <liquid:clay> * 72, <liquid:blood> * 40, <liquid:iron> * 144],
    [<liquid:manyullyn> * 2, /*divide*/ <liquid:cobalt> * 2, <liquid:ardite> * 2],
    [<liquid:vivid_alloy> * 72, /*divide*/ <liquid:energetic_silver> * 72, <liquid:ender> * 125],
    [<liquid:energetic_silver> * 72, /*divide*/ <liquid:redstone> * 50, <liquid:silver> * 72, <liquid:glowstone> * 125],
    [<liquid:dark_steel> * 1, /*divide*/ <liquid:steel> * 1, <liquid:obsidian> * 2],
    [<liquid:pulsating_iron> * 72, /*divide*/ <liquid:iron> * 72, <liquid:ender> * 125],
    [<liquid:conductive_iron> * 36, /*divide*/ <liquid:iron> * 36, <liquid:redstone> * 25],
    [<liquid:vibrant_alloy> * 72, /*divide*/ <liquid:energetic_alloy> * 72, <liquid:ender> * 125],
    [<liquid:energetic_alloy> * 72, /*divide*/ <liquid:redstone> * 50, <liquid:gold> * 72, <liquid:glowstone> * 125],
    [<liquid:alubrass> * 4, /*divide*/ <liquid:copper> * 1, <liquid:aluminum> * 3],
    [<liquid:terrax_fluid> * 2, /*divide*/ <liquid:karmesine_fluid> * 1, <liquid:ovium_fluid> * 1, <liquid:jauxum_fluid> * 1],
    [<liquid:triberium_fluid> * 1, /*divide*/ <liquid:tiberium_fluid> * 5, <liquid:dilithium_fluid> * 2],
    [<liquid:fractum_fluid> * 2, /*divide*/ <liquid:triberium_fluid> * 3, <liquid:obsidian> * 3, <liquid:abyssum_fluid> * 1],
    [<liquid:violium_fluid> * 2, /*divide*/ <liquid:aurorium_fluid> * 3, <liquid:ardite> * 2],
    [<liquid:proxii_fluid> * 3, /*divide*/ <liquid:prometheum_fluid> * 3, <liquid:palladium_fluid> * 3, <liquid:eezo_fluid> * 1],
    [<liquid:tritonite_fluid> * 2, /*divide*/ <liquid:cobalt> * 3, <liquid:terrax_fluid> * 2],
    [<liquid:ignitz_fluid> * 2, /*divide*/ <liquid:ardite> * 2, <liquid:terrax_fluid> * 2, <liquid:osram_fluid> * 1],
    [<liquid:imperomite_fluid> * 2, /*divide*/ <liquid:duranite_fluid> * 3, <liquid:prometheum_fluid> * 1, <liquid:abyssum_fluid> * 1],
    [<liquid:solarium_fluid> * 2, /*divide*/ <liquid:valyrium_fluid> * 2, <liquid:uru_fluid> * 2, <liquid:nucleum_fluid> * 1],
    [<liquid:adamant_fluid> * 3, /*divide*/ <liquid:vibranium_fluid> * 1, <liquid:solarium_fluid> * 1, <liquid:iox_fluid> * 3],
    [<liquid:nihilite_fluid> * 1, /*divide*/ <liquid:vibranium_fluid> * 1, <liquid:solarium_fluid> * 1],
    [<liquid:seismum_fluid> * 4, /*divide*/ <liquid:obsidian> * 4, <liquid:triberium_fluid> * 2, <liquid:eezo_fluid> * 1],
    [<liquid:astrium_fluid> * 2, /*divide*/ <liquid:terrax_fluid> * 3, <liquid:aurorium_fluid> * 2],
    [<liquid:niob_fluid> * 3, /*divide*/ <liquid:palladium_fluid> * 3, <liquid:duranite_fluid> * 1, <liquid:osram_fluid> * 1],
    [<liquid:yrdeen_fluid> * 3, /*divide*/ <liquid:uru_fluid> * 3, <liquid:valyrium_fluid> * 3, <liquid:abyssum_fluid> * 1],
    [<liquid:iox_fluid> * 1, /*divide*/ <liquid:eezo_fluid> * 2, <liquid:abyssum_fluid> * 2, <liquid:osram_fluid> * 2, <liquid:obsidiorite_fluid> * 9],
    [<liquid:lumix_fluid> * 1, /*divide*/ <liquid:palladium_fluid> * 1, <liquid:terrax_fluid> * 1],
    [<liquid:obsidiorite_fluid> * 1, /*divide*/ <liquid:meteorite_fluid> * 1, <liquid:obsidian> * 1],
    [<liquid:nucleum_fluid> * 3, /*divide*/ <liquid:niob_fluid> * 3, <liquid:eezo_fluid> * 1, <liquid:abyssum_fluid> * 1],
    [<liquid:dyonite_fluid> * 3, /*divide*/ <liquid:triberium_fluid> * 3, <liquid:fractum_fluid> * 1, <liquid:seismum_fluid> * 1, <liquid:osram_fluid> * 1],
    [<liquid:stainless_steel> * 576, /*divide*/ <liquid:steel> * 576, <liquid:nickel> * 144, <liquid:chromium> * 144]
];

for row in alloyRecipes {
    if(!(row.length >= 2)) {
        break;
    }
    var inputStack = row[0] as ILiquidStack;
    var amount = inputStack.amount;
    var alloyEnergy = energy as int;
    var alloySpeed = Math.ceil((amount as float / 100.0 as float) * speed as float) as int;
    var builder = mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_alloy_" + inputStack.definition.name, regName, alloySpeed, 0);
        builder.addFluidInput(inputStack);
        builder.addEnergyPerTickInput(alloyEnergy);
    for i in 1 to row.length {
        builder.addFluidOutput(row[i] as ILiquidStack);
    }
    builder.build();
}
