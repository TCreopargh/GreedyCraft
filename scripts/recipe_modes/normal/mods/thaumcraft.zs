/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 30
#packmode casual adventure
import thaumcraft.aspect.CTAspect;

mods.thaumcraft.Infusion.registerRecipe("energy_matter_core", "", <additions:greedycraft-energy_matter_core>, 20, [<aspect:permutatio> * 50, <aspect:alienis> * 50, <aspect:praecantatio> * 50, <aspect:alkimia> * 50, <aspect:auram> * 50, <aspect:desiderium> * 50], <projecte:item.pe_philosophers_stone>, [<mekanism:controlcircuit:3>, <projecte:item.pe_matter:1>, <thaumcraft:causality_collapser>, <appliedenergistics2:material:6>, <tconevo:material>, <abyssalcraft:transmutationgem>, <abyssalcraft:oc>, <ore:ingotInfernium>]);

mods.thaumcraft.Infusion.registerRecipe("wand_blueprint", "", <additions:greedycraft-blueprint_wand>, 5, [<aspect:praecantatio> * 10, <aspect:instrumentum> * 10, <aspect:aversio> * 10, <aspect:auram> * 10], <additions:greedycraft-blueprint>, [<thaumcraft:curio:1>, <thaumcraft:ingot>, <thaumcraft:mechanism_simple>, <thaumcraft:vis_resonator>]);