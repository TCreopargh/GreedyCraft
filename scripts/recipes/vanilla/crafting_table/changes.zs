/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

RecipeUtil.removeAndAddShapeless("exu_squid_ring", <extrautils2:chickenring:1>, [<extrautils2:chickenring>, <minecraft:dye>]);
RecipeUtil.removeAndAddShapeless("exu_angel_ring", <extrautils2:angelring>, [<extrautils2:chickenring:1>, <draconicevolution:awakened_core>]);

RecipeUtil.removeAndAdd("iron_chain_ring", <hooked:microcrafting:2>, [
    [null, <ore:nuggetIron>, <ore:nuggetIron>], 
    [<ore:nuggetIron>, null, <ore:nuggetIron>], 
    [<ore:nuggetIron>, <ore:nuggetIron>, null]
]);
RecipeUtil.removeAndAdd("bonsai_pot", <bonsaitrees:bonsaipot>, [
    [null, null, null], 
    [<ore:ingotBrick>, <ore:shardTime>, <ore:ingotBrick>], 
    [<ore:ingotBrick>, <ore:ingotBrick>, <ore:ingotBrick>]
]);
RecipeUtil.removeAndAdd("laser_amplifier", <mekanism:machineblock2:14>, [
    [<ore:ingotOsmium>, <ore:gemDiamond>, <ore:ingotOsmium>],
    [<ore:shardCreative>, <mekanism:energycube>, <ore:shardCreative>], 
    [<ore:ingotOsmium>, <ore:shardCreative>, <ore:ingotOsmium>]
]);
RecipeUtil.removeAndAdd("xu_overclocked_generator", <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
    [<actuallyadditions:item_crystal_empowered:1>, <ore:ingotAeonsteel>, <actuallyadditions:item_crystal_empowered:1>],
    [<ore:ingotDurasteel>, <extrautils2:machine>.withTag({Type: "extrautils2:generator"}), <ore:ingotDurasteel>], 
    [<actuallyadditions:item_crystal_empowered:1>, <ore:ingotAeonsteel>, <actuallyadditions:item_crystal_empowered:1>]
]);

