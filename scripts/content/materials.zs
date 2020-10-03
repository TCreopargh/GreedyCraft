#priority 2200
#disable_search_tree
#loader contenttweaker 
#modloaded tconstruct
#modloaded plustic
#modloaded tconevo
#modloaded mysticalagriculture

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.Color;

val cheese = mods.contenttweaker.tconstruct.MaterialBuilder.create("cheese");
cheese.color = Color.fromHex("ffeb3b").getIntColor();
cheese.craftable = true;
cheese.castable = true;
cheese.representativeItem = <item:harvestcraft:cheeseitem>;
cheese.liquid = <liquid:milk>;
cheese.addItem(<ore:foodCheese>);
cheese.localizedName = "奶酪";
cheese.addHeadMaterialStats(200, 3.5, 3, 0);
cheese.addHandleMaterialStats(0.2, 70);
cheese.addExtraMaterialStats(-30);
cheese.addBowMaterialStats(1.2, 1, 0.2);
cheese.addMaterialTrait("squeaky", "head");
cheese.addMaterialTrait("tasty", "head");
cheese.addMaterialTrait("tasty", "handle");
cheese.addMaterialTrait("tasty", "extra");
cheese.addProjectileMaterialStats();
cheese.register();

val molten_fusion_matrix = mods.contenttweaker.VanillaFactory.createFluid("fusion_matrix", Color.fromHex("4a148c").getIntColor());
molten_fusion_matrix.material = <blockmaterial:lava>;
molten_fusion_matrix.viscosity = 2000;
molten_fusion_matrix.rarity = "EPIC";
molten_fusion_matrix.colorize = true;
molten_fusion_matrix.temperature = 2800;
molten_fusion_matrix.luminosity = 15;
molten_fusion_matrix.color = Color.fromHex("4a148c").getIntColor();
molten_fusion_matrix.stillLocation = "base:fluids/molten";
molten_fusion_matrix.flowingLocation = "base:fluids/molten_flowing";
molten_fusion_matrix.register();
game.setLocalization("fluid.fusion_matrix", "熔融聚合矩阵");

val molten_insanium = mods.contenttweaker.VanillaFactory.createFluid("insanium", Color.fromHex("aa00ff").getIntColor());
molten_insanium.material = <blockmaterial:lava>;
molten_insanium.viscosity = 2000;
molten_insanium.rarity = "EPIC";
molten_insanium.colorize = true;
molten_insanium.luminosity = 10;
molten_insanium.temperature = 1800;
molten_insanium.color = Color.fromHex("aa00ff").getIntColor();
molten_insanium.stillLocation = "base:fluids/molten";
molten_insanium.flowingLocation = "base:fluids/molten_flowing";
molten_insanium.register();
game.setLocalization("fluid.insanium", "熔融究极精华");

val insanium = mods.contenttweaker.tconstruct.MaterialBuilder.create("insanium");
insanium.color = Color.fromHex("aa00ff").getIntColor();
insanium.craftable = false;
insanium.castable = true;
insanium.representativeItem = <item:mysticalagradditions:insanium:2>;
insanium.liquid = <liquid:insanium>;
insanium.localizedName = "究极精华";
insanium.addHeadMaterialStats(18200, 29.6, 22.2, 6);
insanium.addHandleMaterialStats(1.5, 720);
insanium.addExtraMaterialStats(1200);
insanium.addBowMaterialStats(0.68, 2.5, 8.2);
insanium.addArrowShaftMaterialStats(2.25, 10);
insanium.addProjectileMaterialStats();
insanium.register();

val fusion_matrix = mods.contenttweaker.tconstruct.MaterialBuilder.create("fusion_matrix");
fusion_matrix.color = Color.fromHex("4a148c").getIntColor(); 
fusion_matrix.craftable = false;
fusion_matrix.castable = true;
fusion_matrix.representativeItem = <item:tconevo:material:0>;
fusion_matrix.liquid = <liquid:fusion_matrix>;
fusion_matrix.localizedName = "聚合矩阵";
fusion_matrix.addHeadMaterialStats(12000, 19.6, 18.9, 8);
fusion_matrix.addHandleMaterialStats(1.8, 625);
fusion_matrix.addExtraMaterialStats(820);
fusion_matrix.addMaterialTrait("dense", "head");
fusion_matrix.addMaterialTrait("dense", "handle");
fusion_matrix.addMaterialTrait("dense", "extra");
fusion_matrix.addBowMaterialStats(1.2, 1.2, 9.6);
fusion_matrix.addArrowShaftMaterialStats(1.75, 40);
fusion_matrix.addProjectileMaterialStats();
fusion_matrix.register();

val experience = mods.contenttweaker.tconstruct.MaterialBuilder.create("experience");
experience.color = Color.fromHex("76ff03").getIntColor();
experience.craftable = false;
experience.castable = true;
experience.representativeItem = <item:actuallyadditions:item_solidified_experience>;
experience.addItem(<item:actuallyadditions:item_solidified_experience>);
experience.liquid = <liquid:experience>;
experience.localizedName = "知识精华";
experience.addHeadMaterialStats(400, 4.0, 4.2, 2);
experience.addHandleMaterialStats(1.2, 80);
experience.addExtraMaterialStats(60);
experience.addBowMaterialStats(0.6, 1.1, 1.0);
experience.addProjectileMaterialStats();
experience.register();

val infernium = mods.contenttweaker.tconstruct.MaterialBuilder.create("infernium");
infernium.color = Color.fromHex("ff4000").getIntColor(); 
infernium.craftable = false;
infernium.castable = true;
infernium.representativeItem = <item:additions:infernium_ingot>;
infernium.liquid = <liquid:infernium>;
infernium.localizedName = "永燃";
infernium.addHeadMaterialStats(16000, 24.6, 25.7, 9);
infernium.addHandleMaterialStats(2.2, 800);
infernium.addExtraMaterialStats(1024);
infernium.addMaterialTrait("flammable", "head");
infernium.addMaterialTrait("flammable", "handle");
infernium.addMaterialTrait("flammable", "extra");
infernium.addBowMaterialStats(1.1, 1.2, 12.4);
infernium.addArrowShaftMaterialStats(2.0, 30);
infernium.addProjectileMaterialStats();
infernium.register();

game.setLocalization("jaopca.entry.Infernium", "永燃");

val titanium = mods.contenttweaker.tconstruct.MaterialBuilder.create("titanium");
titanium.color = Color.fromHex("adb0b9").getIntColor(); 
titanium.craftable = false;
titanium.castable = true;
titanium.representativeItem = <item:additions:titanium_ingot>;
titanium.liquid = <liquid:titanium>;
titanium.localizedName = "钛金";
titanium.addHeadMaterialStats(24000, 32.6, 34.2, 10);
titanium.addHandleMaterialStats(2.8, 1800);
titanium.addExtraMaterialStats(2500);
titanium.addMaterialTrait("duritos", "head");
titanium.addMaterialTrait("duritos", "handle");
titanium.addMaterialTrait("duritos", "extra");
titanium.addBowMaterialStats(1.2, 1.3, 23.3);
titanium.addArrowShaftMaterialStats(2.4, 32);
titanium.addProjectileMaterialStats();
titanium.register();

game.setLocalization("jaopca.entry.Titanium", "钛金");
game.setLocalization("jaopca.entry.LiquifiedCoralium", "精炼珊瑚");

/* JAOPCA Somehow adds this
val molten_cryonium = mods.contenttweaker.VanillaFactory.createFluid("cryonium", Color.fromHex("40c3ff").getIntColor());
molten_cryonium.material = <blockmaterial:lava>;
molten_cryonium.viscosity = 2400;
molten_cryonium.rarity = "EPIC";
molten_cryonium.colorize = true;
molten_cryonium.temperature = 4;
molten_cryonium.luminosity = 10;
molten_cryonium.color = Color.fromHex("40c3ff").getIntColor();
molten_cryonium.register();
game.setLocalization("fluid.cryonium", "熔融极寒");
*/

val cryonium = mods.contenttweaker.tconstruct.MaterialBuilder.create("cryonium");
cryonium.color = Color.fromHex("40c3ff").getIntColor(); 
cryonium.craftable = false;
cryonium.castable = true;
cryonium.representativeItem = <item:additions:cryonium_ingot>;
cryonium.liquid = <liquid:cryonium>;
cryonium.localizedName = "极寒";
cryonium.addHeadMaterialStats(8000, 17.6, 16.8, 7);
cryonium.addHandleMaterialStats(1.6, 800);
cryonium.addExtraMaterialStats(800);
cryonium.addMaterialTrait("duritos", "head");
cryonium.addMaterialTrait("duritos", "handle");
cryonium.addMaterialTrait("duritos", "extra");
cryonium.addBowMaterialStats(1.2, 1.3, 8.9);
cryonium.addArrowShaftMaterialStats(1.5, 32);
cryonium.addProjectileMaterialStats();
cryonium.register();
game.setLocalization("jaopca.entry.Cryonium", "极寒");
game.setLocalization("jaopca.entry.Experience", "知识精华");

val alubrass = mods.contenttweaker.tconstruct.MaterialBuilder.create("alubrass");
alubrass.color = Color.fromHex("fbc02d").getIntColor(); 
alubrass.craftable = false;
alubrass.castable = true;
alubrass.representativeItem = <item:tconstruct:ingots:5>;
alubrass.liquid = <liquid:alubrass>;
alubrass.localizedName = "铝黄铜";
alubrass.addHeadMaterialStats(200, 13.5, 5.0, 1);
alubrass.addHandleMaterialStats(1.2, 30);
alubrass.addExtraMaterialStats(850);
alubrass.addMaterialTrait("duritos", "head");
alubrass.addMaterialTrait("duritos", "handle");
alubrass.addMaterialTrait("duritos", "extra");
alubrass.addBowMaterialStats(1.65, 1.3, 6.2);
alubrass.addProjectileMaterialStats();
alubrass.register();

val diamond = mods.contenttweaker.tconstruct.MaterialBuilder.create("diamond");
diamond.color = Color.fromHex("18ffff").getIntColor(); 
diamond.craftable = true;
diamond.castable = false;
diamond.representativeItem = <item:minecraft:diamond>;
diamond.addItem(<ore:gemDiamond>);
diamond.localizedName = "钻石";
diamond.addHeadMaterialStats(800, 14.5, 5.7, 3);
diamond.addHandleMaterialStats(1.3, 600);
diamond.addExtraMaterialStats(1250);
diamond.addMaterialTrait("duritos", "head");
diamond.addMaterialTrait("duritos", "handle");
diamond.addMaterialTrait("duritos", "extra");
diamond.addBowMaterialStats(1.65, 1.2, 7.0);
diamond.addProjectileMaterialStats();
diamond.register();

val gold = mods.contenttweaker.tconstruct.MaterialBuilder.create("gold");
gold.color = Color.fromHex("fdd835").getIntColor(); 
gold.craftable = false;
gold.castable = true;
gold.representativeItem = <item:minecraft:gold_ingot>;
gold.liquid = <liquid:gold>;
gold.localizedName = "金";
gold.addHeadMaterialStats(20, 20.5, 6.6, 2);
gold.addHandleMaterialStats(0.2, 30);
gold.addExtraMaterialStats(40);
gold.addMaterialTrait("duritos", "head");
gold.addMaterialTrait("duritos", "handle");
gold.addMaterialTrait("duritos", "extra");
gold.addBowMaterialStats(1.65, 1.3, 6.2);
gold.addProjectileMaterialStats();
gold.register();

val coal = mods.contenttweaker.tconstruct.MaterialBuilder.create("coal");
coal.color = Color.fromHex("212121").getIntColor(); 
coal.craftable = true;
coal.castable = false;
coal.representativeItem = <item:minecraft:coal>;
coal.addItem(<ore:coal>);
coal.localizedName = "煤";
coal.addHeadMaterialStats(10, 3.5, 1.2, 0);
coal.addHandleMaterialStats(0.1, 12);
coal.addExtraMaterialStats(15);
coal.addBowMaterialStats(1.8, 1.0, 0.1);
coal.addMaterialTrait("duritos", "head");
coal.addMaterialTrait("duritos", "handle");
coal.addMaterialTrait("duritos", "extra");
coal.addProjectileMaterialStats();
coal.register();

val molten_ethaxium = mods.contenttweaker.VanillaFactory.createFluid("ethaxium", Color.fromHex("5f7570").getIntColor());
molten_ethaxium.material = <blockmaterial:lava>;
molten_ethaxium.viscosity = 2400;
molten_ethaxium.rarity = "EPIC";
molten_ethaxium.colorize = true;
molten_ethaxium.temperature = 4;
molten_ethaxium.luminosity = 10;
molten_ethaxium.color = Color.fromHex("5f7570").getIntColor();
molten_ethaxium.stillLocation = "base:fluids/molten";
molten_ethaxium.flowingLocation = "base:fluids/molten_flowing";
molten_ethaxium.register();
game.setLocalization("fluid.ethaxium", "熔融伊桑斯");

val ethaxium = mods.contenttweaker.tconstruct.MaterialBuilder.create("ethaxium");
ethaxium.color = Color.fromHex("5f7570").getIntColor(); 
ethaxium.craftable = false;
ethaxium.castable = true;
ethaxium.representativeItem = <item:abyssalcraft:ethaxiumingot>;
ethaxium.liquid = <liquid:ethaxium>;
ethaxium.localizedName = "伊桑斯";
ethaxium.addHeadMaterialStats(2800, 22.5, 14.2, 6);
ethaxium.addHandleMaterialStats(1.2, 300);
ethaxium.addExtraMaterialStats(600);
ethaxium.addMaterialTrait("duritos", "head");
ethaxium.addMaterialTrait("duritos", "handle");
ethaxium.addMaterialTrait("duritos", "extra");
ethaxium.addBowMaterialStats(1.35, 1.3, 12.2);
ethaxium.addProjectileMaterialStats();
ethaxium.register();

val scarlite = mods.contenttweaker.tconstruct.MaterialBuilder.create("scarlite");
scarlite.color = Color.fromHex("f44336").getIntColor(); 
scarlite.craftable = true;
scarlite.castable = false;
scarlite.representativeItem = <item:defiledlands:scarlite>;
scarlite.addItem(<ore:gemScarlite>);
scarlite.localizedName = "绯红宝石";
scarlite.addHeadMaterialStats(200, 3.5, 9.6, 3);
scarlite.addHandleMaterialStats(1.2, 120);
scarlite.addExtraMaterialStats(150);
scarlite.addBowMaterialStats(1.5, 1.0, 2.5);
scarlite.addMaterialTrait("duritos", "head");
scarlite.addMaterialTrait("duritos", "handle");
scarlite.addMaterialTrait("duritos", "extra");
scarlite.addProjectileMaterialStats();
scarlite.register();

val hephaestite = mods.contenttweaker.tconstruct.MaterialBuilder.create("hephaestite");
hephaestite.color = Color.fromHex("ff3d00").getIntColor(); 
hephaestite.craftable = true;
hephaestite.castable = false;
hephaestite.representativeItem = <item:defiledlands:hephaestite>;
hephaestite.addItem(<ore:gemHephaestite>);
hephaestite.localizedName = "赫菲斯辛";
hephaestite.addHeadMaterialStats(100, 3.5, 2.2, 1);
hephaestite.addHandleMaterialStats(0.8, 80);
hephaestite.addExtraMaterialStats(90);
hephaestite.addBowMaterialStats(1.3, 1.0, 1.5);
hephaestite.addMaterialTrait("duritos", "head");
hephaestite.addMaterialTrait("duritos", "handle");
hephaestite.addMaterialTrait("duritos", "extra");
hephaestite.addProjectileMaterialStats();
hephaestite.register();

game.setLocalization("jaopca.entry.Umbrium", "影素");
game.setLocalization("jaopca.entry.Hephaestite", "赫菲斯辛");
game.setLocalization("jaopca.entry.Scarlite", "绯红宝石");