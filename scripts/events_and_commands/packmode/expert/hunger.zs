/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#packmode expert

import crafttweaker.player.IFoodStats;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.server.IServer;

import mods.ctutils.utils.Math;
import mods.hungertweaker.SaturatedRegen;
import mods.hungertweaker.Starvation;
import mods.hungertweaker.Exhaustion;
import mods.hungertweaker.events.HungerEvents;
import mods.hungertweaker.Regen;
import mods.hungertweaker.Hunger;

Regen.setInterval("x*2.5");
SaturatedRegen.setInterval("x*2.5");
Starvation.setDamage(4);
Exhaustion.setMaxExhaustionLevel("x*0.4");

// Decreasing hunger consumption at lower hunger values
HungerEvents.onExhausted(function(event as mods.hungertweaker.events.ExhaustedEvent) {
    if((Math.random() * 10000) < ((20 - event.player.foodStats.foodLevel) * 400)) {
        event.deltaHunger = 0;
        event.deltaSaturation = 0;
        
    }else if(event.player.foodStats.foodLevel <= 6) {
        event.player.server.commandManager.executeCommand(event.player.server, "/title " + event.player.name + " actionbar [\"\",{\"text\":\"" + game.localize("greedycraft.event.hunger.warning") + "\",\"color\":\"red\"},{\"text\":\": " + game.localize("greedycraft.event.hunger.low") + "\",\"color\":\"yellow\"}]");
    } 
});
//Powered by TCreopargh
