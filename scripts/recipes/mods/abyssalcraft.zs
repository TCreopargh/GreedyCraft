/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 1150

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.abyssalcraft.Transmutator;
import mods.abyssalcraft.CreationRitual;
import mods.abyssalcraft.InfusionRitual;

Transmutator.addFuel(<abyssalcraft:cingot>, 1200);
Transmutator.addFuel(<additions:greedycraft-energy_matter_core>, 600000);

InfusionRitual.addRitual("abyssalite", 0, -1, 500, false, <abyssalcraft:abyore>,  <minecraft:iron_ore>, [
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>, 
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>, 
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>, 
    <abyssalcraft:shadowshard>, 
    <abyssalcraft:shadowfragment>
] as IIngredient[], false);
game.setLocalization("ac.ritual.abyssalite", "渊素转化"); 
game.setLocalization("ac.ritual.abyssalite.desc", "使用阴影宝石将铁矿石变成渊素矿石！");

InfusionRitual.removeRitual(<abyssalcraft:psdl>);
InfusionRitual.addRitual("dreadland_artifact", 1, -1, 10000, true, <abyssalcraft:psdl>,  <abyssalcraft:ingotblock:1>, [<abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>, 
    <abyssalcraft:powerstonetracker>
] as IIngredient[], false);
