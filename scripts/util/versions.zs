/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32400
#no_fix_recipe_book

import mods.versioner.Versioner;

function getVersionName() as string {
    return Versioner.getCurrentVersion().getVersionName();
}

function getVersionCode() as int {
    return Versioner.getCurrentVersion().getVersionCode();
}

function getVersionGroup() as int {
    if(Versioner.getCurrentVersion().hasVariable("versionGroup")) {
        return (Versioner.getCurrentVersion().getVariable("versionGroup").asLong()) as int;
    } else {
        return -1 as int;
    }
}

function isServerPack() as bool {
    return !(loadedMods.contains("resourceloader")) as bool;
}
