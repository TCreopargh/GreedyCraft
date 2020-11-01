/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */

#loader contenttweaker 
#priority 2200

#norun
//For items added by this modpack, please go to the /addons/additions folder.

//Disabled as this is a failed attempt

/*
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import crafttweaker.item.IItemDefinition;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.BlockState;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IBlockPos;


val transmutations as BlockState[IItemStack] = {
    <minecraft:log> : <block:botania:livingwood>,
    <minecraft:stone> : <block:botania:livingrock>,
    <minecraft:netherrack> : <block:minecraft:cobblestone>,
    <minecraft:soul_sand> : <block:minecraft:sand>,
    <minecraft:ice> : <block:minecraft:packed_ice>,
    <botania:blazeblock> : <block:minecraft:obsidian>,
    <minecraft:water> : <block:minecraft:snow>,
    <minecraft:grass> : <block:minecraft:dirt>,
    <defiledlands:glass_obscure> : <block:minecraft:glass>,
    <defiledlands:stone_defiled> : <block:minecraft:stone>,
    <defiledlands:scarlite_ore> : <block:minecraft:diamond_ore>,
    <defiledlands:gravel_defiled> : <block:minecraft:gravel>,
    <defiledlands:scarlite_block> : <block:minecraft:diamond_block>,
    <defiledlands:stone_defiled_decoration:3> : <block:minecraft:mossy_cobblestone>,
    <defiledlands:hephaestite_ore> : <block:minecraft:coal_ore>,
    <defiledlands:hephaestite_block> : <block:minecraft:coal_block>,
    <defiledlands:umbrium_ore> : <block:minecraft:iron_ore>,
    <defiledlands:umbrium_block> : <block:minecraft:iron_block>,
    <defiledlands:stone_defiled_decoration:2> : <block:minecraft:stonebrick:1>,
    <defiledlands:sandstone_defiled> : <block:minecraft:sandstone>,
    <defiledlands:sand_defiled> : <block:minecraft:sand>,
    <defiledlands:dirt_defiled> : <block:minecraft:dirt>,
    <defiledlands:grass_defiled> : <block:minecraft:grass>,
    <defiledlands:stone_defiled_decoration:1> : <block:minecraft:stonebrick:2>,
    <defiledlands:stone_defiled_decoration> : <block:minecraft:stonebrick>
} as BlockState[IItemStack];

var itemPurifyingDust = VanillaFactory.createItem("purifying_dust");
itemPurifyingDust.maxStackSize = 1;
itemPurifyingDust.rarity = "epic";
itemPurifyingDust.itemRightClick = function(stack, world, player, hand) {
    var x = player.x as int;
    var y = player.y as int;
    var z = player.z as int;
    for i in (x - 7) to (x + 8) {
        for j in y to (y + 7) {
            for k in (z - 7) to (z + 8) {
                var block as IBlock = world.getBlock(i, j, k);
                var pos = crafttweaker.util.Position3f.create(x, y, z).asBlockPos();
                for ingredient in transmutations {
                    if(ingredient.asBlock() != null && ingredient.asBlock() == block) {
                        world.setBlockState(transmutations[ingredient], pos as BlockPos);
                    }
                }
            }
        }
    }
    return "Pass";
};
itemPurifyingDust.register();
*/
