/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32765
#no_fix_recipe_book
#packmode casual adventure

import crafttweaker.data.IData;

global stageMap as int[string] = {
    "getting_started" : 0,
    "twilight_forest" : 20,
    "nether" : 64,
    "abyssal_conquerer" : 128,
    "wither_slayer" : 256,
    "ender_charm" : 320,
    "hardmode" : 640,
    "wyvern" : 750,
    "awakened" : 900,
    "chaotic_dominator" : 1200,
    "chaotic" : 1400,
    "wielder_of_infinity" : 1600,
    "super_hardmode" : 1600
} as int[string];
