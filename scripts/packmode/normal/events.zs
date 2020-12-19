/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 100
#packmode casual adventure

events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent) {
    if(event.world.getWorldTime() as long % 60 == 0 && event.phase == "END" && event.side == "SERVER") {
        server.commandManager.executeCommand(server, "/gamerule keepInventory true");
    }
});
