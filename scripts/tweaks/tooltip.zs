/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 100
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.game.IGame;

val disabled = game.localize("greedycraft.tooltip.constant.disabled");
val flight_disabled = game.localize("greedycraft.tooltip.constant.flight_disabled");
val dont_place = game.localize("greedycraft.tooltip.constant.dont_place");
val de_disabled_wyvern = game.localize("greedycraft.tooltip.constant.de_disabled_wyvern");
val de_disabled_awakened = game.localize("greedycraft.tooltip.constant.de_disabled_awakened");
val dont_put_into_ae = game.localize("greedycraft.tooltip.constant.dont_put_into_ae");
val ae_lag = game.localize("greedycraft.tooltip.constant.ae_lag");
val refer_to_guide = game.localize("greedycraft.tooltip.constant.refer_to_guide");
val blueprint_required = game.localize("greedycraft.tooltip.constant.blueprint_required");
val shadow_mob_1 = game.localize("greedycraft.tooltip.constant.shadow_mob_1");
val shadow_mob_2 = game.localize("greedycraft.tooltip.constant.shadow_mob_2");
val hardmode_tinkers = game.localize("greedycraft.tooltip.constant.hardmode_tinkers");
val dont_eat_twice = game.localize("greedycraft.tooltip.constant.dont_eat_twice");
val bow_speed = game.localize("greedycraft.tooltip.constant.bow_speed");
val tc_book_incorrect = game.localize("greedycraft.tooltip.constant.tc_book_incorrect");
val sentient_disabled = game.localize("greedycraft.tooltip.constant.sentient_disabled");
val bound_disabled = game.localize("greedycraft.tooltip.constant.bound_disabled");
val how_to_repair = game.localize("greedycraft.tooltip.constant.how_to_repair");
val cant_set_spawn = game.localize("greedycraft.tooltip.constant.cant_set_spawn");
val machinery_upgrade_guide = game.localize("greedycraft.tooltip.constant.machinery_upgrade_guide");
val machinery_upgrade_warning = game.localize("greedycraft.tooltip.constant.machinery_upgrade_warning");

val tooltipMap as string[][IIngredient] = {
    <mysticalagriculture:supremium_helmet> : [flight_disabled],
    <mysticalagriculture:supremium_chestplate> : [flight_disabled],
    <mysticalagriculture:supremium_leggings> : [flight_disabled],
    <mysticalagriculture:supremium_boots> : [flight_disabled],
    <minecraft:diamond_pickaxe> : [game.localize("greedycraft.tooltip.minecraft.diamond_pickaxe.1")],
    <minecraft:bedrock> : [dont_place],
    <minecraft:barrier> : [dont_place],
    <projecte:collector_mk1> : [disabled],
    <projecte:collector_mk2> : [disabled],
    <projecte:collector_mk3> : [disabled],
    <projectex:collector:*> : [game.localize("greedycraft.tooltip.projectex.collector.1")],
    <projectex:relay:*> : [disabled],
    <projectex:compressed_collector:*> : [disabled],
    <projectex:power_flower:*> : [disabled],
    <draconicevolution:wyvern_helm> : [de_disabled_wyvern],
    <draconicevolution:wyvern_legs> : [de_disabled_wyvern],
    <draconicevolution:wyvern_chest> : [de_disabled_wyvern],
    <draconicevolution:wyvern_boots> : [de_disabled_wyvern],
    <draconicevolution:wyvern_axe> : [de_disabled_wyvern],
    <draconicevolution:wyvern_bow> : [de_disabled_wyvern],
    <draconicevolution:wyvern_pick> : [de_disabled_wyvern],
    <draconicevolution:wyvern_shovel> : [de_disabled_wyvern],
    <draconicevolution:wyvern_sword> : [de_disabled_wyvern],
    <draconicevolution:draconic_helm> : [de_disabled_awakened],
    <draconicevolution:draconic_legs> : [de_disabled_awakened],
    <draconicevolution:draconic_chest> : [de_disabled_awakened],
    <draconicevolution:draconic_boots> : [de_disabled_awakened],
    <draconicevolution:draconic_axe> : [de_disabled_awakened],
    <draconicevolution:draconic_bow> : [de_disabled_awakened],
    <draconicevolution:draconic_pick> : [de_disabled_awakened],
    <draconicevolution:draconic_shovel> : [de_disabled_awakened],
    <draconicevolution:draconic_sword> : [de_disabled_awakened],
    <draconicevolution:draconic_hoe> : [de_disabled_awakened],
    <astralsorcery:blockaltar> : [game.localize("greedycraft.tooltip.astralsorcery.blockaltar.1"), game.localize("greedycraft.tooltip.astralsorcery.blockaltar.2")],
    <akashictome:tome> : [game.localize("greedycraft.tooltip.akashictome.tome.1")],
    <bountifulbaubles:trinketbrokenheart> : [disabled],
    <cyclicmagic:cyclic_wand_build> : [disabled],
    <minecraft:diamond> : [game.localize("greedycraft.tooltip.minecraft.diamond.1")],
    <minecraft:stick> : [game.localize("greedycraft.tooltip.minecraft.stick.1")],
    <danknull:dank_null_0> : [refer_to_guide, dont_put_into_ae],
    <danknull:dank_null_1> : [refer_to_guide, dont_put_into_ae],
    <danknull:dank_null_2> : [refer_to_guide, dont_put_into_ae],
    <danknull:dank_null_3> : [refer_to_guide, dont_put_into_ae],
    <danknull:dank_null_4> : [refer_to_guide, dont_put_into_ae],
    <danknull:dank_null_5> : [refer_to_guide, dont_put_into_ae],
    <danknull:dank_null_6> : [refer_to_guide, dont_put_into_ae],
    <aether_legacy:golden_amber> : [game.localize("greedycraft.tooltip.aether_legacy.golden_amber.1")],
    <abyssalcraft:gatewaykeydl> : [game.localize("greedycraft.tooltip.abyssalcraft.gatewaykeydl.1")],
    <abyssalcraft:gatewaykeyjzh> : [game.localize("greedycraft.tooltip.abyssalcraft.gatewaykeyjzh.1")],
    <tinkersaether:valkyrie_block> : [game.localize("greedycraft.tooltip.tinkersaether.valkyrie_block.1")],
    <chancecubes:compact_giant_chance_cube> : [game.localize("greedycraft.tooltip.chancecubes.compact_giant_chance_cube.1")],
    <chancecubes:chance_cube> : [game.localize("greedycraft.tooltip.chancecubes.chance_cube.1")],
    <minecraft:obsidian> : [game.localize("greedycraft.tooltip.minecraft.obsidian.1")],
    <extrautils2:chunkloader> : [game.localize("greedycraft.tooltip.extrautils2.chunkloader.1"), game.localize("greedycraft.tooltip.extrautils2.chunkloader.2")],
    <hooked:hook:*> : [game.localize("greedycraft.tooltip.hooked.hook.1")],
    <tconstruct:seared:*> : [game.localize("greedycraft.tooltip.tconstruct.seared.1"), game.localize("greedycraft.tooltip.tconstruct.seared.2")],
    <tconstruct:cleaver> : [blueprint_required],
    <plustic:katana> : [blueprint_required],
    <tconstruct:longsword> : [blueprint_required],
    <tconstruct:shuriken> : [blueprint_required],
    <tconstruct:rapier> : [blueprint_required],
    <plustic:laser_gun> : [blueprint_required],
    <tconevo:tool_sceptre> : [blueprint_required],
    <thermaldynamics:duct_32:*> : [game.localize("greedycraft.tooltip.thermaldynamics.duct_32.1")],
    <tconstruct:materials> : [game.localize("greedycraft.tooltip.tconstruct.materials.1")],
    <abyssalcraft:shadowgem> : [shadow_mob_1, shadow_mob_2],
    <abyssalcraft:shadowshard> : [shadow_mob_1, shadow_mob_2],
    <abyssalcraft:shadowfragment> : [shadow_mob_1, shadow_mob_2],
    <astralsorcery:itemexchangewand> : [disabled],
    <mekanism:transmitter:*> : [game.localize("greedycraft.tooltip.mekanism.transmitter.1")],
    <cyclicmagic:tool_swap> : [disabled],
    <cyclicmagic:tool_swap_match> : [disabled],
    <ore:ingotInsanium> : [hardmode_tinkers],
    <ore:ingotSupremium> : [hardmode_tinkers],
    <tconstruct:arrow_shaft> : [game.localize("greedycraft.tooltip.tconstruct.arrow_shaft.1")],
    <ore:ingotSteel> : [game.localize("greedycraft.tooltip.ore.ingotSteel.1"), game.localize("greedycraft.tooltip.ore.ingotSteel.2")],
    <ore:skullPlayer> : [ae_lag],
    <mca:book_death> : [ae_lag],
    <mca:book_romance> : [ae_lag],
    <mca:book_family> : [ae_lag],
    <mca:book_rose_gold> : [ae_lag],
    <mca:book_infection> : [ae_lag],
    <minecraft:written_book> : [ae_lag],
    <ore:ingotNetherite> : [game.localize("greedycraft.tooltip.ore.ingotNetherite.1")],
    <cyclicmagic:crafting_food> : [dont_eat_twice],
    <cyclicmagic:inventory_food> : [dont_eat_twice],
    <tconstruct:shortbow> : [bow_speed],
    <tconstruct:longbow> : [bow_speed],
    <tconstruct:crossbow> : [bow_speed],
    <tconstruct:bow_limb> : [bow_speed],
    <modularmachinery:itemblueprint> : [game.localize("greedycraft.tooltip.modularmachinery.itemblueprint.1"), game.localize("greedycraft.tooltip.modularmachinery.itemblueprint.2")],
    <thaumadditions:mithminite_plate> : [tc_book_incorrect],
    <thaumadditions:adaminite_plate> : [tc_book_incorrect],
    <thaumadditions:mithrillium_plate> : [tc_book_incorrect],
    <projectex:collector:5> : [game.localize("greedycraft.tooltip.projectex.collector.2")],
    <additions:greedycraft-aeroite_ore> : [game.localize("greedycraft.tooltip.additions.greedycraft-aeroite_ore.1")],
    <tofucraft:ore_tofudiamond> : [game.localize("greedycraft.tooltip.tofucraft.ore_tofudiamond.1")],
    <minecraft:enchanting_table> : [game.localize("greedycraft.tooltip.minecraft.enchanting_table.1")],
    <twilightforest:uncrafting_table> : [game.localize("greedycraft.tooltip.twilightforest.uncrafting_table.1")],
    <oeintegration:excavatemodifier> : [game.localize("greedycraft.tooltip.oeintegration.excavatemodifier.1"), game.localize("greedycraft.tooltip.oeintegration.excavatemodifier.2")],
    <bloodmagic:sentient_sword> : [sentient_disabled],
    <bloodmagic:sentient_bow> : [sentient_disabled],
    <bloodmagic:sentient_axe> : [sentient_disabled],
    <bloodmagic:sentient_pickaxe> : [sentient_disabled],
    <bloodmagic:sentient_shovel> : [sentient_disabled],
    <bloodmagic:sentient_shovel> : [sentient_disabled],
    <comforts:sleeping_bag:*> : [cant_set_spawn],
    <comforts:hammock:*> : [cant_set_spawn],
    <theoneprobe:probenote> : [game.localize("greedycraft.tooltip.theoneprobe.probenote.1")],
    <scalinghealth:heartcontainer> : [game.localize("greedycraft.tooltip.scalinghealth.heartcontainer.1"), game.localize("greedycraft.tooltip.scalinghealth.heartcontainer.2")],
    <redstonerepository:ring_mining> : [game.localize("greedycraft.tooltip.redstonerepository.ring_mining.1")],
    <prefab:item_monster_masher> : [game.localize("greedycraft.tooltip.prefab.item_monster_masher.1")],
    <tconstruct:materials:19> : [game.localize("greedycraft.tooltip.tconstruct.materials.1")],
    <harvestcraft:hamandpineapplepizzaitem> : [game.localize("greedycraft.tooltip.harvestcraft.hamandpineapplepizzaitem.1")],
    <bloodmagic:bound_sword> : [bound_disabled],
    <bloodmagic:bound_pickaxe> : [bound_disabled],
    <bloodmagic:bound_axe> : [bound_disabled],
    <bloodmagic:bound_shovel> : [bound_disabled],
    <animus:kama_bound> : [disabled],
    <tconstruct:tooltables:3> : [how_to_repair],
    <tconstruct:toolforge> : [how_to_repair],
    <danknull:danknull_dock> : [game.localize("greedycraft.tooltip.danknull.danknull_dock.1")],
	<extrautils2:snowglobe:*> : [game.localize("greedycraft.tooltip.extrautils2.snowglobe.1")],
	<modularmachinery:blockcasing:1> : [game.localize("greedycraft.tooltip.modularmachinery.blockcasing.1"), machinery_upgrade_guide, machinery_upgrade_warning],
	<modularmachinery:blockcasing:2> : [game.localize("greedycraft.tooltip.modularmachinery.blockcasing.2"), machinery_upgrade_guide, machinery_upgrade_warning],
	<modularmachinery:blockcasing:3> : [game.localize("greedycraft.tooltip.modularmachinery.blockcasing.3"), machinery_upgrade_guide, machinery_upgrade_warning],
	<modularmachinery:blockcasing:5> : [game.localize("greedycraft.tooltip.modularmachinery.blockcasing.5"), machinery_upgrade_guide, machinery_upgrade_warning],
	<enderio:item_material:9> : [game.localize("greedycraft.tooltip.enderio.item_material.1")],
	<enderio:item_material:10> : [game.localize("greedycraft.tooltip.enderio.item_material.1")],
    <thaumadditions:vis_scribing_tools:*> : [game.localize("greedycraft.tooltip.thaumadditions.vis_scribing_tools.1")],
    <torchmaster:feral_flare_lantern> : [game.localize("greedycraft.tooltip.torchmaster.feral_flare_lantern.1"), game.localize("greedycraft.tooltip.torchmaster.feral_flare_lantern.2")],
    <snad:snad:*> : [game.localize("greedycraft.tooltip.snad.snad.1")],
    <inventorypets:cloud_pet> : [game.localize("greedycraft.tooltip.inventorypets.cloud_pet.1")],
    <gravestone:death_info> : [game.localize("greedycraft.tooltip.gravestone.death_info.1"), game.localize("greedycraft.tooltip.gravestone.death_info.2"), game.localize("greedycraft.tooltip.gravestone.death_info.3")],
    <defiledlands:conjuring_altar> : [game.localize("greedycraft.tooltip.defiledlands.conjuring_altar.1")],
    <simplybackpacks:commonbackpack> : [dont_put_into_ae],
    <simplybackpacks:rarebackpack> : [dont_put_into_ae],
    <simplybackpacks:uncommonbackpack> : [dont_put_into_ae],
    <simplybackpacks:epicbackpack> : [dont_put_into_ae],
    <forestry:forester_bag_t2> : [ae_lag],
    <cyclicmagic:storage_bag> : [ae_lag],
    <forestry:apiarist_bag> : [ae_lag],
    <botany:botanist_bag> : [ae_lag],
    <forestry:lepidopterist_bag> : [ae_lag],
    <forestry:miner_bag> : [ae_lag],
    <forestry:miner_bag_t2> : [ae_lag],
    <forestry:digger_bag> : [ae_lag],
    <forestry:forester_bag> : [ae_lag],
    <forestry:digger_bag_t2> : [ae_lag],
    <magicbees:backpack_thaumaturge_t1> : [ae_lag],
    <forestry:adventurer_bag> : [ae_lag],
    <forestry:builder_bag> : [ae_lag],
    <forestry:hunter_bag> : [ae_lag],
    <extrautils2:bagofholding> : [ae_lag],
    <extrabotany:masterhandbag> : [ae_lag],
    <magicbees:backpack_thaumaturge_t2> : [ae_lag],
    <forestry:adventurer_bag_t2> : [ae_lag],
    <forestry:builder_bag_t2> : [ae_lag],
    <forestry:hunter_bag_t2> : [ae_lag],
    <pouchofunknown:pouch> : [ae_lag],
    <lootbags:itemlootbag:*> : [game.localize("greedycraft.tooltip.lootbags.itemlootbag.1")],
    <tconevo:material:2> : [game.localize("greedycraft.tooltip.tconevo.plate_of_unsealing.1")],
    <contenttweaker:tablet_of_enlightenment>: [game.localize("greedycraft.tooltip.contenttweaker.tablet_of_enlightenment.1"), game.localize("greedycraft.tooltip.contenttweaker.tablet_of_enlightenment.2"), game.localize("greedycraft.tooltip.contenttweaker.tablet_of_enlightenment.3"), game.localize("greedycraft.tooltip.contenttweaker.tablet_of_enlightenment.4"), game.localize("greedycraft.tooltip.contenttweaker.tablet_of_enlightenment.5")]
} as string[][IIngredient];

for ingredient in tooltipMap {
    var tooltips as string[] = tooltipMap[ingredient] as string[];
    for item in ingredient.items {
        for tooltip in tooltips {
            item.addTooltip(tooltip);
        }
    }
}
