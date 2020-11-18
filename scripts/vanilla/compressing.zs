/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 3999

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

function addCompressingRecipe(original as IItemStack, compressed as IItemStack) {
    recipes.addShaped(original.definition.id.replace(":", "_") + "_compress", compressed, 
    [
    [original, original, original], 
    [original, original, original], 
    [original, original, original]] as IIngredient[][]);
    recipes.addShapeless(original.definition.id.replace(":", "_") + "_decompress", original * 9, [compressed] as IIngredient[]);
}

val compressingRecipes as IItemStack[IItemStack] = {
    <additions:aqualite_ingot> : <additions:greedycraft-aqualite_block>,
    <additions:greedycraft-time_fragment> : <additions:greedycraft-time_shard>,
    <additions:greedycraft-time_shard> : <additions:greedycraft-sand_of_time>,
    <additions:manganese_steel_ingot> : <additions:greedycraft-manganese_steel_block>
} as IItemStack[IItemStack];

for original in compressingRecipes {
    var compressed = compressingRecipes[original] as IItemStack;
    addCompressingRecipe(original, compressed);
}
