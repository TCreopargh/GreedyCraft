/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32200

import mods.ctintegration.thread.Thread;
import mods.ctintegration.net.Connection;

static patreonMap as string[][string] = {};

Thread.create(function() {
    var allSponsors as string = Connection.openUrl("http://json.tcreopargh.xyz/sponsors.txt").readToString();
    if(isNull(allSponsors)) {
        logger.logError("获取赞助者列表失败！");
        patreonMap["patreons"] = [] as string[];
    } else {
        patreonMap["patreons"] = allSponsors.split("\\s+");
    }

}).start();

function isPatreon(name as string) as bool {
    if(isNull(patreonMap["patreons"])) {
        return false;
    } else {
        return (patreonMap["patreons"] as string[]) has name;
    }
}
