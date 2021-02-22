/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 150
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

static buggedFoods as IItemStack[] = [
    <betternether:stalagnate_bowl_apple>,
    <betternether:stalagnate_bowl_mushroom>,
    <betternether:stalagnate_bowl_wart>,
    <twilightforest:meef_stroganoff>,
    <birdsfoods:potato_soup>
];

for food in buggedFoods {
    (food as IIngredient).foodValues.hunger = 0;
    (food as IIngredient).foodValues.saturationModifier = 0;
}

(<abyssalcraft:mre> as IIngredient).foodValues.hunger = 10;
