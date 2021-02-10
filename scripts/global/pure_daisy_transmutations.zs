/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 32767
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.block.IBlockState;

global pureDaisyTransmutations as IItemStack[IIngredient] = {
    <ore:stone> : <botania:livingrock>,
    <ore:logWood> : <botania:livingwood>,
    <ore:cobblestone> : <botania:livingrock>,
    <ore:netherrack> : <minecraft:cobblestone>,
    <ore:endstone> : <minecraft:cobblestone>,
    <minecraft:soul_sand> : <minecraft:gravel>,
    <ore:grass> : <minecraft:dirt>,
    <minecraft:ice> : <minecraft:packed_ice>,
    <botania:blazeblock> : <minecraft:obsidian>,
    <ore:dirt> : <minecraft:grass>,
    <defiledlands:glass_obscure> : <minecraft:glass>,
    <defiledlands:stone_defiled> : <minecraft:stone>,
    <defiledlands:scarlite_ore> : <minecraft:diamond_ore>,
    <defiledlands:gravel_defiled> : <minecraft:gravel>,
    <defiledlands:scarlite_block> : <minecraft:diamond_block>,
    <defiledlands:stone_defiled_decoration:3> : <minecraft:mossy_cobblestone>,
    <defiledlands:hephaestite_ore> : <minecraft:coal_ore>,
    <defiledlands:hephaestite_block> : <minecraft:coal_block>,
    <defiledlands:umbrium_ore> : <minecraft:iron_ore>,
    <defiledlands:umbrium_block> : <minecraft:iron_block>,
    <defiledlands:stone_defiled_decoration:2> : <minecraft:stonebrick:1>,
    <defiledlands:sandstone_defiled> : <minecraft:sandstone>,
    <defiledlands:sand_defiled> : <minecraft:sand>,
    <defiledlands:dirt_defiled> : <minecraft:dirt>,
    <defiledlands:grass_defiled> : <minecraft:grass>,
    <defiledlands:stone_defiled_decoration:1> : <minecraft:stonebrick:2>,
    <defiledlands:stone_defiled_decoration> : <minecraft:stonebrick>,
    <abyssalcraft:stone> : <minecraft:stone>,
    <abyssalcraft:stone:1> : <minecraft:stone>,
    <abyssalcraft:stone:2> : <minecraft:stone>,
    <abyssalcraft:stone:3> : <minecraft:stone>,
    <abyssalcraft:stone:4> : <minecraft:stone>,
    <abyssalcraft:stone:5> : <minecraft:stone>,
    <abyssalcraft:stone:6> : <minecraft:stone>,
    <abyssalcraft:stone:7> : <minecraft:stone>,
    <ore:blockMud> : <minecraft:brown_mushroom_block>,
    <ore:plankWood> : <botania:livingwood:1>,
    <ore:gravel> : <minecraft:sand>,
    <thaumcraft:taint_soil> : <minecraft:dirt>,
    <thaumcraft:taint_rock> : <minecraft:stone>,
    <thaumcraft:taint_log> : <minecraft:log>,
    <ore:blockRottenFlesh> : <biomesoplenty:flesh>,
    <ore:mycelium> : <minecraft:grass>,
    <biomesoplenty:bramble_plant> : <twilightforest:thorns>,
    <twilightforest:thorns> : <twilightforest:burnt_thorns>
} as IItemStack[IIngredient];
