/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 50

<item:minecraft:bedrock>.asBlock().definition.hardness = 500.0 as float;
<item:minecraft:bedrock>.asBlock().definition.setHarvestLevel("pickaxe", 10);

<item:minecraft:end_portal_frame>.asBlock().definition.hardness = 40.0 as float;
<item:minecraft:end_portal_frame>.asBlock().definition.setHarvestLevel("pickaxe", 5);

<item:minecraft:barrier>.asBlock().definition.hardness = 1000.0 as float;
<item:minecraft:barrier>.asBlock().definition.setHarvestLevel("pickaxe", 12);