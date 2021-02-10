/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32767
#no_fix_recipe_book

global HARDMODE_MIN_ROLLS as int = 2;
global HARDMODE_MAX_ROLLS as int = 3;

// If you want to set up a server, or you just want to use a different server-side language used in scripts, change this to your server's desired language
// If you don't set this, default language will be set depending on your version group
// Version group 0 = "zh_cn", version group 1 = "en_us"
// If this is set, the version group will be ignored and default lauguage will be this instead
// THIS IS THE LANGUAGE USED BY WELCOME QUOTES / GAME STAGES DESCRIPTIONS ETC. NOT THE GAME'S LANGUAGE.
// IF YOU DON'T USE A SUPPORTED LANGUAGE (LISTED BELOW), DO NOT SET THIS.
// Note that only a few languages are supported, if you don't set this to a supported language it will be forced to en_us

global DEFAULT_LANGUAGE as string = "";

// Only these languages are supported!

global SUPPORTED_LANGUAGES as string[] = [
    "en_us",
    "zh_cn"
];
