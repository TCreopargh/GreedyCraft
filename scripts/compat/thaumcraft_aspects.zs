 /* 
  *  This script is created for the GreedyCraft modpack by TCreopargh.
  *  You may NOT use this script in any other publicly distributed modpack without my permission.
  */

#priority 2000
#no_fix_recipe_book

import thaumcraft.aspect.CTAspect;
import thaumcraft.aspect.CTAspectStack;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

var aspectMap as CTAspectStack[][IIngredient] = {
    <minecraft:wooden_axe> : [<aspect:instrumentum> * 5, <aspect:herba> * 5],
    <minecraft:wooden_pickaxe> : [<aspect:instrumentum> * 5, <aspect:herba> * 5],
    <minecraft:wooden_sword> : [<aspect:instrumentum> * 5, <aspect:herba> * 5],
    <minecraft:wooden_hoe> : [<aspect:instrumentum> * 5, <aspect:herba> * 5],
    <minecraft:wooden_shovel> : [<aspect:instrumentum> * 5, <aspect:herba> * 5],
    <minecraft:stone_axe> : [<aspect:instrumentum> * 12, <aspect:herba> * 12],
    <minecraft:stone_pickaxe> : [<aspect:instrumentum> * 12, <aspect:herba> * 12],
    <minecraft:stone_sword> : [<aspect:instrumentum> * 12, <aspect:herba> * 12],
    <minecraft:stone_hoe> : [<aspect:instrumentum> * 12, <aspect:herba> * 12],
    <minecraft:stone_shovel> : [<aspect:instrumentum> * 12, <aspect:herba> * 12],
    <minecraft:iron_axe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:iron_pickaxe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:iron_sword> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:iron_hoe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:iron_shovel> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:golden_axe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:golden_pickaxe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:golden_sword> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:golden_hoe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:golden_shovel> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:metallum> * 18],
    <minecraft:diamond_axe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18],
    <minecraft:diamond_pickaxe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18],
    <minecraft:diamond_sword> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18],
    <minecraft:diamond_hoe> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18],
    <minecraft:diamond_shovel> : [<aspect:instrumentum> * 18, <aspect:herba> * 8, <aspect:vitreus> * 18],
    <minecraft:enchanted_book> : [<aspect:praecantatio> * 30],
    <extrautils2:ingredients:17> : [<aspect:infernum> * 30],
    <extrautils2:ingredients:11> : [<aspect:infernum> * 10],
    <minecraft:stick> : [<aspect:instrumentum> * 5, <aspect:herba> * 2],
    <minecraft:water_bucket> : [<aspect:aqua> * 25, <aspect:fluctus> * 10],
    <chisel:futura:3> : [<aspect:fluctus> * 50],
    <chisel:futura:5> : [<aspect:fluctus> * 50],
    <chisel:sandstone-scribbles:9> : [<aspect:fluctus> * 30],
    <chisel:sandstonered-scribbles:9> : [<aspect:fluctus> * 30],
    <additions:greedycraft-true_eye_of_ender> : [<aspect:visum> * 120],
    <minecraft:lever> : [<aspect:imperium> * 25],
    <betternether:block_eyeball> : [<aspect:visum> * 50],
    <draconicevolution:draconium_ingot> : [<aspect:draco> * 50],
    <tconevo:metal> : [<aspect:draco> * 100],
    <tconevo:metal:5> : [<aspect:draco> * 200],
    <tconevo:metal:10> : [<aspect:draco> * 200, <aspect:caeles> * 100, <aspect:perditio> * 100],
    <minecraft:noteblock> : [<aspect:sonus> * 30],
    <minecraft:jukebox> : [<aspect:sonus> * 40],
    <ambience:speaker> : [<aspect:sonus> * 40],
    <ambience:soundnizer> : [<aspect:sonus> * 30],
    <additions:cryonium_ingot> : [<aspect:gelum> * 100],
    <additions:infernium_ingot> : [<aspect:ignis> * 100, <aspect:sol> * 50],
    <additions:shadowium_ingot> : [<aspect:tenebrae> * 50, <aspect:vacuos> * 20],
    <additions:aeroite_ingot> : [<aspect:ventus> * 100],
    <additions:aqualite_ingot> : [<aspect:aqua> * 100, <aspect:fluctus> * 50],
    <additions:terra_alloy_ingot> : [<aspect:terra> * 200, <aspect:aqua> * 100, <aspect:ignis> * 100, <aspect:herba> * 100],
    <additions:cytosinite_ingot> : [<aspect:herba> * 100],
    <additions:crimsonite_ingot> : [<aspect:victus> * 100],
    <additions:protonium_ingot> : [<aspect:ordo> * 100],
    <additions:electronium_ingot> : [<aspect:lux> * 100],
    <nyx:meteor_ingot> : [<aspect:visum> * 100, <aspect:alienis> * 50],
    <additions:greedycraft-experience_ingot> : [<aspect:praecantatio> * 100],
    <additions:titanium_ingot> : [<aspect:metallum> * 100],
    <aether_legacy:ambrosium_shard> : [<aspect:caeles> * 20],
    <aether_legacy:zanite_gemstone> : [<aspect:caeles> * 30],
    <aether_legacy:golden_amber> : [<aspect:caeles> * 20],
    <tinkersaether:valkyrie_ingot> : [<aspect:caeles> * 20],
    <additions:asgardium_ingot> : [<aspect:caeles> * 50, <aspect:lux> * 20],
    <minecraft:clock> : [<aspect:metallum> * 20, <aspect:machina> * 10, <aspect:tempus> * 20],
    <minecraft:repeater> : [<aspect:metallum> * 10, <aspect:machina> * 20, <aspect:tempus> * 10]
};

for ingredient in aspectMap {
    var aspects as CTAspectStack[] = aspectMap[ingredient];
    for item in ingredient.items {
        item.setAspects(aspects);
    }
}
