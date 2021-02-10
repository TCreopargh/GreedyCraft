/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 30
#no_fix_recipe_book
#packmode casual adventure

import thaumcraft.aspect.CTAspect;

import mods.thaumcraft.Infusion;

Infusion.registerRecipe("energy_matter_core", "", <additions:greedycraft-energy_matter_core>, 16, [<aspect:permutatio> * 50, <aspect:alienis> * 50, <aspect:praecantatio> * 50, <aspect:alkimia> * 50, <aspect:auram> * 50, <aspect:desiderium> * 50], <projecte:item.pe_philosophers_stone>, [<mekanism:controlcircuit:3>, <projecte:item.pe_matter:1>, <thaumcraft:causality_collapser>, <appliedenergistics2:material:47>, <additions:greedycraft-matter_block>, <abyssalcraft:transmutationgem>, <abyssalcraft:oc>, <ore:ingotChromasteel>]);

Infusion.registerRecipe("wand_blueprint", "", <additions:greedycraft-blueprint_wand>, 5, [<aspect:praecantatio> * 10, <aspect:instrumentum> * 10, <aspect:aversio> * 10, <aspect:auram> * 10], <additions:greedycraft-blueprint>, [<thaumcraft:curio:1>, <thaumcraft:ingot>, <thaumcraft:mechanism_simple>, <thaumcraft:vis_resonator>]);

Infusion.registerRecipe("crimsonite_ingot", "", <additions:greedycraft-crimsonite_block>, 6, [<aspect:victus> * 10, <aspect:mortuus> * 10, <aspect:aversio> * 10, <aspect:desiderium> * 10], <ore:ingotBloodInfusedIron>, [<bloodarsenal:blood_diamond:3>, <ore:ingotDurasteel>, <bloodarsenal:blood_diamond:3>, <ore:ingotThaumium>, <bloodarsenal:blood_diamond:3>, <ore:ingotDurasteel>, <bloodarsenal:blood_diamond:3>, <ore:ingotThaumium>]);
