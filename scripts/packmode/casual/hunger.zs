/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#packmode casual
import mods.hungertweaker.Starvation;
import mods.hungertweaker.Exhaustion;
import mods.hungertweaker.events.HungerEvents;
import crafttweaker.player.IFoodStats;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.IPlayerEvent;
import mods.ctutils.utils.Math;
import crafttweaker.server.IServer;

Starvation.setDamage(2);
Exhaustion.setMaxExhaustionLevel("x*1.8");

// Decreasing hunger consumption at lower hunger values
HungerEvents.onExhausted(function(event as mods.hungertweaker.events.ExhaustedEvent) {
    if((Math.random()*10000)<((20-event.player.foodStats.foodLevel)*400)) {
        event.deltaHunger = 0;
        event.deltaSaturation = 0;
        
    }else if(event.player.foodStats.foodLevel <= 6) {
        event.player.server.commandManager.executeCommand(event.player.server, "/title " + event.player.name + " actionbar [\"\",{\"text\":\"\u8b66\u544a\",\"color\":\"red\"},{\"text\":\": \u9965\u997f\u503c\u8f83\u4f4e\",\"color\":\"yellow\"}]\"");
        //event.player.executeCommand("/playsound entity.item.pickup neutral @p");
    } 
});
//Powered by TCreopargh
