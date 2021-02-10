/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32200
#no_fix_recipe_book

function isPatreon(name as string) as bool {
    if(isNull(patreonList["patreons"])) {
        return false;
    } else {
        return (patreonList["patreons"] as string[]) has name;
    }
}
