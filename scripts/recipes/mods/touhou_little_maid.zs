/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 400

import mods.touhoulittlemaid.Altar;

Altar.removeRecipe("touhou_little_maid:spawn_maid");
Altar.removeRecipe("touhou_little_maid:reborn_maid");

Altar.addMaidSpawnCraftRecipe("touhou_little_maid:spawn_maid", 0.8, 
    <ore:dustTime>, 
    <ore:dustTime>, 
    <tofucraft:blocktofudiamond>, 
    <ore:blockDiamond>, 
    <ore:blockEmerald>, 
    <ore:blockDiamondPink>
);

    
Altar.addMaidReviveCraftRecipe("touhou_little_maid:reborn_maid", 0.6, 
    <ore:shardTime>, 
    <ore:shardTime>, 
    <ore:shardTime>, 
    <ore:gemDiamond>, 
    <ore:gemDiamondPink>
);

