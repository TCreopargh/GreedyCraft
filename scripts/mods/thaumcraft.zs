#disable_search_tree
#priority 3000
import thaumcraft.aspect.CTAspect;

<minecraft:wooden_axe>.setAspects(<aspect:instrumentum>*5, <aspect:herba>*5);
<minecraft:wooden_pickaxe>.setAspects(<aspect:instrumentum>*5, <aspect:herba>*5);
<minecraft:wooden_sword>.setAspects(<aspect:instrumentum>*5, <aspect:herba>*5);
<minecraft:wooden_hoe>.setAspects(<aspect:instrumentum>*5, <aspect:herba>*5);
<minecraft:wooden_shovel>.setAspects(<aspect:instrumentum>*5, <aspect:herba>*5);
<minecraft:stone_axe>.setAspects(<aspect:instrumentum>*12, <aspect:herba>*12);
<minecraft:stone_pickaxe>.setAspects(<aspect:instrumentum>*12, <aspect:herba>*12);
<minecraft:stone_sword>.setAspects(<aspect:instrumentum>*12, <aspect:herba>*12);
<minecraft:stone_hoe>.setAspects(<aspect:instrumentum>*12, <aspect:herba>*12);
<minecraft:stone_shovel>.setAspects(<aspect:instrumentum>*12, <aspect:herba>*12);
<minecraft:iron_axe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:iron_pickaxe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:iron_sword>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:iron_hoe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:iron_shovel>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:golden_axe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:golden_pickaxe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:golden_sword>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:golden_hoe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:golden_shovel>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:metallum>*18);
<minecraft:diamond_axe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:vitreus>*18);
<minecraft:diamond_pickaxe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:vitreus>*18);
<minecraft:diamond_sword>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:vitreus>*18);
<minecraft:diamond_hoe>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:vitreus>*18);
<minecraft:diamond_shovel>.setAspects(<aspect:instrumentum>*18, <aspect:herba>*8, <aspect:vitreus>*18);
<minecraft:enchanted_book>.setAspects(<aspect:praecantatio>*30);

mods.thaumcraft.Infusion.registerRecipe("energy_matter_core", "", <additions:greedycraft-energy_matter_core>, 20, [<aspect:permutatio> * 50, <aspect:alienis> * 50, <aspect:praecantatio> * 50, <aspect:alkimia> * 50, <aspect:auram> * 50, <aspect:desiderium> * 50], <projecte:item.pe_philosophers_stone>, [<mekanism:controlcircuit:3>, <projecte:item.pe_matter:1>, <thaumcraft:causality_collapser>, <thaumcraft:salis_mundus>, <tconevo:material>, <abyssalcraft:transmutationgem>, <abyssalcraft:oc>, <ore:ingotInfernium>]);

mods.thaumcraft.Infusion.registerRecipe("wand_blueprint", "", <additions:greedycraft-blueprint_wand>, 5, [<aspect:praecantatio> * 10, <aspect:instrumentum> * 10, <aspect:aversio> * 10, <aspect:auram> * 10], <additions:greedycraft-blueprint>, [<thaumcraft:curio:1>, <thaumcraft:ingot>, <thaumcraft:mechanism_simple>, <thaumcraft:vis_resonator>]);