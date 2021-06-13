/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 50
#no_fix_recipe_book

<item:minecraft:bedrock>.asBlock().definition.hardness = 500.0f;
<item:minecraft:bedrock>.asBlock().definition.setHarvestLevel("pickaxe", 10);

<item:minecraft:end_portal_frame>.asBlock().definition.hardness = 60.0f;
<item:minecraft:end_portal_frame>.asBlock().definition.setHarvestLevel("pickaxe", 5);

<item:minecraft:barrier>.asBlock().definition.hardness = 1000.0f;
<item:minecraft:barrier>.asBlock().definition.setHarvestLevel("pickaxe", 12);

<item:quark:monster_box>.asBlock().definition.hardness = 150.0f;
<item:quark:monster_box>.asBlock().definition.setHarvestLevel("pickaxe", 4);

<item:nyx:meteor_rock>.asBlock().definition.hardness = 32.0f;
<item:nyx:meteor_rock>.asBlock().definition.setHarvestLevel("pickaxe", 4);

<item:minecraft:mob_spawner>.asBlock().definition.hardness = 100.0f;

<item:astralsorcery:blockcustomore:1>.asBlock().definition.hardness = 12.0f;
<item:astralsorcery:blockcustomore:1>.asBlock().definition.setHarvestLevel("pickaxe", 4);
