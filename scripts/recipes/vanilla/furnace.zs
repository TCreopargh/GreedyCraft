/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 3000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

val removedRecipes as IItemStack[] = [
    <tconstruct:materials>,
    <extrabotany:material:5>
] as IItemStack[];

for input in removedRecipes {
    furnace.remove(input);
}

// see global file for furnaceRecipes
for input in furnaceRecipes {
    furnace.addRecipe(furnaceRecipes[input] as IItemStack, input, furnaceXp);
}
