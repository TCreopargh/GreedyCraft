/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32200
#no_fix_recipe_book

import crafttweaker.player.IPlayer;
import mods.versioner.Versioner;
import mods.versioner.Sponsors;

function isPatreon(player as IPlayer) as bool {
    return Versioner.getSponsors().isSponsor(player);
}

function getSponsorLevel(player as IPlayer) as int {
    val sponsors = Versioner.getSponsors();
    if(!isPatreon(player)) {
        return NOT_SPONSOR;
    }
    val category as string = sponsors.getPlayerCategory(player);
    if(isNull(category)) {
        return NOT_SPONSOR;
    } 
    if(category.toLowerCase() == "redstone") {
        return REDSTONE_SPONSOR;
    }
    if(category.toLowerCase() == "gold") {
        return GOLD_SPONSOR;
    }
    if(category.toLowerCase() == "diamond") {
        return DIAMOND_SPONSOR;
    }
    if(category.toLowerCase() == "emerald") {
        return EMERALD_SPONSOR;
    }
    if(category.toLowerCase() == "creator") {
        return CREATOR;
    }
    return NOT_SPONSOR;
} 

function getPlayerColor(player as IPlayer) as string {
    var level as int = getSponsorLevel(player);
    val mapping as string[int] = {
        0: "yellow", 
        1: "red", 
        2: "gold", 
        3: "aqua", 
        4: "green",
        666: "light_purple"
    };
    var ret = mapping[level];
    if(isNull(ret)) {
        ret = mapping[NOT_SPONSOR];
    }
    return ret;
}

function getPlayerColorCode(player as IPlayer) as string {
    var level as int = getSponsorLevel(player);
    val mapping as string[int] = {
        0: "§e", 
        1: "§c", 
        2: "§6", 
        3: "§b", 
        4: "§a",
        666: "§d"
    };
    var ret = mapping[level];
    if(isNull(ret)) {
        ret = mapping[NOT_SPONSOR];
    }
    return ret;
}

function getPlayerPrefixKey(player as IPlayer) as string {
    var level as int = getSponsorLevel(player);
    val mapping as string[int] = {
        0: "", 
        1: "greedycraft.event.sponsor.prefix.redstone", 
        2: "greedycraft.event.sponsor.prefix.gold", 
        3: "greedycraft.event.sponsor.prefix.diamond", 
        4: "greedycraft.event.sponsor.prefix.emerald",
        666: "greedycraft.event.sponsor.prefix.creator"
    };
    var ret = mapping[level];
    if(isNull(ret)) {
        ret = mapping[NOT_SPONSOR];
    }
    return ret;
}
