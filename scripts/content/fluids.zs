/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker 

#priority 2201

import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;

val molten_fusion_matrix = mods.contenttweaker.VanillaFactory.createFluid("fusion_matrix", Color.fromHex("4a148c").getIntColor());
molten_fusion_matrix.material = <blockmaterial:lava>;
molten_fusion_matrix.viscosity = 2000;
molten_fusion_matrix.density = 4000;
molten_fusion_matrix.rarity = "EPIC";
molten_fusion_matrix.colorize = true;
molten_fusion_matrix.temperature = 2800;
molten_fusion_matrix.luminosity = 15;
molten_fusion_matrix.color = Color.fromHex("4a148c").getIntColor();
molten_fusion_matrix.stillLocation = "base:fluids/molten";
molten_fusion_matrix.flowingLocation = "base:fluids/molten_flowing";
molten_fusion_matrix.register();

val molten_insanium = mods.contenttweaker.VanillaFactory.createFluid("insanium", Color.fromHex("aa00ff").getIntColor());
molten_insanium.material = <blockmaterial:lava>;
molten_insanium.viscosity = 2000;
molten_insanium.density = 2000;
molten_insanium.rarity = "EPIC";
molten_insanium.colorize = true;
molten_insanium.luminosity = 10;
molten_insanium.temperature = 1800;
molten_insanium.color = Color.fromHex("aa00ff").getIntColor();
molten_insanium.stillLocation = "base:fluids/molten";
molten_insanium.flowingLocation = "base:fluids/molten_flowing";
molten_insanium.register();

val molten_ethaxium = mods.contenttweaker.VanillaFactory.createFluid("ethaxium", Color.fromHex("5f7570").getIntColor());
molten_ethaxium.material = <blockmaterial:lava>;
molten_ethaxium.viscosity = 2400;
molten_ethaxium.density = 5400;
molten_ethaxium.rarity = "EPIC";
molten_ethaxium.colorize = true;
molten_ethaxium.temperature = 2000;
molten_ethaxium.luminosity = 10;
molten_ethaxium.color = Color.fromHex("5f7570").getIntColor();
molten_ethaxium.stillLocation = "base:fluids/molten";
molten_ethaxium.flowingLocation = "base:fluids/molten_flowing";
molten_ethaxium.register();

val molten_mithrillium = mods.contenttweaker.VanillaFactory.createFluid("mithrillium", Color.fromHex("2979ff").getIntColor());
molten_mithrillium.material = <blockmaterial:lava>;
molten_mithrillium.viscosity = 2400;
molten_mithrillium.density = 2400;
molten_mithrillium.rarity = "EPIC";
molten_mithrillium.colorize = true;
molten_mithrillium.temperature = 900;
molten_mithrillium.luminosity = 10;
molten_mithrillium.color = Color.fromHex("2979ff").getIntColor();
molten_mithrillium.stillLocation = "base:fluids/molten";
molten_mithrillium.flowingLocation = "base:fluids/molten_flowing";
molten_mithrillium.register();

val molten_adaminite = mods.contenttweaker.VanillaFactory.createFluid("adaminite", Color.fromHex("ff1744").getIntColor());
molten_adaminite.material = <blockmaterial:lava>;
molten_adaminite.viscosity = 2400;
molten_adaminite.density = 2400;
molten_adaminite.rarity = "EPIC";
molten_adaminite.colorize = true;
molten_adaminite.temperature = 1000;
molten_adaminite.luminosity = 10;
molten_adaminite.color = Color.fromHex("ff1744").getIntColor();
molten_adaminite.stillLocation = "base:fluids/molten";
molten_adaminite.flowingLocation = "base:fluids/molten_flowing";
molten_adaminite.register();

val molten_mithminite = mods.contenttweaker.VanillaFactory.createFluid("mithminite", Color.fromHex("ff4081").getIntColor());
molten_mithminite.material = <blockmaterial:lava>;
molten_mithminite.viscosity = 2400;
molten_mithminite.rarity = "EPIC";
molten_mithminite.colorize = true;
molten_mithminite.temperature = 1200;
molten_mithminite.luminosity = 10;
molten_mithminite.color = Color.fromHex("ff4081").getIntColor();
molten_mithminite.stillLocation = "base:fluids/molten";
molten_mithminite.flowingLocation = "base:fluids/molten_flowing";
molten_mithminite.register();

val molten_ravaging = mods.contenttweaker.VanillaFactory.createFluid("ravaging", Color.fromHex("ffc1e3").getIntColor());
molten_ravaging.material = <blockmaterial:lava>;
molten_ravaging.viscosity = 2400;
molten_ravaging.density = 2400;
molten_ravaging.rarity = "EPIC";
molten_ravaging.colorize = true;
molten_ravaging.temperature = 1600;
molten_ravaging.luminosity = 10;
molten_ravaging.color = Color.fromHex("ffc1e3").getIntColor();
molten_ravaging.stillLocation = "base:fluids/molten";
molten_ravaging.flowingLocation = "base:fluids/molten_flowing";
molten_ravaging.register();

val molten_gaia = mods.contenttweaker.VanillaFactory.createFluid("gaia", Color.fromHex("ff80ab").getIntColor());
molten_gaia.material = <blockmaterial:lava>;
molten_gaia.viscosity = 2400;
molten_gaia.rarity = "EPIC";
molten_gaia.colorize = true;
molten_gaia.temperature = 1400;
molten_gaia.luminosity = 10;
molten_gaia.color = Color.fromHex("ff80ab").getIntColor();
molten_gaia.stillLocation = "base:fluids/molten";
molten_gaia.flowingLocation = "base:fluids/molten_flowing";
molten_gaia.register();

val molten_terra_alloy = mods.contenttweaker.VanillaFactory.createFluid("terra_alloy", Color.fromHex("70cf7b").getIntColor());
molten_terra_alloy.material = <blockmaterial:lava>;
molten_terra_alloy.viscosity = 2400;
molten_terra_alloy.density = 2400;
molten_terra_alloy.rarity = "EPIC";
molten_terra_alloy.colorize = true;
molten_terra_alloy.temperature = 2500;
molten_terra_alloy.luminosity = 12;
molten_terra_alloy.color = Color.fromHex("70cf7b").getIntColor();
molten_terra_alloy.stillLocation = "base:fluids/molten";
molten_terra_alloy.flowingLocation = "base:fluids/molten_flowing";
molten_terra_alloy.register();

val molten_cosmilite = mods.contenttweaker.VanillaFactory.createFluid("cosmilite", Color.fromHex("ff416c").getIntColor());
molten_cosmilite.material = <blockmaterial:lava>;
molten_cosmilite.viscosity = 100;
molten_cosmilite.density = 5000000;
molten_cosmilite.rarity = "EPIC";
molten_cosmilite.colorize = true;
molten_cosmilite.temperature = 32000;
molten_cosmilite.luminosity = 15;
molten_cosmilite.color = Color.fromHex("ff416c").getIntColor();
molten_cosmilite.stillLocation = "base:fluids/molten";
molten_cosmilite.flowingLocation = "base:fluids/molten_flowing";
molten_cosmilite.register();

val molten_astral_metal = mods.contenttweaker.VanillaFactory.createFluid("astral_metal", Color.fromHex("d500f9").getIntColor());
molten_astral_metal.material = <blockmaterial:lava>;
molten_astral_metal.viscosity = 2400;
molten_astral_metal.density = 10000;
molten_astral_metal.rarity = "EPIC";
molten_astral_metal.colorize = true;
molten_astral_metal.temperature = 12000;
molten_astral_metal.luminosity = 15;
molten_astral_metal.color = Color.fromHex("d500f9").getIntColor();
molten_astral_metal.stillLocation = "base:fluids/molten";
molten_astral_metal.flowingLocation = "base:fluids/molten_flowing";
molten_astral_metal.register();

val molten_orichalcos = mods.contenttweaker.VanillaFactory.createFluid("orichalcos", Color.fromHex("ec407a").getIntColor());
molten_orichalcos.material = <blockmaterial:lava>;
molten_orichalcos.viscosity = 2600;
molten_orichalcos.density = 12000;
molten_orichalcos.rarity = "EPIC";
molten_orichalcos.colorize = true;
molten_orichalcos.temperature = 12000;
molten_orichalcos.luminosity = 15;
molten_orichalcos.color = Color.fromHex("ec407a").getIntColor();
molten_orichalcos.stillLocation = "base:fluids/molten";
molten_orichalcos.flowingLocation = "base:fluids/molten_flowing";
molten_orichalcos.register();

val molten_ancient_debris = mods.contenttweaker.VanillaFactory.createFluid("ancient_debris", Color.fromHex("8d6e63").getIntColor());
molten_ancient_debris.material = <blockmaterial:lava>;
molten_ancient_debris.viscosity = 24000;
molten_ancient_debris.density = 100000;
molten_ancient_debris.rarity = "EPIC";
molten_ancient_debris.colorize = true;
molten_ancient_debris.temperature = 1520;
molten_ancient_debris.luminosity = 15;
molten_ancient_debris.color = Color.fromHex("8d6e63").getIntColor();
molten_ancient_debris.stillLocation = "base:fluids/molten";
molten_ancient_debris.flowingLocation = "base:fluids/molten_flowing";
molten_ancient_debris.register();

val molten_netherite = mods.contenttweaker.VanillaFactory.createFluid("netherite", Color.fromHex("42403f").getIntColor());
molten_netherite.material = <blockmaterial:lava>;
molten_netherite.viscosity = 24000;
molten_netherite.density = 100000;
molten_netherite.rarity = "EPIC";
molten_netherite.colorize = true;
molten_netherite.temperature = 1800;
molten_netherite.luminosity = 15;
molten_netherite.color = Color.fromHex("42403f").getIntColor();
molten_netherite.stillLocation = "base:fluids/molten";
molten_netherite.flowingLocation = "base:fluids/molten_flowing";
molten_netherite.register();

val molten_scorched = mods.contenttweaker.VanillaFactory.createFluid("scorched", Color.fromHex("514623").getIntColor());
molten_scorched.material = <blockmaterial:lava>;
molten_scorched.viscosity = 2400;
molten_scorched.density = 10000;
molten_scorched.rarity = "EPIC";
molten_scorched.colorize = true;
molten_scorched.temperature = 1350;
molten_scorched.luminosity = 15;
molten_scorched.color = Color.fromHex("514623").getIntColor();
molten_scorched.stillLocation = "base:fluids/molten";
molten_scorched.flowingLocation = "base:fluids/molten_flowing";
molten_scorched.register();

val organic_fluid = mods.contenttweaker.VanillaFactory.createFluid("organic_fluid", Color.fromHex("cddc39").getIntColor());
organic_fluid.material = <blockmaterial:water>;
organic_fluid.viscosity = 5000;
organic_fluid.density = 12000;
organic_fluid.rarity = "EPIC";
organic_fluid.colorize = true;
organic_fluid.temperature = 257;
organic_fluid.luminosity = 5;
organic_fluid.color = Color.fromHex("cddc39").getIntColor();
organic_fluid.register();

val molten_modularium = mods.contenttweaker.VanillaFactory.createFluid("modularium", Color.fromHex("ff5722").getIntColor());
molten_modularium.material = <blockmaterial:lava>;
molten_modularium.viscosity = 2400;
molten_modularium.density = 10000;
molten_modularium.colorize = true;
molten_modularium.temperature = 1600;
molten_modularium.luminosity = 15;
molten_modularium.color = Color.fromHex("ff5722").getIntColor();
molten_modularium.stillLocation = "base:fluids/molten";
molten_modularium.flowingLocation = "base:fluids/molten_flowing";
molten_modularium.register();

val molten_meteor = mods.contenttweaker.VanillaFactory.createFluid("meteor", Color.fromHex("c62828").getIntColor());
molten_meteor.material = <blockmaterial:lava>;
molten_meteor.viscosity = 2400;
molten_meteor.density = 10000;
molten_meteor.colorize = true;
molten_meteor.temperature = 1400;
molten_meteor.luminosity = 15;
molten_meteor.color = Color.fromHex("c62828").getIntColor();
molten_meteor.stillLocation = "base:fluids/molten";
molten_meteor.flowingLocation = "base:fluids/molten_flowing";
molten_meteor.register();

val molten_stainless_steel = mods.contenttweaker.VanillaFactory.createFluid("stainless_steel", Color.fromHex("757575").getIntColor());
molten_stainless_steel.material = <blockmaterial:lava>;
molten_stainless_steel.viscosity = 2400;
molten_stainless_steel.density = 12000;
molten_stainless_steel.colorize = true;
molten_stainless_steel.temperature = 1450;
molten_stainless_steel.luminosity = 15;
molten_stainless_steel.color = Color.fromHex("757575").getIntColor();
molten_stainless_steel.stillLocation = "base:fluids/molten";
molten_stainless_steel.flowingLocation = "base:fluids/molten_flowing";
molten_stainless_steel.register();

val molten_protonium = mods.contenttweaker.VanillaFactory.createFluid("protonium", Color.fromHex("f240b7").getIntColor());
molten_protonium.material = <blockmaterial:lava>;
molten_protonium.viscosity = 16384;
molten_protonium.density = 2147483647;
molten_protonium.rarity = "EPIC";
molten_protonium.colorize = true;
molten_protonium.temperature = 32767;
molten_protonium.luminosity = 15;
molten_protonium.color = Color.fromHex("f240b7").getIntColor();
molten_protonium.stillLocation = "base:fluids/molten";
molten_protonium.flowingLocation = "base:fluids/molten_flowing";
molten_protonium.register();

val molten_electronium = mods.contenttweaker.VanillaFactory.createFluid("electronium", Color.fromHex("434eb5").getIntColor());
molten_electronium.material = <blockmaterial:lava>;
molten_electronium.viscosity = 32767;
molten_electronium.density = 32767;
molten_electronium.rarity = "EPIC";
molten_electronium.colorize = true;
molten_electronium.temperature = 16384;
molten_electronium.luminosity = 15;
molten_electronium.color = Color.fromHex("434eb5").getIntColor();
molten_electronium.stillLocation = "base:fluids/molten";
molten_electronium.flowingLocation = "base:fluids/molten_flowing";
molten_electronium.register();

val molten_crimsonite = mods.contenttweaker.VanillaFactory.createFluid("crimsonite", Color.fromHex("a30000").getIntColor());
molten_crimsonite.material = <blockmaterial:lava>;
molten_crimsonite.viscosity = 3000;
molten_crimsonite.density = 4500;
molten_crimsonite.rarity = "EPIC";
molten_crimsonite.colorize = true;
molten_crimsonite.temperature = 1550;
molten_crimsonite.luminosity = 12;
molten_crimsonite.color = Color.fromHex("a30000").getIntColor();
molten_crimsonite.stillLocation = "base:fluids/molten";
molten_crimsonite.flowingLocation = "base:fluids/molten_flowing";
molten_crimsonite.register();

val molten_magnanese_steel = mods.contenttweaker.VanillaFactory.createFluid("manganese_steel", Color.fromHex("455a64").getIntColor());
molten_magnanese_steel.material = <blockmaterial:lava>;
molten_magnanese_steel.viscosity = 3000;
molten_magnanese_steel.density = 6500;
molten_magnanese_steel.colorize = true;
molten_magnanese_steel.temperature = 1400;
molten_magnanese_steel.luminosity = 10;
molten_magnanese_steel.color = Color.fromHex("455a64").getIntColor();
molten_magnanese_steel.stillLocation = "base:fluids/molten";
molten_magnanese_steel.flowingLocation = "base:fluids/molten_flowing";
molten_magnanese_steel.register();
