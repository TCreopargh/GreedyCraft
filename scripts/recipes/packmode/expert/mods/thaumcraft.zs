/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 20
#packmode expert

import thaumcraft.aspect.CTAspect;

import mods.thaumcraft.Infusion;

Infusion.registerRecipe("energy_matter_core", "", <additions:greedycraft-energy_matter_core>, 24, [<aspect:permutatio> * 100, <aspect:alienis> * 100, <aspect:praecantatio> * 100, <aspect:alkimia> * 100, <aspect:auram> * 100, <aspect:desiderium> * 100], <projecte:item.pe_philosophers_stone>, [<mekanism:controlcircuit:3>, <projecte:item.pe_matter:1>, <thaumcraft:causality_collapser>, <appliedenergistics2:material:47>, <additions:greedycraft-matter_block>, <abyssalcraft:transmutationgem>, <abyssalcraft:oc>, <ore:ingotChaoticMetal>]);

Infusion.registerRecipe("wand_blueprint", "", <additions:greedycraft-blueprint_wand>, 24, [<aspect:praecantatio> * 40, <aspect:instrumentum> * 40, <aspect:aversio> * 40, <aspect:auram> * 40], <additions:greedycraft-blueprint>, [<ore:ingotMithrillium>, <ore:ingotPrimordial>, <ore:ingotVoid>, <ore:ingotAdaminite>]);

Infusion.registerRecipe("crimsonite_ingot", "", <additions:greedycraft-crimsonite_block>, 8, [<aspect:victus> * 10, <aspect:mortuus> * 10, <aspect:aversio> * 10, <aspect:desiderium> * 10], <ore:ingotBloodInfusedIron>, [<bloodarsenal:blood_diamond:3>, <ore:ingotDurasteel>, <bloodarsenal:blood_diamond:3>, <ore:ingotThaumium>, <bloodarsenal:blood_diamond:3>, <ore:ingotDurasteel>, <bloodarsenal:blood_diamond:3>, <ore:ingotThaumium>]);
