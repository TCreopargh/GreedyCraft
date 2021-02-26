/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 3999
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

val compressingRecipes as IItemStack[IItemStack] = {
    <additions:aqualite_ingot> : <additions:greedycraft-aqualite_block>,
    <additions:greedycraft-time_fragment> : <additions:greedycraft-time_shard>,
    <additions:greedycraft-time_shard> : <additions:greedycraft-sand_of_time>,
    <additions:manganese_steel_ingot> : <additions:greedycraft-manganese_steel_block>,
    <additions:durasteel_ingot> : <additions:greedycraft-durasteel_block>,
    <additions:aeonsteel_ingot> : <additions:greedycraft-aeonsteel_block>,
    <additions:chromasteel_ingot> : <additions:greedycraft-chromasteel_block>,
    <taiga:seismum_nugget> : <taiga:seismum_ingot>,
    <taiga:astrium_nugget> : <taiga:astrium_ingot>,
    <taiga:iox_nugget> : <taiga:iox_ingot>,
    <taiga:meteorite_nugget> : <taiga:meteorite_ingot>,
    <taiga:basalt_nugget> : <taiga:basalt_ingot>,
    <taiga:dilithium_nugget> : <taiga:dilithium_ingot>,
    <taiga:imperomite_nugget> : <taiga:imperomite_ingot>,
    <taiga:tiberium_nugget> : <taiga:tiberium_ingot>,
    <taiga:aurorium_nugget> : <taiga:aurorium_ingot>,
    <taiga:prometheum_nugget> : <taiga:prometheum_ingot>,
    <taiga:duranite_nugget> : <taiga:duranite_ingot>,
    <taiga:valyrium_nugget> : <taiga:valyrium_ingot>,
    <taiga:vibranium_nugget> : <taiga:vibranium_ingot>,
    <taiga:karmesine_nugget> : <taiga:karmesine_ingot>,
    <taiga:ovium_nugget> : <taiga:ovium_ingot>,
    <taiga:jauxum_nugget> : <taiga:jauxum_ingot>,
    <taiga:terrax_nugget> : <taiga:terrax_ingot>,
    <taiga:palladium_nugget> : <taiga:palladium_ingot>,
    <taiga:uru_nugget> : <taiga:uru_ingot>,
    <taiga:osram_nugget> : <taiga:osram_ingot>,
    <taiga:abyssum_nugget> : <taiga:abyssum_ingot>,
    <taiga:eezo_nugget> : <taiga:eezo_ingot>,
    <taiga:triberium_nugget> : <taiga:triberium_ingot>,
    <taiga:fractum_nugget> : <taiga:fractum_ingot>,
    <taiga:violium_nugget> : <taiga:violium_ingot>,
    <taiga:proxii_nugget> : <taiga:proxii_ingot>,
    <taiga:tritonite_nugget> : <taiga:tritonite_ingot>,
    <taiga:ignitz_nugget> : <taiga:ignitz_ingot>,
    <taiga:solarium_nugget> : <taiga:solarium_ingot>,
    <taiga:nihilite_nugget> : <taiga:nihilite_ingot>,
    <taiga:adamant_nugget> : <taiga:adamant_ingot>,
    <taiga:dyonite_nugget> : <taiga:dyonite_ingot>,
    <taiga:nucleum_nugget> : <taiga:nucleum_ingot>,
    <taiga:lumix_nugget> : <taiga:lumix_ingot>,
    <taiga:seismum_ingot> : <taiga:seismum_block>,
    <taiga:astrium_ingot> : <taiga:astrium_block>,
    <taiga:iox_ingot> : <taiga:iox_block>,
    <taiga:meteorite_ingot> : <taiga:meteorite_block>,
    <taiga:basalt_ingot> : <taiga:basalt_block>,
    <taiga:dilithium_ingot> : <taiga:dilithium_block>,
    <taiga:imperomite_ingot> : <taiga:imperomite_block>,
    <taiga:tiberium_ingot> : <taiga:tiberium_block>,
    <taiga:aurorium_ingot> : <taiga:aurorium_block>,
    <taiga:prometheum_ingot> : <taiga:prometheum_block>,
    <taiga:duranite_ingot> : <taiga:duranite_block>,
    <taiga:valyrium_ingot> : <taiga:valyrium_block>,
    <taiga:vibranium_ingot> : <taiga:vibranium_block>,
    <taiga:karmesine_ingot> : <taiga:karmesine_block>,
    <taiga:ovium_ingot> : <taiga:ovium_block>,
    <taiga:jauxum_ingot> : <taiga:jauxum_block>,
    <taiga:terrax_ingot> : <taiga:terrax_block>,
    <taiga:palladium_ingot> : <taiga:palladium_block>,
    <taiga:uru_ingot> : <taiga:uru_block>,
    <taiga:osram_ingot> : <taiga:osram_block>,
    <taiga:abyssum_ingot> : <taiga:abyssum_block>,
    <taiga:eezo_ingot> : <taiga:eezo_block>,
    <taiga:triberium_ingot> : <taiga:triberium_block>,
    <taiga:fractum_ingot> : <taiga:fractum_block>,
    <taiga:violium_ingot> : <taiga:violium_block>,
    <taiga:proxii_ingot> : <taiga:proxii_block>,
    <taiga:tritonite_ingot> : <taiga:tritonite_block>,
    <taiga:ignitz_ingot> : <taiga:ignitz_block>,
    <taiga:solarium_ingot> : <taiga:solarium_block>,
    <taiga:nihilite_ingot> : <taiga:nihilite_block>,
    <taiga:adamant_ingot> : <taiga:adamant_block>,
    <taiga:dyonite_ingot> : <taiga:dyonite_block>,
    <taiga:nucleum_ingot> : <taiga:nucleum_block>,
    <taiga:lumix_ingot> : <taiga:lumix_block>,
    <modularmachinery:itemmodularium> : <additions:greedycraft-modularium_block>
} as IItemStack[IItemStack];

for original in compressingRecipes {
    var compressed = compressingRecipes[original] as IItemStack;
    RecipeUtil.addCompressingRecipe(original, compressed);
}
