/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 1250
#modloaded projecte

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;


mods.botania.ElvenTrade.addRecipe([<defiledlands:scarlite>], [<ore:slimeballBlood>, <ore:gemEmerald>, <ore:gemEmerald>]);
mods.botania.ElvenTrade.addRecipe([<actuallyadditions:item_misc:5>], [<ore:gemQuartz>, <ore:coal>]);
mods.botania.ElvenTrade.addRecipe([<actuallyadditions:item_misc:5>], [<ore:gemQuartz>, <ore:charcoal>]);
mods.botania.ElvenTrade.addRecipe([<minecraft:gold_block>], [<ore:shardTime>]);

mods.botania.Apothecary.addRecipe(<additions:greedycraft-bag_of_dyes>, [<ore:petalGreen>, <ore:petalRed>, <ore:petalBlue>, <ore:petalYellow>, <ore:petalGreen>, <ore:petalRed>, <ore:petalBlue>, <ore:petalYellow>]);

mods.botania.PureDaisy.addRecipe(<minecraft:grass>, <minecraft:dirt>, 200);

mods.botania.RuneAltar.addRecipe(<twilightforest:aurora_block> * 32, [<ore:stone>, <quark:rune:*>], 50);
mods.botania.RuneAltar.addRecipe(<twilightforest:castle_rune_brick> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyePink>], 50);
mods.botania.RuneAltar.addRecipe(<twilightforest:castle_rune_brick:1> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyeLightBlue>], 50);
mods.botania.RuneAltar.addRecipe(<twilightforest:castle_rune_brick:2> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyeYellow>], 50);
mods.botania.RuneAltar.addRecipe(<twilightforest:castle_rune_brick:3> * 32, [<ore:brickStone>, <quark:rune:*>, <ore:dyePurple>], 50);

mods.botania.RuneAltar.removeRecipe(<extrabotany:material:5>);