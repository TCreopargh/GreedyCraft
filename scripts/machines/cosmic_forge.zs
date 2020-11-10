/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 30

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

val regName = "cosmic_forge";
val speed = 3000;

val itemInput as int[IOreDictEntry] = {
    <ore:ingotTerraAlloy> : 2,
    <ore:ingotChaoticMetal> : 1,
    <ore:ingotAstralMetal> : 1,
    <ore:ingotMirion> : 1,
    <ore:ingotMithminite> : 1,
    <ore:ingotCosmicNeutronium> : 1,
    <ore:ingotProtonium> : 1,
    <ore:ingotElectronium> : 1,
    <ore:ingotEthaxium> : 1,
    <ore:ingotInsanium> : 1,
    <ore:ingotPrimordial> : 1,
    <ore:ingotGaia> : 1,
    <ore:ingotOsgloglas> : 1,
    <ore:ingotNetherite> : 1,
    <ore:ingotCrimsonite>: 1
} as int[IOreDictEntry];

var builder = mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_main", regName, speed, 0);

for input in itemInput {
    builder.addItemInput(input, itemInput[input] as int);
}

builder.addEnergyPerTickInput(200000);
builder.addItemOutput(<additions:cosmilite_ingot> * COSMILITE_OUTPUT_COUNT);
builder.build();

