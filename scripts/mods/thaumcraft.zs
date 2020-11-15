 /* 
  *  This script is created for the GreedyCraft modpack by TCreopargh.
  *  You may NOT use this script in any other publicly distributed modpack without my permission.
  */

#priority 3000

import thaumcraft.aspect.CTAspect;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.thaumcraft.Infusion;
import mods.thaumcraft.ArcaneWorkbench;

var removedRecipes as IItemStack[] = [
    <thaumadditions:adaminite_hood>,
    <thaumadditions:adaminite_robe>,
    <thaumadditions:adaminite_belt>,
    <thaumadditions:adaminite_boots>,
    <thaumadditions:mithminite_hood>,
    <thaumadditions:mithminite_robe>,
    <thaumadditions:mithminite_belt>,
    <thaumadditions:mithminite_boots>,
    <thaumcraft:fortress_helm>,
    <thaumcraft:fortress_chest>,
    <thaumcraft:fortress_legs>,
    <thaumcraft:void_robe_helm>,
    <thaumcraft:void_robe_chest>,
    <thaumcraft:void_robe_legs>,
    <thaumadditions:adaminite_sword>,
    <thaumadditions:mithminite_scythe>,
    <thaumadditions:mithminite_blade>,
    <thaumadditions:mithminite_handle>,
    <thaumadditions:adaminite_fabric>,
    <thaumadditions:mithminite_fabric>,
    <thaumadditions:entity_summoner>,
    <thaumadditions:dna_sample>
];

<minecraft:wooden_axe>.setAspects(<aspect:instrumentum> * 5, <aspect:herba> * 5);
<minecraft:wooden_pickaxe>.setAspects(<aspect:instrumentum> * 5, <aspect:herba> * 5);
<minecraft:wooden_sword>.setAspects(<aspect:instrumentum> * 5, <aspect:herba> * 5);
<minecraft:wooden_hoe>.setAspects(<aspect:instrumentum> * 5, <aspect:herba> * 5);
<minecraft:wooden_shovel>.setAspects(<aspect:instrumentum> * 5, <aspect:herba> * 5);
<minecraft:stone_axe>.setAspects(<aspect:instrumentum> * 12, <aspect:herba> * 12);
<minecraft:stone_pickaxe>.setAspects(<aspect:instrumentum> * 12, <aspect:herba> * 12);
<minecraft:stone_sword>.setAspects(<aspect:instrumentum> * 12, <aspect:herba> * 12);
<minecraft:stone_hoe>.setAspects(<aspect:instrumentum> * 12, <aspect:herba> * 12);
<minecraft:stone_shovel>.setAspects(<aspect:instrumentum> * 12, <aspect:herba> * 12);
<minecraft:iron_axe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:iron_pickaxe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:iron_sword>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:iron_hoe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:iron_shovel>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:golden_axe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:golden_pickaxe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:golden_sword>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:golden_hoe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:golden_shovel>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18);
<minecraft:diamond_axe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18);
<minecraft:diamond_pickaxe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18);
<minecraft:diamond_sword>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18);
<minecraft:diamond_hoe>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18);
<minecraft:diamond_shovel>.setAspects(<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18);
<minecraft:enchanted_book>.setAspects(<aspect:praecantatio> * 30);
<extrautils2:ingredients:17>.setAspects(<aspect:infernum> * 30);
<extrautils2:ingredients:11>.setAspects(<aspect:infernum> * 10);
<minecraft:stick>.setAspects(<aspect:instrumentum> * 5, <aspect:herba> * 2);
<minecraft:water_bucket>.setAspects(<aspect:aqua> * 25, <aspect:fluctus> * 10);
<chisel:futura:3>.setAspects(<aspect:fluctus> * 50);
<chisel:futura:5>.setAspects(<aspect:fluctus> * 50);
<chisel:sandstone-scribbles:9>.setAspects(<aspect:fluctus> * 30);
<chisel:sandstonered-scribbles:9>.setAspects(<aspect:fluctus> * 30);
<additions:greedycraft-true_eye_of_ender>.setAspects(<aspect:visum> * 120);
<minecraft:lever>.setAspects(<aspect:imperium> * 25);
<betternether:block_eyeball>.setAspects(<aspect:visum> * 50);
<draconicevolution:draconium_ingot>.setAspects(<aspect:draco> * 50);
<tconevo:metal>.setAspects(<aspect:draco> * 100);
<tconevo:metal:5>.setAspects(<aspect:draco> * 200);
<tconevo:metal:10>.setAspects(<aspect:draco> * 200, <aspect:caeles> * 100, <aspect:perditio> * 100);
<minecraft:noteblock>.setAspects(<aspect:sonus> * 30);
<minecraft:jukebox>.setAspects(<aspect:sonus> * 40);
<ambience:speaker>.setAspects(<aspect:sonus> * 40);
<ambience:soundnizer>.setAspects(<aspect:sonus> * 30);
<additions:cryonium_ingot>.setAspects(<aspect:gelum> * 100);
<additions:infernium_ingot>.setAspects(<aspect:ignis> * 100, <aspect:sol> * 50);
<additions:shadowium_ingot>.setAspects(<aspect:tenebrae> * 50, <aspect:vacuos> * 20);
<additions:aeroite_ingot>.setAspects(<aspect:ventus> * 100);
<additions:aqualite_ingot>.setAspects(<aspect:aqua> * 100, <aspect:fluctus> * 50);
<additions:terra_alloy_ingot>.setAspects(<aspect:terra> * 200, <aspect:aqua> * 100, <aspect:ignis> * 100, <aspect:herba> * 100);
<additions:cytosinite_ingot>.setAspects(<aspect:herba> * 100);
<additions:crimsonite_ingot>.setAspects(<aspect:victus> * 100);
<additions:protonium_ingot>.setAspects(<aspect:ordo> * 100);
<additions:electronium_ingot>.setAspects(<aspect:lux> * 100);
<nyx:meteor_ingot>.setAspects(<aspect:visum> * 100, <aspect:alienis> * 50);
<additions:greedycraft-experience_ingot>.setAspects(<aspect:praecantatio> * 100);
<additions:titanium_ingot>.setAspects(<aspect:metallum> * 100);
<aether_legacy:ambrosium_shard>.setAspects(<aspect:caeles> * 20);
<aether_legacy:zanite_gemstone>.setAspects(<aspect:caeles> * 30);
<aether_legacy:golden_amber>.setAspects(<aspect:caeles> * 20);
<tinkersaether:valkyrie_ingot>.setAspects(<aspect:caeles> * 20);
<additions:asgardium_ingot>.setAspects(<aspect:caeles> * 50, <aspect:lux> * 20);

for removedItem in removedRecipes {
    Infusion.removeRecipe(removedItem);
    ArcaneWorkbench.removeRecipe(removedItem);
}
