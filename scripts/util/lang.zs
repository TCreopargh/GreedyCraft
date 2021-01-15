/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32000

function getLanguage() as string {
    var lang as string = game.localize("greedycraft.language");
    if(lang == "greedycraft.language") {
        return "en_us";
    } else {
        return lang;
    }
}
