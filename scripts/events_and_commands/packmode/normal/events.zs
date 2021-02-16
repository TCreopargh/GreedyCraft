/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 100
#no_fix_recipe_book
#packmode casual adventure

events.onWorldTick(function(event as crafttweaker.event.WorldTickEvent) {
    if (event.world.getWorldTime() as long % 100 == 0 && event.phase == "END" && event.side == "SERVER") {
        event.world.setOrCreateGameRule("keepInventory", "true");
    }
});

events.onPlayerRespawn(function(event as crafttweaker.event.PlayerRespawnEvent) {
    event.player.world.setOrCreateGameRule("keepInventory", "true");
});

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
    event.player.world.setOrCreateGameRule("keepInventory", "true");
});
