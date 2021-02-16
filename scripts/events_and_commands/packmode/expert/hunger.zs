/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 80
#no_fix_recipe_book
#packmode expert

import crafttweaker.player.IFoodStats;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.server.IServer;
import crafttweaker.text.ITextComponent;

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
Exhaustion.setMaxExhaustionLevel("x*0.5");

// Decreasing hunger consumption at lower hunger values
HungerEvents.onExhausted(function(event as mods.hungertweaker.events.ExhaustedEvent) {
    if ((Math.random() * 10000) < ((20 - event.player.foodStats.foodLevel) * 400)) {
        event.deltaHunger = 0;
        event.deltaSaturation = 0;
        
    }else if (event.player.foodStats.foodLevel <= 6) {
        event.player.sendRichTextStatusMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.hunger.warning", color: "red"}, {"text":": "}, {translate: "greedycraft.event.hunger.low", color: "yellow"}]), true);
    } 
});
//Powered by TCreopargh
