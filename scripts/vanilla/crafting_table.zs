/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

val oeEnchantId = <enchantment:oeintegration:oreexcavation>.id as int;

val removedRecipes as IIngredient[] = [
    <oeintegration:excavatemodifier>,
    <projecte:item.pe_philosophers_stone>,
    <projecte:transmutation_table>,
    <projecte:item.pe_rm_hoe>,
    <projecte:item.pe_rm_pick>,
    <projecte:item.pe_rm_axe>,
    <projecte:item.pe_rm_shovel>,
    <projecte:item.pe_rm_hammer>,
    <projecte:item.pe_rm_sword>,
    <projecte:item.pe_rm_shears>,
    <projecte:item.pe_rm_katar>,
    <projecte:item.pe_rm_morning_star>,
    <projecte:item.pe_rm_armor_0>,
    <projecte:item.pe_rm_armor_1>,
    <projecte:item.pe_rm_armor_2>,
    <projecte:item.pe_rm_armor_3>,
    <projecte:item.pe_gem_armor_0>,
    <projecte:item.pe_gem_armor_1>,
    <projecte:item.pe_gem_armor_2>,
    <projecte:item.pe_gem_armor_3>,
    <projecte:item.pe_dm_armor_0>,
    <projecte:item.pe_dm_armor_1>,
    <projecte:item.pe_dm_armor_2>,
    <projecte:item.pe_dm_armor_3>,
    <projectex:stone_table>,
    <chancecubes:chance_cube>,
    <draconicevolution:wyvern_axe>,
    <draconicevolution:wyvern_bow>,
    <draconicevolution:wyvern_pick>,
    <draconicevolution:wyvern_sword>,
    <draconicevolution:wyvern_shovel>,
    <draconicevolution:wyvern_helm>,
    <draconicevolution:wyvern_chest>,
    <draconicevolution:wyvern_legs>,
    <draconicevolution:wyvern_boots>,
    <projecte:item.pe_harvest_god>,
    <projectex:collector:*>,
    <projectex:compressed_collector:*>,
    <projectex:power_flower:*>,
    <projecte:collector_mk3:*>,
    <projecte:collector_mk2:*>,
    <projecte:collector_mk1:*>,
    <projecte:nova_catalyst>,
    <projecte:nova_cataclysm>,
    <scalinghealth:heartdust>,
    <mekanism:basicblock:6>,
    <extrautils2:crafter>,
    <actuallyadditions:block_greenhouse_glass>,
    <mysticalagriculture:growth_accelerator>,
    <mekanismgenerators:generator:12>,
    <mekanism:machineblock:4>,
    <actuallyadditions:block_giant_chest>,
    <actuallyadditions:block_giant_chest_medium>,
    <actuallyadditions:block_giant_chest_large>,
    <simplesmelteryaccelerator:smeltery_accelerator>,
    <mekanismgenerators:generator:6>,
    <mekanismgenerators:generator:5>,
    <mekanismgenerators:generator:1>,
    <projecte:item.pe_soul_stone>,
    <projecte:item.pe_body_stone>,
    <projecte:item.pe_transmutation_tablet>,
    <avaritia:extreme_crafting_table>,
    <minecraft:crafting_table>,
    <extrautils2:rainbowgenerator>,
    <projecte:interdiction_torch>,
    <projectex:arcane_tablet>,
    <projectex:relay:*>,
    <projecte:relay_mk1>,
    <projecte:relay_mk2>,
    <projecte:relay_mk3>,
    <bountifulbaubles:ringiron>,
    <draconicevolution:grinder>,
    <extrautils2:chickenring>,
    <extrautils2:teleporter:1>,
    <projecte:condenser_mk2>,
    <projecte:condenser_mk1>,
    <mysticalagriculture:crafting:1>,
    <mysticalagriculture:crafting:2>,
    <mysticalagriculture:crafting:3>,
    <mysticalagriculture:crafting:4>,
    <mysticalagriculture:crafting:33>,
    <mysticalagriculture:crafting:34>,
    <mysticalagriculture:crafting:35>,
    <mysticalagriculture:crafting:36>,
    <mysticalagriculture:crafting:37>,
    <mysticalagradditions:insanium>,
    <mysticalagradditions:insanium:2>,
    <cyclicmagic:cable_wireless>,
    <cyclicmagic:cable_wireless_energy>,
    <cyclicmagic:cable_wireless_fluid>,
    <cyclicmagic:item_pipe>,
    <cyclicmagic:energy_pipe>,
    <cyclicmagic:fluid_pipe>,
    <cyclicmagic:battery>,
    <projectex:stone_table>,
    <cyclicmagic:wand_hypno>,
    <waystones:warp_stone>,
    <openblocks:sleeping_bag>,
    <projecte:item.pe_repair_talisman>,
    <botania:blackholetalisman>,
    <extrabotany:bottledflame>,
    <cyclicmagic:heart_food>,
    <astralsorcery:blockblackmarble>,
    <thermalfoundation:material:23>,
    <cfm:item_log>,
    <projecte:item.pe_swrg>,
    <actuallyadditions:item_wings_of_the_bats>,
    <extracells:terminal.universal.wireless>,
    <danknull:dank_null_panel_0>,
    <danknull:dank_null_panel_1>,
    <danknull:dank_null_panel_2>,
    <danknull:dank_null_panel_3>,
    <danknull:dank_null_panel_4>,
    <danknull:dank_null_panel_5>,
    <danknull:dank_null_0>,
    <danknull:dank_null_1>,
    <danknull:dank_null_2>,
    <danknull:dank_null_3>,
    <danknull:dank_null_4>,
    <danknull:dank_null_5>,
    <thermalexpansion:satchel:*>,
    <cyclicmagic:cyclic_wand_build>,
    <cyclicmagic:block_vacuum>,
    <thermalexpansion:cache>,
    <appliedenergistics2:material:35>,
    <appliedenergistics2:material:36>,
    <appliedenergistics2:material:37>,
    <appliedenergistics2:material:38>,
    <extracells:storage.component>,
    <extracells:storage.component:1>,
    <extracells:storage.component:2>,
    <extracells:storage.component:3>,
    <projectex:energy_link>,
    <tconevo:material>,
    <cyclicmagic:sleeping_mat>,
    <extrabotany:material:6>,
    <binniecore:storage:*>,
    <randomthings:timeinabottle>,
    <enderio:item_soul_vial>,
    <actuallyadditions:item_spawner_changer>,
    <cyclicmagic:exp_pylon>,
    <cyclicmagic:sprinkler>,
    <hooked:hook>,
    <botania:enderhand>,
    <twilightforest:magic_map_focus>,
    <mekanism:transmitter:*>,
    <extrabitmanipulation:bodypart_template>,
    <cyclicmagic:block_miner>,
    <cyclicmagic:slingshot_weapon>,
    <ambience:soundnizer>,
    <cyclicmagic:tool_swap_match>,
    <cyclicmagic:tool_swap>,
    <tconstruct:soil>,
    <draconicevolution:wyvern_core>,
    <farmingforblockheads:fertilizer:*>,
    <rftools:shape_card:*>,
    <rftools:environmental_controller>,
    <rftools:machine_frame>,
    <thaumadditions:mithminite_plate>,
    <thaumadditions:adaminite_plate>,
    <thaumadditions:mithrillium_plate>,
    <cyclicmagic:magic_net>,
    <projecte:item.pe_dm_hammer>,
    <projecte:item.pe_dm_shears>,
    <projecte:item.pe_dm_pick>,
    <projecte:item.pe_dm_axe>,
    <projecte:item.pe_dm_shovel>,
    <projecte:item.pe_dm_sword>,
    <projecte:item.pe_dm_hoe>,
    <extrautils2:ingredients:8>,
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}),
    <thaumcraft:thaumium_helm>,
    <thaumcraft:thaumium_chest>,
    <thaumcraft:thaumium_legs>,
    <thaumcraft:thaumium_boots>,
    <thaumcraft:void_helm>,
    <thaumcraft:void_chest>,
    <thaumcraft:void_legs>,
    <thaumcraft:void_boots>,
    <randomthings:spectresword>,
    <randomthings:spectreshovel>,
    <randomthings:spectrepickaxe>,
    <tcomplement:manyullyn_helmet>,
    <tcomplement:manyullyn_chestplate>,
    <tcomplement:manyullyn_leggings>,
    <tcomplement:manyullyn_boots>,
    <minecraft:beacon>,
    <bountifulbaubles:ringflywheeladvanced>,
    <bountifulbaubles:ringflywheel>,
    <xnet:netcable>,
    <solarflux:solar_panel_2>,
    <solarflux:solar_panel_3>,
    <solarflux:solar_panel_4>,
    <solarflux:solar_panel_5>,
    <solarflux:solar_panel_6>,
    <solarflux:solar_panel_7>,
    <solarflux:solar_panel_8>,
    <solarflux:solar_panel_wyvern>,
    <solarflux:solar_panel_draconic>,
    <draconicevolution:generator>,
    <draconicadditions:chaotic_armor_generator>,
    <draconicadditions:armor_generator>,
    <extrabotany:bottledstar>,
    <treasure2:ruby_key>,
    <treasure2:sapphire_key>,
    <thaumictinkerer:black_quartz>,
    <botania:quartz>,
    <extrabotany:blockshadowium>,
    <tcomplement:materials:10>,
    <sakura:materials:56>,
    <tofucraft:tf_machine_case>,
    <projecte:rm_furnace>,
    <projecte:dm_furnace>,
    <natura:netherrack_furnace>,
    <betternether:netherrack_furnace>,
    <forestry:wood_pile>,
    <minecraft:golden_apple:1>,
    <modularmachinery:blockcasing:4>,
    <rftools:spawner>,
    <draconicevolution:draconic_spawner>,
    <enderio:block_powered_spawner>,
    <botania:spawnerclaw>,
    <botania:spawnermover>,
    <extrautils2:wateringcan>,
    <cyclicmagic:sprinkler>,
    <modularmachinery:itemmodularium>,
    <extrabotany:material:5>,
    <extrautils2:compoundbow>,
    <mekanism:electricbow>,
    <sereneseasons:greenhouse_glass>,
    <actuallyadditions:block_player_interface>,
    <tcomplement:high_oven_io:2>,
    <openblocks:sprinkler>,
    <nyx:meteor_helm>,
    <nyx:meteor_chest>,
    <nyx:meteor_pants>,
    <nyx:meteor_boots>,
    <nyx:meteor_hammer>,
    <nyx:meteor_sword>,
    <nyx:meteor_bow>,
    <nyx:meteor_pickaxe>,
    <nyx:meteor_hoe>,
    <nyx:meteor_shovel>,
    <nyx:meteor_axe>,
    <nyx:meteor_dust>,
    <extrautils2:lawsword>,
    <enderio:item_material:10>,
    <cyclicmagic:bundled_pipe>,
    <redstonearsenal:util.quiver_flux>,
    <redstonerepository:feeder>,
    <forestry:bronze_pickaxe>,
    <mekanism:basicblock:8>,
    <buildinggadgets:buildingtool>,
    <buildinggadgets:exchangertool>,
    <buildinggadgets:copypastetool>,
    <buildinggadgets:destructiontool>,
    <actuallyadditions:block_misc:8>,
    <cyclicmagic:heart_toxic>,
    <demagnetize:demagnetizer>,
    <demagnetize:demagnetizer_advanced>,
    <biomesoplenty:terrestrial_artifact>,
    <aether_legacy:valkyrie_pickaxe>,
    <aether_legacy:valkyrie_axe>,
    <aether_legacy:valkyrie_shovel>,
    <extrautils2:drum:*>,
    <randomthings:chunkanalyzer>,
    <cyclicmagic:harvester_block>,
    <mysticalagriculture:mystical_fertilizer>,
    <charm:rotten_flesh_block>,
    <extrabotany:goblinslayerhelm>,
    <extrabotany:goblinslayerchest>,
    <extrabotany:goblinslayerlegs>,
    <extrabotany:goblinslayerboots>,
    <sakura:kodachi>,
    <sakura:sakura_kodachi>,
    <sakura:tachi>,
    <animus:kama_wood>,
    <animus:kama_stone>,
    <animus:kama_iron>,
    <animus:kama_gold>,
    <animus:kama_diamond>,
    <animus:kama_bound>,
    <bloodmagic:soul_forge>,
    <thaumcraft:amber_brick>,
    <bloodarsenal:vampire_ring>,
    <bloodarsenal:blood_infused_iron_axe>,
    <bloodarsenal:blood_infused_wooden_axe>,
    <bloodmagic:upgrade_trainer>,
    <bloodmagic:upgrade_tome>
];

for ingredient in removedRecipes {
    recipes.remove(ingredient);
}

recipes.removeByRecipeName("extrautils2:watering_can");
recipes.removeByRecipeName("thaumcraft:ambertoblock");
recipes.removeByRecipeName("prefab:ender_gateway");
 
recipes.addShapeless(<minecraft:string> * 2, [<minecraft:web>]);
recipes.addShapeless("encyclopedia", omnipedia, [<akashictome:tome>]);
recipes.addShaped("tofustick", <tofucraft:tofustick>, [[<minecraft:gold_block>, <tofucraft:material:18>, <minecraft:gold_block>],[<minecraft:gold_block>, <tofucraft:blocktofumomen>, <minecraft:gold_block>], [null, <minecraft:stick>, null]]);
recipes.addShaped(<thaumcraft:nugget:10>, [[null, <minecraft:dirt>, null],[<minecraft:dirt>, <minecraft:gold_block>, <minecraft:dirt>], [null, <minecraft:dirt>, null]]);
recipes.addShaped("dragonegg", <minecraft:dragon_egg>, [[null, <ore:scaleDragonEnder>, null],[<ore:scaleDragonEnder>, <ore:netherStar>, <ore:scaleDragonEnder>], [<ore:scaleDragonEnder>, <ore:scaleDragonEnder>, <ore:scaleDragonEnder>]]);
recipes.addShaped("creativehead", <tconstruct:materials:50>, [[null, <draconicevolution:awakened_core>, null],[null, <minecraft:skull:3>.anyDamage(), null], [null, <avaritia:singularity:1>, null]]);
recipes.addShaped("witherskull", <minecraft:skull:1>, [[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],[<quark:black_ash>, <mysticalagriculture:crafting:15>, <quark:black_ash>], [<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]]);
recipes.addShaped("difficultychanger_up_2", <scalinghealth:difficultychanger:1>, [[null, <tconstruct:materials:17>, null],[<tconstruct:materials:17>, <scalinghealth:heartcontainer>, <tconstruct:materials:17>], [<tconstruct:materials:17>, <tconstruct:materials:17>, <tconstruct:materials:17>]]);
recipes.addShaped("difficultychanger_up", <scalinghealth:difficultychanger:1>, [[null, <netherex:wither_bone>, null],[<netherex:wither_bone>, <scalinghealth:heartcontainer>, <netherex:wither_bone>], [<netherex:wither_bone>, <netherex:wither_bone>, <netherex:wither_bone>]]);
recipes.addShaped("difficultychanger_down", <scalinghealth:difficultychanger:0>, [[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],[<minecraft:gold_ingot>, <scalinghealth:heartcontainer>, <minecraft:gold_ingot>], [null, <minecraft:gold_ingot>, null]]);
recipes.addShaped("totundying", <minecraft:totem_of_undying>, [[<minecraft:ender_eye>, <minecraft:golden_apple>, <minecraft:ender_eye>],[<minecraft:gold_ingot>, <minecraft:nether_star>, <minecraft:gold_ingot>], [null, <minecraft:gold_block>, null]]);
recipes.addShapeless(<thermalfoundation:material:2051>, [<minecraft:blaze_powder>,<thermalfoundation:material:2049>]);
recipes.addShapeless(<thermalfoundation:material:2053>, [<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:stone>]);
recipes.addShapeless(<prefab:block_compressed_stone:5> * 4, [<extrautils2:compresseddirt>,<extrautils2:compresseddirt>,<extrautils2:compresseddirt>,<extrautils2:compresseddirt>]);
recipes.addShapeless(<prefab:block_compressed_stone:6>, [<extrautils2:compresseddirt:1>]);
recipes.addShapeless(<extrautils2:compresseddirt:1>, [<prefab:block_compressed_stone:6>]);
recipes.addShapeless(<extrautils2:compresseddirt>, [<prefab:block_compressed_stone:5>]);
recipes.addShapeless(<prefab:block_compressed_stone:5>, [<extrautils2:compresseddirt>]);
recipes.addShapeless(<thermalfoundation:material:25>, [<aether_legacy:golden_ring>]);
recipes.addShapeless(<thermalfoundation:material:24>, [<aether_legacy:iron_ring>]);
recipes.addShaped("elytra", <minecraft:elytra>, [[<minecraft:paper>, <draconicevolution:wyvern_core>, <minecraft:paper>],[<minecraft:paper>, <minecraft:nether_star>, <minecraft:paper>], [<minecraft:paper>, null, <minecraft:paper>]]);
//recipes.addShapeless(<beneath:teleporterbeneath>, [<minecraft:iron_block>,<minecraft:gold_block>,<minecraft:diamond_block>,<minecraft:coal_block>]);
recipes.addShapeless("rotleather", <minecraft:leather>, [<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>]);
recipes.addShaped("oemod1", <oeintegration:excavatemodifier>, [[<ore:gearBronze>, <ore:gearGold>, <ore:gearBronze>],[<ore:gearGold>, <ore:gearLead>, <ore:gearGold>],[<ore:gearBronze>, <ore:gearGold>, <ore:gearBronze>]]);
recipes.addShaped("oemod2", <oeintegration:excavatemodifier>, [[<ore:gearGold>, <ore:gearBronze>, <ore:gearGold>],[<ore:gearBronze>, <ore:gearLead>, <ore:gearBronze>],[<ore:gearGold>, <ore:gearBronze>, <ore:gearGold>]]);
recipes.addShapeless("oebook", <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: oeEnchantId}]}), [<oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <minecraft:book>]);
//auto-generated
recipes.addShaped("auto_gen_2051907122", <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}}), 
[[null, <minecraft:emerald>, null],
[<minecraft:emerald>, <minecraft:egg>, <minecraft:emerald>],
[null, <minecraft:emerald>, null]]);
recipes.addShaped("auto_gen_421398898", <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:blaze"}}), 
[[null, <minecraft:blaze_powder>, null],
[<minecraft:blaze_powder>, <minecraft:egg>, <minecraft:blaze_powder>],
[null, <minecraft:blaze_powder>, null]]);
recipes.addShaped("auto_gen_-1453796942", <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blizz"}}), 
[[null, <thermalfoundation:material:2049>, null],
[<thermalfoundation:material:2049>, <minecraft:egg>, <thermalfoundation:material:2049>],
[null, <thermalfoundation:material:2049>, null]]);
recipes.addShaped("auto_gen_-497967694", <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:basalz"}}), 
[[null, <thermalfoundation:material:2053>, null],
[<thermalfoundation:material:2053>, <minecraft:egg>, <thermalfoundation:material:2053>],
[null, <thermalfoundation:material:2053>, null]]);
recipes.addShaped("auto_gen_-402635342", <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blitz"}}), 
[[null, <thermalfoundation:material:2051>, null],
[<thermalfoundation:material:2051>, <minecraft:egg>, <thermalfoundation:material:2051>],
[null, <thermalfoundation:material:2051>, null]]);
recipes.addShaped("auto_gen_-1181238140", <bountifulbaubles:trinketapple>, 
[[null, <ore:blockEmerald>, null],
[null, <minecraft:golden_apple:1>, null],
[null, <ore:blockGold>, null]]);
recipes.addShapeless("auto_gen_1334582590", <avaritia:block_resource:1>*64, [<additions:greedycraft-infinity_block_block>]);
recipes.addShapeless("auto_gen_-702569552", <additions:greedycraft-infinity_block_block>*64, [<additions:greedycraft-infinity_block_block_block>]);
recipes.addShaped("auto_gen_-2096872370", <additions:greedycraft-pioneer_medal>, 
[[<additions:greedycraft-ordinary_medal>, <additions:greedycraft-ordinary_medal>, <additions:greedycraft-ordinary_medal>],
[<additions:greedycraft-ordinary_medal>, <additions:greedycraft-ordinary_medal>, <additions:greedycraft-ordinary_medal>],
[<additions:greedycraft-ordinary_medal>, <additions:greedycraft-ordinary_medal>, <additions:greedycraft-ordinary_medal>]]);
recipes.addShaped("auto_gen_-1484361380", <additions:greedycraft-greedy_medal>, 
[[<additions:greedycraft-pioneer_medal>, <additions:greedycraft-pioneer_medal>, <additions:greedycraft-pioneer_medal>],
[<additions:greedycraft-pioneer_medal>, <additions:greedycraft-pioneer_medal>, <additions:greedycraft-pioneer_medal>],
[<additions:greedycraft-pioneer_medal>, <additions:greedycraft-pioneer_medal>, <additions:greedycraft-pioneer_medal>]]);
recipes.addShaped("auto_gen_11266081", <additions:greedycraft-item_purger>, 
[[null, null, <minecraft:stick>],
[null, <minecraft:stick>, null],
[<minecraft:wheat>, null, null]]);
recipes.addShaped("auto_gen_-2104803001", <minecraft:splash_potion>.withTag({CustomPotionEffects: [{ShowParticles: 0 as byte, Duration: 2400, Id: 1, Amplifier: 126}, {ShowParticles: 0 as byte, Duration: 2400, Id: 8, Amplifier: 126}], CustomPotionColor: 720859, display: {Lore: ["§a感受疾风吧！"], Name: "§b§o卡其脱离太"}}), 
[[<minecraft:chorus_fruit>, <minecraft:chorus_fruit>, <minecraft:chorus_fruit>],
[<minecraft:chorus_fruit>, <minecraft:glass_bottle>, <minecraft:chorus_fruit>],
[<minecraft:chorus_fruit>, <minecraft:chorus_fruit>, <minecraft:chorus_fruit>]]);
recipes.addShaped("auto_gen_1289690205", <ftbquests:lootcrate>.withTag({type:"loot_level_2"}), 
[[<ftbquests:lootcrate>.withTag({type:"loot_level_1"}), <ftbquests:lootcrate>.withTag({type:"loot_level_1"}), <ftbquests:lootcrate>.withTag({type:"loot_level_1"})],
[<ftbquests:lootcrate>.withTag({type:"loot_level_1"}), <ftbquests:lootcrate>.withTag({type:"loot_level_1"}), <ftbquests:lootcrate>.withTag({type:"loot_level_1"})],
[<ftbquests:lootcrate>.withTag({type:"loot_level_1"}), <ftbquests:lootcrate>.withTag({type:"loot_level_1"}), <ftbquests:lootcrate>.withTag({type:"loot_level_1"})]]);
recipes.addShaped("auto_gen_-1223296379", <ftbquests:lootcrate>.withTag({type:"loot_level_3"}), 
[[<ftbquests:lootcrate>.withTag({type:"loot_level_2"}), <ftbquests:lootcrate>.withTag({type:"loot_level_2"}), <ftbquests:lootcrate>.withTag({type:"loot_level_2"})],
[<ftbquests:lootcrate>.withTag({type:"loot_level_2"}), <ftbquests:lootcrate>.withTag({type:"loot_level_2"}), <ftbquests:lootcrate>.withTag({type:"loot_level_2"})],
[<ftbquests:lootcrate>.withTag({type:"loot_level_2"}), <ftbquests:lootcrate>.withTag({type:"loot_level_2"}), <ftbquests:lootcrate>.withTag({type:"loot_level_2"})]]);
recipes.addShaped("auto_gen_558684333", <ftbquests:lootcrate>.withTag({type:"loot_level_4"}), 
[[<ftbquests:lootcrate>.withTag({type:"loot_level_3"}), <ftbquests:lootcrate>.withTag({type:"loot_level_3"}), <ftbquests:lootcrate>.withTag({type:"loot_level_3"})],
[<ftbquests:lootcrate>.withTag({type:"loot_level_3"}), <ftbquests:lootcrate>.withTag({type:"loot_level_3"}), <ftbquests:lootcrate>.withTag({type:"loot_level_3"})],
[<ftbquests:lootcrate>.withTag({type:"loot_level_3"}), <ftbquests:lootcrate>.withTag({type:"loot_level_3"}), <ftbquests:lootcrate>.withTag({type:"loot_level_3"})]]);
recipes.addShaped("auto_gen_-1874338203", <minecraft:splash_potion>.withTag({CustomPotionEffects:[{ShowParticles:0 as byte,Duration:1200,Id:25,Amplifier:126}],CustomPotionColor:16722379,display:{Lore:["§b你咋不上天呢？"],Name:"§6羽化登仙药剂"}}), 
[[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>],
[<minecraft:feather>, <minecraft:glass_bottle>, <minecraft:feather>],
[<minecraft:feather>, <minecraft:feather>, <minecraft:feather>]]);
recipes.addShaped("auto_gen_6394519", <minecraft:splash_potion>.withTag({CustomPotionEffects:[{ShowParticles:0 as byte,Duration:6000,Id:27,Amplifier:126}],CustomPotionColor:0,display:{Lore:["§9今天出货率真高啊！"],Name:"§8非酋药剂"}}), 
[[<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>],
[<ore:dyeBlack>, <minecraft:glass_bottle>, <ore:dyeBlack>],
[<ore:dyeBlack>, <ore:dyeBlack>, <ore:dyeBlack>]]);
recipes.addShaped("auto_gen_684700803", <minecraft:stick>.withTag({ench:[{lvl:10,id:19}],display:{Lore:["§d§o你不要过来啊！！！"],Name:"§b击退之杖"}}), 
[[<ore:blockSlime>, <ore:blockDiamond>, <ore:blockSlime>],
[<ore:blockDiamond>, <minecraft:stick>, <ore:blockDiamond>],
[<ore:blockSlime>, <ore:blockDiamond>, <ore:blockSlime>]]);
recipes.addShapeless("auto_gen_163670440", <ftbquests:lootcrate>.withTag({type:"loot_level_1"}), [<additions:greedycraft-reward_ticket_common>]);
recipes.addShapeless("auto_gen_1701963744", <ftbquests:lootcrate>.withTag({type:"loot_level_2"}), [<additions:greedycraft-reward_ticket_rare>]);
recipes.addShapeless("auto_gen_-1818409148", <ftbquests:lootcrate>.withTag({type:"loot_level_3"}), [<additions:greedycraft-reward_ticket_epic>]);
recipes.addShapeless("auto_gen_-86832743", <ftbquests:lootcrate>.withTag({type:"loot_level_4"}), [<additions:greedycraft-reward_ticket_legendary>]);
recipes.addShaped("auto_gen_-1707222290", <additions:greedycraft-bloody_sacrifice>, 
[[<additions:greedycraft-raw_human_meat>, <tconstruct:edible:3>, <additions:greedycraft-raw_human_meat>],
[<tconstruct:edible:3>, <minecraft:bone>, <tconstruct:edible:3>],
[<additions:greedycraft-raw_human_meat>, <tconstruct:edible:3>, <additions:greedycraft-raw_human_meat>]]);
recipes.addShaped("auto_gen_-1352061026", <additions:greedycraft-bloody_sacrifice>, 
[[<tconstruct:edible:3>, <additions:greedycraft-raw_human_meat>, <tconstruct:edible:3>],
[<additions:greedycraft-raw_human_meat>, <minecraft:bone>, <additions:greedycraft-raw_human_meat>],
[<tconstruct:edible:3>, <additions:greedycraft-raw_human_meat>, <tconstruct:edible:3>]]);
recipes.addShaped("auto_gen_-2042519398", <additions:greedycraft-blood_sigil>, 
[[null, <tconstruct:edible:3>, null],
[<tconstruct:edible:3>, <abyssalcraft:ironp>, <tconstruct:edible:3>],
[null, <tconstruct:edible:3>, null]]);
recipes.addShaped("auto_gen_1805774062", <additions:greedycraft-true_blood_sigil>, 
[[<additions:greedycraft-bloody_sacrifice>, <additions:greedycraft-blood_sigil>, <additions:greedycraft-bloody_sacrifice>],
[<additions:greedycraft-blood_sigil>, <ore:shardCreative>, <additions:greedycraft-blood_sigil>],
[<additions:greedycraft-bloody_sacrifice>, <additions:greedycraft-blood_sigil>, <additions:greedycraft-bloody_sacrifice>]]);
recipes.addShaped("auto_gen_826338285", <minecraft:name_tag>, 
[[null, null, <minecraft:string>],
[null, <minecraft:gold_ingot>, null],
[<minecraft:paper>, null, null]]);
recipes.addShaped("auto_gen_-295393253", <additions:greedycraft-poopburger>, 
[[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>],
[<additions:greedycraft-poop>, <additions:greedycraft-poop>, <additions:greedycraft-poop>],
[<minecraft:wheat>, <minecraft:wheat>, <minecraft:wheat>]]);
recipes.addShapeless("auto_gen_747705352", <thermalfoundation:material:199>, [<projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>), <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]);
recipes.addShapeless("auto_gen_1647035237", <thermalfoundation:material:133>, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>)]);
recipes.addShapeless("auto_gen_104947165", <thermalfoundation:material:134>, [<projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>), <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]);
recipes.addShaped("auto_gen_-1478408197", <netherex:wither_bone>, 
[[null, <netherex:wither_dust>, null],
[<netherex:wither_dust>, <ore:bone>, <netherex:wither_dust>],
[null, <netherex:wither_dust>, null]]);
recipes.addShapeless("auto_gen_695668416", <minecraft:tallgrass:1>, [<pvj:short_grass>]);
recipes.addShaped("auto_gen_-1533033400", <chancecubes:chance_cube>*4, 
[[<minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:dye:4>],
[<minecraft:lapis_block>, <additions:greedycraft-lucky_clover>, <minecraft:lapis_block>],
[<minecraft:dye:4>, <minecraft:lapis_block>, <minecraft:dye:4>]]);
recipes.addShapeless("auto_gen_1862248730", <minecraft:potion>.withTag({Potion:"cofhcore:luck3+"}), [<minecraft:glass_bottle>, <additions:greedycraft-lucky_clover>]);
recipes.addShapeless("auto_gen_288981592", <minecraft:crafting_table>*4, [<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]);
recipes.addShapeless("auto_gen_-1694793471", <minecraft:potion>.withTag({Potion: "minecraft:water"}), [<minecraft:glass_bottle>, <minecraft:water_bucket>.transformReplace(<minecraft:water_bucket>)]);
recipes.addShapeless("auto_gen_-865558598", <minecraft:dragon_breath>, [<minecraft:glass_bottle>, <ore:skullEnderDragon>.transformReplace(<minecraft:skull:5>)]);
recipes.addShapeless("auto_gen_-340562326", <minecraft:spawn_egg>.withTag({EntityTag: {id: "abyssalcraft:chagaroth"}}), [<abyssalcraft:dreadaltartop>.transformReplace(<abyssalcraft:dreadaltartop>), <abyssalcraft:dreadaltarbottom>.transformReplace(<abyssalcraft:dreadaltarbottom>), <abyssalcraft:dreadshard>]);
recipes.addShaped("auto_gen_1124990531", <projecte:item.pe_harvest_god>, 
[[<ore:soulCreative>, <minecraft:vine>, <ore:soulCreative>],
[<minecraft:vine>, <projecte:item.pe_ring_iron_band>, <minecraft:vine>],
[<ore:soulCreative>, <minecraft:vine>, <ore:soulCreative>]]);
recipes.addShaped("auto_gen_-132199471", <projecte:nova_catalyst>, 
[[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>],
[<projecte:item.pe_matter:1>, <minecraft:tnt>, <projecte:item.pe_matter:1>],
[<projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>, <projecte:item.pe_fuel:1>]]);
recipes.addShaped("auto_gen_1281372914", <projecte:nova_cataclysm>, 
[[<projecte:nova_catalyst>, <projecte:nova_catalyst>, <projecte:nova_catalyst>],
[<projecte:nova_catalyst>, <projecte:nova_catalyst>, <projecte:nova_catalyst>],
[<projecte:nova_catalyst>, <projecte:nova_catalyst>, <projecte:nova_catalyst>]]);
recipes.addShaped("wood_to_charcoal", <minecraft:coal:1> * 4, [[null, <ore:coal>, null], [<ore:coal>, <ore:logWood>, <ore:coal>], [null, <ore:coal>, null]]);
recipes.addShaped("auto_gen_-162477942", <additions:greedycraft-medkit_small>, 
[[null, <scalinghealth:heartdust>, null],
[<scalinghealth:heartdust>, <minecraft:glass_bottle>, <scalinghealth:heartdust>],
[null, <scalinghealth:heartdust>, null]]);
recipes.addShaped("auto_gen_-1175705809", <additions:greedycraft-medkit_big>, 
[[null, <scalinghealth:crystalshard>, null],
[<scalinghealth:crystalshard>, <additions:greedycraft-medkit_small>, <scalinghealth:crystalshard>],
[null, <scalinghealth:crystalshard>, null]]);
recipes.addShaped("auto_gen_-1873046907", <additions:greedycraft-medkit_super>, 
[[null, <scalinghealth:heartcontainer>, null],
[<scalinghealth:heartcontainer>, <additions:greedycraft-medkit_big>, <scalinghealth:heartcontainer>],
[null, <scalinghealth:heartcontainer>, null]]);
recipes.addShapeless("auto_gen_1565439995", <scalinghealth:heartdust>*9, [<scalinghealth:crystalshard>]);
recipes.addShapeless("auto_gen_522430280", <scalinghealth:crystalshard>, [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]);
recipes.addShapeless("auto_gen_-1180907112", <scalinghealth:crystalshard>*9, [<scalinghealth:heartcontainer>]);
recipes.addShapeless("auto_gen_1296047035", <minecraft:splash_potion>.withTag({CustomPotionEffects:[{Duration:2400,Id:1,Amplifier:49},{Duration:2400,Id:3,Amplifier:49},{Duration:2400,Id:5,Amplifier:49},{Id:6,Amplifier:28},{Duration:2400,Id:8,Amplifier:49},{Duration:2400,Id:10,Amplifier:31},{Duration:2400,Id:11,Amplifier:4},{Duration:2400,Id:12},{Duration:2400,Id:13},{Duration:2400,Id:14},{Duration:2400,Id:16},{Duration:2400,Id:21,Amplifier:49},{Duration:2400,Id:22,Amplifier:49},{Id:23,Amplifier:119},{Duration:2400,Id:26,Amplifier:49},{Duration:2400,Id:28}],CustomPotionColor:16648959,display:{Lore:["§d蕴含了世间强大力量的药剂"],Name:"§5§l巨龙药剂"}}), [<minecraft:glass_bottle>, <additions:greedycraft-dragon_soul>, <ore:shardCreative>, <ore:shardCreative>]);
recipes.addShapeless("auto_gen_-2147158797", <minecraft:splash_potion>.withTag({CustomPotionEffects:[{Duration:2400,Id:2,Amplifier:49},{Duration:2400,Id:4,Amplifier:49},{Id:7,Amplifier:28},{Duration:2400,Id:9},{Duration:2400,Id:15},{Duration:2400,Id:17,Amplifier:49},{Duration:2400,Id:18,Amplifier:49},{Duration:2400,Id:19,Amplifier:4},{Duration:2400,Id:20,Amplifier:2},{Duration:2400,Id:24},{Duration:2400,Id:25,Amplifier:49},{Duration:2400,Id:27,Amplifier:49}],CustomPotionColor:0,display:{Lore:["蕴含了世间枯萎力量的药剂"],Name:"§8§l枯萎药剂"}}), [<minecraft:glass_bottle>, <additions:greedycraft-wither_soul>, <ore:shardCreative>, <ore:shardCreative>]);
recipes.addShapeless("auto_gen_1498134564", <ae2wtlib:wut_creative>, [<wit:wit_creative>, <wct:wct_creative>, <wft:wft_creative>]);
recipes.addShaped("auto_gen_1179581625", <mysticalagriculture:growth_accelerator>*4, 
[[<mysticalagriculture:storage:3>, <mysticalagriculture:storage:4>, <mysticalagriculture:storage:3>],
[<mysticalagriculture:storage:4>, <minecraft:diamond_block>, <mysticalagriculture:storage:4>],
[<mysticalagriculture:storage:3>, <mysticalagriculture:storage:4>, <mysticalagriculture:storage:3>]]);
recipes.addShaped("auto_gen_-1186141268", <mekanismgenerators:generator:12>, 
[[null, <mekanismgenerators:generator:10>, null],
[<mekanismgenerators:generator:10>, <ore:soulCreative>, <mekanismgenerators:generator:10>],
[null, <mekanismgenerators:generator:10>, null]]);
recipes.addShaped("page0", <additions:greedycraft-ancient_tome_page> , [[<additions:greedycraft-ancient_tome_fragment>, <additions:greedycraft-ancient_tome_fragment>, <additions:greedycraft-ancient_tome_fragment>], [<additions:greedycraft-ancient_tome_fragment>, <additions:greedycraft-ancient_tome_fragment>, <additions:greedycraft-ancient_tome_fragment>], [<additions:greedycraft-ancient_tome_fragment>, <additions:greedycraft-ancient_tome_fragment>, <additions:greedycraft-ancient_tome_fragment>]]);
recipes.addShaped("page1", <additions:greedycraft-ancient_tome> , [[<additions:greedycraft-ancient_tome_page>, <additions:greedycraft-ancient_tome_page>, <additions:greedycraft-ancient_tome_page>], [<additions:greedycraft-ancient_tome_page>, <additions:greedycraft-ancient_tome_page>, <additions:greedycraft-ancient_tome_page>], [<additions:greedycraft-ancient_tome_page>, <additions:greedycraft-ancient_tome_page>, <additions:greedycraft-ancient_tome_page>]]);
recipes.addShaped("auto_gen_-1864302722", <mekanism:machineblock:4>, 
[[<mekanism:teleportationcore>, <mekanism:machineblock:15>, <mekanism:teleportationcore>],
[<mekanism:robit>, <mekanism:basicblock:8>, <mekanism:machineblock2:6>],
[<ore:shardCreative>, <ore:blockWyvernMetal>, <ore:shardCreative>]]);
recipes.addShaped("auto_gen_-1668597593", <actuallyadditions:block_giant_chest>, 
[[<prefab:item_bundle_of_timber>, <prefab:item_bundle_of_timber>, <prefab:item_bundle_of_timber>],
[<prefab:item_bundle_of_timber>, <actuallyadditions:block_misc:4>, <prefab:item_bundle_of_timber>],
[<prefab:item_bundle_of_timber>, <prefab:item_bundle_of_timber>, <prefab:item_bundle_of_timber>]]);
recipes.addShaped("auto_gen_2122389881", <actuallyadditions:block_giant_chest_medium>, 
[[<prefab:item_bundle_of_timber>, <ironchest:iron_chest>, <prefab:item_bundle_of_timber>],
[<ironchest:iron_chest>, <prefab:item_bundle_of_timber>, <ironchest:iron_chest>],
[<prefab:item_bundle_of_timber>, <actuallyadditions:block_giant_chest>, <prefab:item_bundle_of_timber>]]);
recipes.addShaped("auto_gen_-158563439", <actuallyadditions:block_giant_chest_large>, 
[[<prefab:item_bundle_of_timber>, <ironchest:iron_chest:2>, <prefab:item_bundle_of_timber>],
[<ironchest:iron_chest:2>, <prefab:item_bundle_of_timber>, <ironchest:iron_chest:2>],
[<prefab:item_bundle_of_timber>, <actuallyadditions:block_giant_chest_medium>, <prefab:item_bundle_of_timber>]]);
recipes.addShaped("auto_gen_-1579945966", <simplesmelteryaccelerator:smeltery_accelerator>, 
[[<tconstruct:materials>, <tconstruct:ingots:2>, <tconstruct:materials>],
[<tconstruct:ingots:2>, <minecraft:diamond_block>, <tconstruct:ingots:2>],
[<tconstruct:materials>, <tconstruct:ingots:2>, <tconstruct:materials>]]);
recipes.addShaped("auto_gen_1084804943", <mekanismgenerators:generator:6> * 10, 
[[null, <mekanism:enrichedalloy>, null],
[<mekanism:enrichedalloy>, <ore:shardCreative>, <mekanism:enrichedalloy>],
[<mekanism:energytablet>, <mekanism:controlcircuit>, <mekanism:energytablet>]]);
recipes.addShaped("auto_gen_685141373", <mekanismgenerators:generator:5>, 
[[<mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>, <mekanismgenerators:generator:1>],
[<mekanismgenerators:generator:1>, <mekanism:atomicalloy>, <mekanismgenerators:generator:1>],
[<mekanism:enrichedalloy>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>]]);
recipes.addShaped("auto_gen_1109831349", <mekanismgenerators:generator:1>, 
[[<mekanismgenerators:solarpanel>, <mekanismgenerators:solarpanel>, <mekanismgenerators:solarpanel>],
[<mekanism:enrichedalloy>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>],
[<mekanism:enrichedalloy>, <mekanism:enrichedalloy>, <mekanism:enrichedalloy>]]);
recipes.addShaped("auto_gen_-1399323772", <projecte:item.pe_soul_stone>, 
[[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
[<botania:storage:3>, <ore:shardCreative>, <botania:storage:3>],
[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped("auto_gen_-1815095390", <projecte:item.pe_body_stone>, 
[[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>],
[<ore:shardCreative>, <minecraft:redstone_block>, <ore:shardCreative>],
[<minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>]]);
recipes.addShaped("auto_gen_-1600085367", <additions:greedycraft-experience_ingot>, 
[[<additions:greedycraft-experience_nugget>, <additions:greedycraft-experience_nugget>, <additions:greedycraft-experience_nugget>],
[<additions:greedycraft-experience_nugget>, <additions:greedycraft-experience_nugget>, <additions:greedycraft-experience_nugget>],
[<additions:greedycraft-experience_nugget>, <additions:greedycraft-experience_nugget>, <additions:greedycraft-experience_nugget>]]);
recipes.addShaped("auto_gen_1001889940", <additions:greedycraft-experience_block>, 
[[<additions:greedycraft-experience_ingot>, <additions:greedycraft-experience_ingot>, <additions:greedycraft-experience_ingot>],
[<additions:greedycraft-experience_ingot>, <additions:greedycraft-experience_ingot>, <additions:greedycraft-experience_ingot>],
[<additions:greedycraft-experience_ingot>, <additions:greedycraft-experience_ingot>, <additions:greedycraft-experience_ingot>]]);
recipes.addShaped("auto_gen_-1190739388", <additions:greedycraft-compressed_experience_block>, 
[[<additions:greedycraft-experience_block>, <additions:greedycraft-experience_block>, <additions:greedycraft-experience_block>],
[<additions:greedycraft-experience_block>, <additions:greedycraft-experience_block>, <additions:greedycraft-experience_block>],
[<additions:greedycraft-experience_block>, <additions:greedycraft-experience_block>, <additions:greedycraft-experience_block>]]);
recipes.addShapeless("auto_gen_269849607", <additions:greedycraft-experience_block>*9, [<additions:greedycraft-compressed_experience_block>]);
recipes.addShapeless("auto_gen_680300395", <additions:greedycraft-experience_ingot>*9, [<additions:greedycraft-experience_block>]);
recipes.addShapeless("auto_gen_198647556", <additions:greedycraft-experience_nugget>*9, [<additions:greedycraft-experience_ingot>]);
recipes.addShapeless("auto_gen_1353175347", <additions:greedycraft-experience_nugget>, [<mysticalagriculture:xp_droplet>]);
recipes.addShaped("auto_gen_235539040", <additions:greedycraft-experience_ingot>, 
[[<mysticalagriculture:xp_droplet>, <mysticalagriculture:xp_droplet>, <mysticalagriculture:xp_droplet>],
[<mysticalagriculture:xp_droplet>, <mysticalagriculture:xp_droplet>, <mysticalagriculture:xp_droplet>],
[<mysticalagriculture:xp_droplet>, <mysticalagriculture:xp_droplet>, <mysticalagriculture:xp_droplet>]]);
recipes.addShapeless("auto_gen_244244256", <projecte:transmutation_table>, [<projectex:stone_table>]);
recipes.addShaped("auto_gen_284734971", <minecraft:spawn_egg>.withTag({EntityTag:{id:"minecraft:cow"}}), 
[[null, <minecraft:leather>, null],
[<minecraft:leather>, <minecraft:egg>, <minecraft:leather>],
[null, <minecraft:leather>, null]]);
recipes.addShaped("auto_gen_-1799280324", <minecraft:spawn_egg>.withTag({EntityTag:{id:"minecraft:enderman"}}), 
[[null, <minecraft:ender_pearl>, null],
[<minecraft:ender_pearl>, <minecraft:egg>, <minecraft:ender_pearl>],
[null, <minecraft:ender_pearl>, null]]);
recipes.addShaped("auto_gen_-444867109", <tconstruct:tooltables>, 
[[<ore:plankWood>, <ore:plankWood>],
[<ore:plankWood>, <ore:plankWood>]]);
recipes.addShapeless("auto_gen_-1011385798", <minecraft:crafting_table>, [<tconstruct:tooltables>]);
recipes.addShaped("auto_gen_893026726", <ironchest:iron_chest:2>, 
[[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
[<minecraft:diamond>, <minecraft:gold_block>, <minecraft:diamond>],
[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>]]);
recipes.addShaped("auto_gen_-2024479741", <additions:greedycraft-aurora_heart>, 
[[<quark:rune:16>, <quark:rune:16>, <quark:rune:16>],
[<quark:rune:16>, <mowziesmobs:ice_crystal>, <quark:rune:16>],
[<quark:rune:16>, <quark:rune:16>, <quark:rune:16>]]);
//recipes.addShapeless("auto_gen_-1139630037", <scalinghealth:heartcontainer>, [<bountifulbaubles:trinketbrokenheart>, <scalinghealth:crystalshard>]);
recipes.addShaped("auto_gen_-503951361", <additions:greedycraft-experience_ingot>*8, 
[[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>],
[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>],
[<actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>, <actuallyadditions:item_solidified_experience>]]);
recipes.removeByRecipeName("projecte:conversions/emerald_to_diamond");
recipes.removeByRecipeName("projecte:conversions/diamond_to_emerald");
recipes.removeByRecipeName("projecte:conversions/diamond_to_iron");
recipes.removeByRecipeName("projecte:conversions/gold_to_diamond");
recipes.removeByRecipeName("projecte:conversions/iron_to_gold");
recipes.removeByRecipeName("projecte:conversions/gold_to_iron");
recipes.addShaped("auto_gen_-626897020", <projecte:interdiction_torch>, 
[[null, <ore:shardCreative>, null],
[<projecte:item.pe_matter:1>, <minecraft:torch>, <projecte:item.pe_matter:1>],
[<minecraft:glowstone_dust>, <minecraft:glowstone_dust>, <minecraft:glowstone_dust>]]);
recipes.addShapeless("auto_gen_741775353", <thermalfoundation:material:135>, [<projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>), <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]);
recipes.addShapeless("auto_gen_1102737540", <actuallyadditions:item_misc:20>, [<enderio:item_broken_spawner>]);
recipes.addShapeless("auto_gen_21729634", <minecraft:tallgrass:1>, [<biomesoplenty:plant_0:1>]);
recipes.addShapeless("auto_gen_1318457067", <minecraft:tallgrass:1>, [<biomesoplenty:plant_0>]);
recipes.addShaped("auto_gen_-378684063", <bountifulbaubles:ringiron>, 
[[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>],
[<ore:nuggetIron>, null, <ore:nuggetIron>],
[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]]);
recipes.addShaped("auto_gen_-893381298", <draconicevolution:grinder>, 
[[<minecraft:iron_block>, <draconicevolution:awakened_core>, <minecraft:iron_block>],
[<draconicevolution:awakened_core>, <tconevo:metal_block:2>, <draconicevolution:awakened_core>],
[<minecraft:iron_block>, <draconicevolution:awakened_core>, <minecraft:iron_block>]]);
recipes.addShaped("auto_gen_-1988060210", <extrautils2:rainbowgenerator>, 
[[<additions:greedycraft-aurora_heart>, <extrautils2:rainbowgenerator:2>, <additions:greedycraft-aurora_heart>],
[<ore:soulCreative>, <ore:soulCreative>, <ore:soulCreative>],
[<additions:greedycraft-aurora_heart>, <extrautils2:rainbowgenerator:1>, <additions:greedycraft-aurora_heart>]]);
recipes.addShaped("auto_gen_-360710734", <extrautils2:chickenring>, 
[[<ore:feather>, <minecraft:iron_ingot>, <ore:feather>],
[<minecraft:iron_ingot>, <magicfeather:magicfeather>, <minecraft:iron_ingot>],
[<ore:feather>, <minecraft:iron_ingot>, <ore:feather>]]);
recipes.addShapeless("auto_gen_1921390605", <extrautils2:teleporter:1>, [<ore:blockCoal>, <ore:blockDiamond>, <ore:blockIron>, <ore:blockGold>]);
recipes.addShapeless("auto_gen_1910785345", <additions:greedycraft-death_counter>, [<tconstruct:pattern>, <minecraft:bone>]);
recipes.addShaped("auto_gen_-2072364347", <minecraft:spawn_egg>.withTag({EntityTag:{id:"minecraft:ghast"}}), 
[[<ore:dustGlowstone>, <ore:blockGlass>, <ore:dustGlowstone>],
[<ore:blockGlass>, <minecraft:egg>, <ore:blockGlass>],
[<ore:dustGlowstone>, <ore:blockGlass>, <ore:dustGlowstone>]]);
recipes.addShapeless("auto_gen_-384348300", <mysticalagriculture:crafting:1>, [<mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>]);
recipes.addShapeless("auto_gen_-892246609", <mysticalagriculture:crafting:2>, [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]);
recipes.addShapeless("auto_gen_1365854354", <mysticalagriculture:crafting:3>, [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]);
recipes.addShapeless("auto_gen_-671011979", <mysticalagriculture:crafting:4>, [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]);
recipes.addShapeless("auto_gen_271729765", <mysticalagriculture:crafting:33>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>]);
recipes.addShapeless("auto_gen_2055027330", <mysticalagriculture:crafting:34>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]);
recipes.addShapeless("auto_gen_1970110023", <mysticalagriculture:crafting:35>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]);
recipes.addShapeless("auto_gen_1885192716", <mysticalagriculture:crafting:36>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]);
recipes.addShapeless("auto_gen_1800275409", <mysticalagriculture:crafting:37>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]);
recipes.addShapeless("auto_gen_-756405691", <mysticalagradditions:insanium>, [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]);
recipes.addShapeless("auto_gen_-1248999641", <mysticalagradditions:insanium:2>, [<mysticalagriculture:crafting:32>, <mysticalagradditions:insanium>, <mysticalagradditions:insanium>, <mysticalagradditions:insanium>, <mysticalagradditions:insanium>]);
recipes.addShaped("auto_gen_-1542308372", <cyclicmagic:cable_wireless>, 
[[<thermalfoundation:material:167>, <minecraft:ender_eye>, <thermalfoundation:material:167>],
[<minecraft:ender_eye>, <minecraft:chest>, <minecraft:ender_eye>],
[<thermalfoundation:material:167>, <minecraft:ender_eye>, <thermalfoundation:material:167>]]);
recipes.addShaped("auto_gen_142121176", <cyclicmagic:cable_wireless_energy>, 
[[<thermalfoundation:material:167>, <minecraft:ender_eye>, <thermalfoundation:material:167>],
[<minecraft:ender_eye>, <minecraft:redstone_block>, <minecraft:ender_eye>],
[<thermalfoundation:material:167>, <minecraft:ender_eye>, <thermalfoundation:material:167>]]);
recipes.addShaped("auto_gen_-1750189736", <cyclicmagic:cable_wireless_fluid>, 
[[<thermalfoundation:material:167>, <minecraft:ender_eye>, <thermalfoundation:material:167>],
[<minecraft:ender_eye>, <minecraft:bucket>, <minecraft:ender_eye>],
[<thermalfoundation:material:167>, <minecraft:ender_eye>, <thermalfoundation:material:167>]]);
recipes.addShaped("auto_gen_-1513078655", <cyclicmagic:battery>, 
[[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
[<ore:ingotTin>, <thaumcraft:nugget:10>, <ore:ingotTin>],
[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>]]);
recipes.addShaped("auto_gen_918073950", <waystones:warp_stone>, 
[[<ore:gemAmethyst>, <ore:gemDiamond>, <ore:gemAmethyst>],
[<ore:gemDiamond>, <ore:pearlEnderEye>, <ore:gemDiamond>],
[<ore:gemAmethyst>, <ore:gemDiamond>, <ore:gemAmethyst>]]);
recipes.addShaped("auto_gen_2018337295", <thermalfoundation:material:23>, 
[[null, <ore:cobblestone>, null],
[<ore:cobblestone>, null, <ore:cobblestone>],
[null, <ore:cobblestone>, null]]);
recipes.addShaped("auto_gen_2018337296", <enderio:item_material:10>, 
[[null, <ore:cobblestone>, null],
[<ore:cobblestone>, <ore:stickWood>, <ore:cobblestone>],
[null, <ore:cobblestone>, null]]);
recipes.addShapeless("auto_gen_-1317989727", <astralsorcery:blockmarble:6>*3, [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]);
recipes.addShapeless("auto_gen_1877622542", <astralsorcery:blockmarble>, [<ore:stoneMarble>]);
recipes.addShapeless("auto_gen_-1801128435", <astralsorcery:blockmarble>, [<pvj:marble>]);
recipes.addShapeless("auto_gen_303589427", <quark:marble>, [<ore:stoneMarble>]);
recipes.addShapeless("auto_gen_-739881408", <chisel:marble2:7>, [<ore:stoneMarble>]);
recipes.addShaped("auto_gen_-1351813342", <cfm:item_log>*16, 
[[<ore:logWood>, <ore:logWood>],
[null, null]]);
recipes.addShaped("auto_gen_272915411", <minecraft:crafting_table>*4, 
[[<ore:workbench>, <ore:workbench>],
[<ore:workbench>, <ore:workbench>]]);
recipes.addShaped("auto_gen_-1836563570", <projecte:item.pe_swrg>, 
[[<ore:feather>, <ore:shardCreative>, <ore:feather>],
[<magicfeather:magicfeather>, <projecte:item.pe_ring_iron_band>, <magicfeather:magicfeather>],
[<ore:feather>, <ore:shardCreative>, <ore:feather>]]);
recipes.addShaped("auto_gen_1736866776", <actuallyadditions:item_wings_of_the_bats>, 
[[null, <draconicevolution:wyvern_core>, null],
[<actuallyadditions:item_misc:15>, <actuallyadditions:item_misc:15>, <actuallyadditions:item_misc:15>],
[<actuallyadditions:item_misc:15>, <minecraft:elytra>, <actuallyadditions:item_misc:15>]]);
            
recipes.addShaped("auto_gen_-136091464", <extracells:terminal.universal.wireless>, 
[[<appliedenergistics2:wireless_terminal>, <ore:wool>, null],
[null, null, null],
[null, null, null]]);
recipes.addShaped("auto_gen_695406342", <projecte:item.pe_repair_talisman>, 
[[<ore:shardCreative>, <ore:shardCreative>, <ore:shardCreative>],
[<tconstruct:materials:19>, <projecte:item.pe_matter:1>, <tconstruct:materials:19>],
[<projecte:item.pe_covalence_dust>, <projecte:item.pe_covalence_dust:2>, <projecte:item.pe_covalence_dust:1>]]);
recipes.addShaped("bh_medal_upgrade0", <additions:greedycraft-bounty_hunter_medal_silver>, 
[[<additions:greedycraft-bounty_hunter_medal_bronze>, <additions:greedycraft-bounty_hunter_medal_bronze>, <additions:greedycraft-bounty_hunter_medal_bronze>],
[<additions:greedycraft-bounty_hunter_medal_bronze>, <additions:greedycraft-bounty_hunter_medal_bronze>, <additions:greedycraft-bounty_hunter_medal_bronze>],
[<additions:greedycraft-bounty_hunter_medal_bronze>, <additions:greedycraft-bounty_hunter_medal_bronze>, <additions:greedycraft-bounty_hunter_medal_bronze>]]);
recipes.addShaped("bh_medal_upgrade1", <additions:greedycraft-bounty_hunter_medal>, 
[[<additions:greedycraft-bounty_hunter_medal_silver>, <additions:greedycraft-bounty_hunter_medal_silver>, <additions:greedycraft-bounty_hunter_medal_silver>],
[<additions:greedycraft-bounty_hunter_medal_silver>, <additions:greedycraft-bounty_hunter_medal_silver>, <additions:greedycraft-bounty_hunter_medal_silver>],
[<additions:greedycraft-bounty_hunter_medal_silver>, <additions:greedycraft-bounty_hunter_medal_silver>, <additions:greedycraft-bounty_hunter_medal_silver>]]);
recipes.addShaped("auto_gen_-609778103", <danknull:dank_null_panel_0>, 
[[<ore:dustRedstone>, <ore:gemCoal>, <ore:dustRedstone>],
[<ore:gemCoal>, <ore:dustRedstone>, <ore:gemCoal>],
[<ore:dustRedstone>, <ore:gemCoal>, <ore:dustRedstone>]]);
recipes.addShaped("auto_gen_-1593973926", <danknull:dank_null_panel_1>, 
[[<ore:gemLapis>, <ore:gemCoal>, <ore:gemLapis>],
[<ore:gemCoal>, <ore:gemLapis>, <ore:gemCoal>],
[<ore:gemLapis>, <ore:gemCoal>, <ore:gemLapis>]]);
recipes.addShaped("auto_gen_1115440192", <danknull:dank_null_panel_2>, 
[[<ore:ingotIron>, <ore:gemCoal>, <ore:ingotIron>],
[<ore:gemCoal>, <ore:ingotIron>, <ore:gemCoal>],
[<ore:ingotIron>, <ore:gemCoal>, <ore:ingotIron>]]);
recipes.addShaped("auto_gen_-1283760985", <danknull:dank_null_panel_3>, 
[[<ore:ingotGold>, <ore:gemCoal>, <ore:ingotGold>],
[<ore:gemCoal>, <ore:ingotGold>, <ore:gemCoal>],
[<ore:ingotGold>, <ore:gemCoal>, <ore:ingotGold>]]);
recipes.addShaped("auto_gen_1421367790", <danknull:dank_null_panel_4>, 
[[<ore:gemDiamond>, <ore:gemCoal>, <ore:gemDiamond>],
[<ore:gemCoal>, <ore:gemDiamond>, <ore:gemCoal>],
[<ore:gemDiamond>, <ore:gemCoal>, <ore:gemDiamond>]]);
recipes.addShaped("auto_gen_-1058951393", <danknull:dank_null_panel_5>, 
[[<ore:gemEmerald>, <ore:gemCoal>, <ore:gemEmerald>],
[<ore:gemCoal>, <ore:gemEmerald>, <ore:gemCoal>],
[<ore:gemEmerald>, <ore:gemCoal>, <ore:gemEmerald>]]);
recipes.addShaped("dank_null_0", <danknull:dank_null_0>, 
[[null, <danknull:dank_null_panel_0>, null],
[<danknull:dank_null_panel_0>, <ore:chest>, <danknull:dank_null_panel_0>],
[null, <danknull:dank_null_panel_0>, null]]);
recipes.addShapeless("auto_gen_-880073734", <forge:bucketfilled>, [<forge:bucketfilled>.withTag({ForgeCaps:{"astralsorcery:cap_item_amulet_holder":{}},tag:{FluidName:"resin",Amount:1000}})]);
recipes.addShapeless("auto_gen_-983697411", <forge:bucketfilled>, [<forge:bucketfilled>.withTag({ForgeCaps:{"astralsorcery:cap_item_amulet_holder":{}},tag:{FluidName:"binnie.resin",Amount:1000}})]);
recipes.addShapeless("auto_gen_-628920196", <minecraft:experience_bottle>, [<minecraft:glass_bottle>, <actuallyadditions:item_crystal_empowered:1>]);
recipes.addShapeless("auto_gen_-2041446050", <storagedrawers:upgrade_creative>*32, 
[<storagedrawers:upgrade_template>, <ore:shardCreative>]);
recipes.addShapeless("auto_gen_-2041446051", <storagedrawers:upgrade_creative>, 
[<storagedrawers:upgrade_template>, <draconicevolution:awakened_core>]);
recipes.addShapeless("auto_gen_-60414065", <mysticalagradditions:insanium>*9, [<ore:blockInsaniumEssence>]);
recipes.addShapeless("auto_gen_1844726144", <mysticalagriculture:crafting:4>*9, [<ore:blockSupremiumEssence>]);
recipes.addShapeless("auto_gen_1323422212", <mysticalagriculture:crafting:3>*9, [<ore:blockSuperiumEssence>]);
recipes.addShapeless("auto_gen_662804194", <mysticalagriculture:crafting:2>*9, [<ore:blockIntermediumEssence>]);
recipes.addShapeless("auto_gen_1137610693", <mysticalagriculture:crafting:1>*9, [<ore:blockPrudentiumEssence>]);
recipes.addShapeless("auto_gen_-163727312", <mysticalagriculture:crafting>*9, [<ore:blockInferiumEssence>]);
recipes.addShaped("auto_gen_-555162558", <appliedenergistics2:material:35> * 4, 
[[null, <ore:dustRedstone>, null],
[<ore:dustRedstone>, <ore:gemQuartz>, <ore:dustRedstone>],
[null, <ore:dustRedstone>, null]]);
recipes.addShapeless("auto_gen_-1028255111", <appliedenergistics2:material:36>, [<appliedenergistics2:material:35>, <appliedenergistics2:material:35>, <appliedenergistics2:material:35>, <appliedenergistics2:material:35>]);
recipes.addShapeless("auto_gen_-1168410344", <appliedenergistics2:material:37>, [<appliedenergistics2:material:36>, <appliedenergistics2:material:36>, <appliedenergistics2:material:36>, <appliedenergistics2:material:36>]);
recipes.addShapeless("auto_gen_-1308565577", <appliedenergistics2:material:38>, [<appliedenergistics2:material:37>, <appliedenergistics2:material:37>, <appliedenergistics2:material:37>, <appliedenergistics2:material:37>]);
recipes.addShapeless("auto_gen_-326012325", <extracells:storage.component>, [<appliedenergistics2:material:38>, <appliedenergistics2:material:38>, <appliedenergistics2:material:38>, <appliedenergistics2:material:38>]);
recipes.addShapeless("auto_gen_159103536", <extracells:storage.component:1>, [<extracells:storage.component>, <extracells:storage.component>, <extracells:storage.component>, <extracells:storage.component>]);
recipes.addShapeless("auto_gen_-981757333", <extracells:storage.component:2>, [<extracells:storage.component:1>, <extracells:storage.component:1>, <extracells:storage.component:1>, <extracells:storage.component:1>]);
recipes.addShapeless("auto_gen_1276343630", <extracells:storage.component:3>, [<extracells:storage.component:2>, <extracells:storage.component:2>, <extracells:storage.component:2>, <extracells:storage.component:2>]);
recipes.addShapeless("auto_gen_462958864", <projectex:energy_link>, [<projecte:transmutation_table>.transformReplace(<projecte:transmutation_table>), <rftools:machine_frame>]);
recipes.addShapeless("pack_guide_book", <patchouli:guide_book>.withTag({"patchouli:book":"patchouli:greedycraft_guide_book"}), [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);
recipes.addShaped("auto_gen_591200402", <additions:greedycraft-purifying_pill>, 
[[null, <ore:shardCreative>, null],
[<ore:shardCreative>, <thaumcraft:sanity_soap>, <ore:shardCreative>],
[null, <ore:shardCreative>, null]]);
recipes.addShapeless("auto_gen_-1966891614", <quark:black_ash>, [<darkutils:material>]);
recipes.addShapeless("auto_gen_2033568330", <enderio:item_material:63>, [<quark:black_ash>]);
recipes.addShapeless("auto_gen_254615916", <quark:black_ash>, [<enderio:item_material:63>]);
recipes.addShapeless("auto_gen_-2112645397", <quark:black_ash>, [<netherex:wither_dust>]);
recipes.addShapeless("auto_gen_1194975689", <netherex:wither_dust>, [<quark:black_ash>]);
recipes.addShapeless("auto_gen_-1387251411", <netherex:wither_dust>, [<darkutils:material>]);
recipes.addShapeless("auto_gen_932948151", <netherex:wither_dust>, [<enderio:item_material:63>]);
recipes.addShaped("auto_gen_-696385933", <additions:greedycraft-bravery_certificate>, 
[[<ore:ingotAsgardium>, <ore:netherStar>, <ore:ingotAsgardium>],
[<abyssalcraft:cingot>, <tinkersaether:valkyrie_block>, <abyssalcraft:cingot>],
[<ore:ingotAeroite>, <aether_legacy:golden_amber>, <ore:ingotAeroite>]]);
recipes.addShaped("auto_gen_252415292", <additions:greedycraft-fusion_matrix_block>, 
[[<tconevo:material>, <tconevo:material>, <tconevo:material>],
[<tconevo:material>, <tconevo:material>, <tconevo:material>],
[<tconevo:material>, <tconevo:material>, <tconevo:material>]]);
recipes.addShapeless("auto_gen_455125292", <tconevo:material> * 9, [<ore:blockFusionMatrix>]);
recipes.addShaped("auto_gen_-1748732628", <extrabotany:material:6>, 
[[<ore:gaiaIngot>, <ore:ingotShadowium>, <ore:gaiaIngot>],
[<ore:ingotPhotonium>, <draconicevolution:dragon_heart>, <ore:ingotPhotonium>],
[<ore:gaiaIngot>, <ore:ingotShadowium>, <ore:gaiaIngot>]]);
recipes.addShaped("auto_gen_-646800657", <thaumcraft:creative_flux_sponge>, 
[[<thaumcraft:ingot:1>, <minecraft:sponge>, <thaumcraft:ingot:1>],
[<minecraft:sponge>, <ore:shardCreative>, <minecraft:sponge>],
[<thaumcraft:ingot:1>, <minecraft:sponge>, <thaumcraft:ingot:1>]]);
recipes.addShaped("auto_gen_-887606647", <toolprogression:magic_mushroom>, 
[[null, <ore:ingotDraconicMetal>, null],
[<ore:ingotManasteel>, <ore:mushroomAny>, <ore:ingotManasteel>],
[null, <ore:ingotDraconicMetal>, null]]);
recipes.addShaped("auto_gen_708890545", <extrautils2:chunkloader>, 
[[<ore:stickWood>, <ore:eyeofredstone>, <ore:stickWood>],
[<ore:stickWood>, <ore:gemEmerald>, <ore:stickWood>],
[null, <ore:stickWood>, null]]);
recipes.addShaped("auto_gen_-1606461473", <additions:greedycraft-death_coin>, 
[[<draconicevolution:awakened_core>, <additions:greedycraft-ancient_tome_fragment>, <draconicevolution:awakened_core>],
[<tconevo:metal:5>, <additions:greedycraft-bounty_hunter_medal>, <tconevo:metal:5>],
[<draconicevolution:awakened_core>, <ore:shardCreative>, <draconicevolution:awakened_core>]]);
recipes.addShaped("auto_gen_-1300353737", <additions:infernium_ingot>, 
[[<additions:greedycraft-infernium_nugget>, <additions:greedycraft-infernium_nugget>, <additions:greedycraft-infernium_nugget>],
[<additions:greedycraft-infernium_nugget>, <additions:greedycraft-infernium_nugget>, <additions:greedycraft-infernium_nugget>],
[<additions:greedycraft-infernium_nugget>, <additions:greedycraft-infernium_nugget>, <additions:greedycraft-infernium_nugget>]]);
recipes.addShaped("auto_gen_1001339440", <additions:greedycraft-infernium_block>, 
[[<additions:infernium_ingot>, <additions:infernium_ingot>, <additions:infernium_ingot>],
[<additions:infernium_ingot>, <additions:infernium_ingot>, <additions:infernium_ingot>],
[<additions:infernium_ingot>, <additions:infernium_ingot>, <additions:infernium_ingot>]]);
recipes.addShapeless("auto_gen_330301095", <additions:infernium_ingot>*9, [<additions:greedycraft-infernium_block>]);
recipes.addShapeless("auto_gen_193347573", <additions:greedycraft-infernium_nugget>*9, [<additions:infernium_ingot>]);
recipes.addShaped("auto_gen_-627290965", <randomthings:timeinabottle>, 
[[<ore:shardCreative>, <draconicevolution:awakened_core>, <ore:shardCreative>],
[<draconicevolution:awakened_core>, <minecraft:glass_bottle>, <draconicevolution:awakened_core>],
[<ore:shardCreative>, <draconicevolution:awakened_core>, <ore:shardCreative>]]);
recipes.addShapeless("unlock_chest", <additions:greedycraft-tower_chest_unlocked>, 
[<additions:tower_chest>, <additions:greedycraft-tower_chest_key>.anyDamage().transformDamage(1)]);
recipes.addShapeless("stone", <additions:greedycraft-pebble>, 
[<ore:rocks>]);
recipes.addShapeless("twig", <minecraft:stick>, 
[<ore:twigs>]);
recipes.addShaped("auto_gen_1077378325", <minecraft:vine>, 
[[<ore:plantFibre>, null, <ore:plantFibre>],
[<ore:plantFibre>, <ore:plantFibre>, <ore:plantFibre>],
[<ore:plantFibre>, null, <ore:plantFibre>]]);
recipes.addShaped("auto_gen_-1896387144", <ambience:ocarina>, 
[[null, <minecraft:light_blue_glazed_terracotta>, null],
[<minecraft:light_blue_glazed_terracotta>, <ore:soulCreative>, <minecraft:light_blue_glazed_terracotta>],
[null, <minecraft:light_blue_glazed_terracotta>, null]]);
recipes.addShaped("auto_gen_-1617883388", <ambience:horn>, 
[[null, <ore:soulCreative>, null],
[<ore:soulCreative>, <twilightforest:crumble_horn>, <ore:soulCreative>],
[null, <ore:soulCreative>, null]]);
recipes.addShapeless("auto_gen_-1599197603", <additions:greedycraft-grass_string>, [<ore:plantFibre>, <ore:plantFibre>, <ore:plantFibre>]);
recipes.addShapeless("auto_gen_-689226972", <additions:greedycraft-crude_hatchet>, [<ore:pebble>, <ore:string>, <ore:stickWood>]);
recipes.addShaped("auto_gen_1397188541", <hooked:hook>, 
[[<ore:stickWood>, <ore:stickWood>, <minecraft:stone_pickaxe>],
[null, <ore:string>, <ore:stickWood>],
[<ore:string>, null, <ore:stickWood>]]);
recipes.addShaped("auto_gen_1131299393", <pvj:goon_bile>, 
[[<minecraft:rotten_flesh>, null, <minecraft:rotten_flesh>],
[null, null, null],
[<minecraft:rotten_flesh>, null, <minecraft:rotten_flesh>]]);
recipes.addShapeless("auto_gen_-1342866062", <twilightforest:magic_map_focus>, [<twilightforest:raven_feather>, <twilightforest:torchberries>]);
recipes.addShapeless("clam", <pvj:clam>, [<pvj:seashells>]);
recipes.addShapeless("rose_gold_dust", <mca:rose_gold_dust> * 3, [<ore:dustGold>, <ore:dustCopper>, <ore:dustSilver>]);
recipes.addShapeless("sand_to_glass", <minecraft:glass>, [<ore:sand>, <additions:greedycraft-fake_philosopher_stone>.transformReplace(<additions:greedycraft-fake_philosopher_stone>)]);
recipes.addShapeless("pinecone", <additions:greedycraft-pinecone>, [<pvj:pinecones>]);
recipes.addShapeless("stick", <minecraft:stick>, [<ore:twigs>]);
recipes.addShapeless("earth_talisman", <mowziesmobs:earth_talisman>, [<ore:dirt>, <ore:shardCreative>, <ore:shardCreative>]);
recipes.addShaped("auto_gen_-138403773", <additions:greedycraft-cryonium_block>, 
[[<ore:ingotCryonium>, <ore:ingotCryonium>, <ore:ingotCryonium>],
[<ore:ingotCryonium>, <ore:ingotCryonium>, <ore:ingotCryonium>],
[<ore:ingotCryonium>, <ore:ingotCryonium>, <ore:ingotCryonium>]]);
recipes.addShapeless("auto_gen_-518845405", <additions:cryonium_ingot>*9, [<ore:blockCryonium>]);
recipes.addShaped("auto_gen_100207823", <additions:greedycraft-beast_hand>, 
[[null, <ore:blockSnow>, null],
[<twilightforest:alpha_fur>, <ore:dustDraconium>, <twilightforest:alpha_fur>],
[null, <twilightforest:alpha_fur>, null]]);
recipes.addShaped("auto_gen_1913024224", <additions:greedycraft-sun_totem>, 
[[null, <draconicevolution:wyvern_core>, null],
[<ore:ingotSolarium>, <minecraft:totem_of_undying>, <ore:ingotSolarium>],
[null, <ore:netherStar>, null]]);
recipes.addShaped("auto_gen_-935233766", <cyclicmagic:block_miner>, 
[[null, <minecraft:iron_pickaxe>, null],
[<ore:circuitUltimate>, <rftools:machine_frame>, <ore:circuitUltimate>],
[null, <ore:shardCreative>, null]]);
recipes.addShapeless("shroom1", <biomesoplenty:shroompowder>, [<pvj:bracket_fungus>]);
recipes.addShapeless("shroom2", <biomesoplenty:shroompowder>, [<pvj:flouropore>]);
recipes.addShapeless("sea_oat1", <harvestcraft:oatsitem>, [<pvj:sea_oats>]);
recipes.addShapeless("sea_oat2", <harvestcraft:oatsitem>, [<biomesoplenty:double_plant:3>]);
recipes.addShaped("auto_gen_-1848316431", <cyclicmagic:slingshot_weapon>, 
[[<ore:stickWood>, <ore:string>, <ore:stickWood>],
[null, <ore:stickWood>, null],
[null, <ore:stickWood>, null]]);
recipes.addShaped("auto_gen_1438924738", <ambience:soundnizer>, 
[[<ore:itemCoal>, <ore:itemCoal>, <ore:itemCoal>],
[<ore:itemCoal>, null, <ore:itemCoal>],
[<ore:itemCoal>, null, null]]);
recipes.addShapeless("sapling", <minecraft:stick>, [<ore:treeSapling>]);
recipes.addShapeless("cattail", <additions:greedycraft-plant_fibre>, [<ore:plantCattail>]);

recipes.addShaped("auto_gen_-14951606", <zensummoning:altar>, 
[[<ore:pearlEnderEye>, <tconevo:material>, <ore:pearlEnderEye>],
[<tconevo:material>, <ore:netherStar>, <tconevo:material>],
[<ore:pearlEnderEye>, <tconevo:material>, <ore:pearlEnderEye>]]);

recipes.addShapeless("firework", <minecraft:fireworks>, [<minecraft:fire_charge>, <ore:paper>, <ore:gunpowder>]);
recipes.addShaped("shadow_egg", <minecraft:spawn_egg>.withTag({EntityTag: {id: "abyssalcraft:shadowmonster"}}), 
[[null, <ore:blockCoal>, null],
[<ore:blockCoal>, <minecraft:egg>, <ore:blockCoal>],
[null, <ore:blockCoal>, null]]);
recipes.addShaped("card_0", <rftools:shape_card>, 
[[<ore:paper>, <ore:ingotBrick>, <ore:paper>],
[<ore:ingotBrick>, <ore:shardCreative>, <ore:ingotBrick>],
[<ore:paper>, <ore:ingotBrick>, <ore:paper>]]);
recipes.addShaped("card_1", <rftools:shape_card:1>, 
[[<ore:paper>, <ore:ingotVoid>, <ore:paper>],
[<ore:ingotVoid>, <rftools:shape_card>, <ore:ingotVoid>],
[<ore:paper>, <ore:ingotVoid>, <ore:paper>]]);
recipes.addShaped("environmental_controller", <rftools:environmental_controller>, 
[[<ore:pearlEnderEye>, <ore:netherStar>, <ore:pearlEnderEye>],
[<ore:shardCreative>, <rftools:machine_frame>, <ore:shardCreative>],
[<ore:pearlEnderEye>, <ore:netherStar>, <ore:pearlEnderEye>]]);
recipes.addShaped("frame_alt", <rftools:machine_frame>, 
[[<ore:blockGlass>, <ore:ingotIron>, <ore:blockGlass>],
[<ore:ingotIron>, <ore:gearTin>, <ore:ingotIron>],
[<ore:blockGlass>, <ore:ingotIron>, <ore:blockGlass>]]);
recipes.addShapeless("frame_alt_2", <rftools:machine_frame>, [<thermalexpansion:frame>]);
recipes.addShapeless("frame_alt_2_reverse", <thermalexpansion:frame>, [<rftools:machine_frame>]);
recipes.addShapeless("plate_0", <thaumadditions:adaminite_plate>, [<ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>]);
recipes.addShapeless("plate_1", <thaumadditions:mithminite_plate>, [<ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>]);
recipes.addShapeless("plate_2", <thaumadditions:mithrillium_plate>, [<ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>]);
recipes.addShaped("cytosinite_block", <additions:greedycraft-cytosinite_block>, 
[[<ore:ingotCytosinite>, <ore:ingotCytosinite>, <ore:ingotCytosinite>],
[<ore:ingotCytosinite>, <ore:ingotCytosinite>, <ore:ingotCytosinite>],
[<ore:ingotCytosinite>, <ore:ingotCytosinite>, <ore:ingotCytosinite>]]);
recipes.addShaped("terra_alloy_block", <additions:greedycraft-terra_alloy_block>, 
[[<ore:ingotTerraAlloy>, <ore:ingotTerraAlloy>, <ore:ingotTerraAlloy>],
[<ore:ingotTerraAlloy>, <ore:ingotTerraAlloy>, <ore:ingotTerraAlloy>],
[<ore:ingotTerraAlloy>, <ore:ingotTerraAlloy>, <ore:ingotTerraAlloy>]]);
recipes.addShapeless("terra_alloy_block_rev", <additions:terra_alloy_ingot> * 9, [<ore:blockTerraAlloy>]);
recipes.addShapeless("cytosinite_block_rev", <additions:cytosinite_ingot> * 9, [<ore:blockCytosinite>]);
recipes.addShaped("auto_gen_-637448521", <minecraft:spawn_egg>.withTag({EntityTag:{id:"minecraft:stray"}}), 
[[null, <ore:wool>, null],
[<ore:bone>, <ore:listAllegg>, <ore:bone>],
[null, <ore:wool>, null]]);
recipes.addShaped("auto_gen_1478856706", <minecraft:spawn_egg>.withTag({EntityTag:{id:"thaumcraft:cultistportallesser"}}), 
[[null, <ore:ingotThaumium>, null],
[<ore:enderpearl>, <ore:listAllegg>, <ore:enderpearl>],
[null, <ore:ingotThaumium>, null]]);
recipes.addShaped("auto_gen_1834508295", <abyssalcraft:stone:7>*8, 
[[<ore:stone>, <ore:stone>, <ore:stone>],
[<ore:stone>, <abyssalcraft:shoggothflesh>, <ore:stone>],
[<ore:stone>, <ore:stone>, <ore:stone>]]);
recipes.addShaped("auto_gen_1268894182", <abyssalcraft:shoggothbiomass>*3, 
[[<ore:itemBiomass>, <ore:itemBiomass>, <ore:itemBiomass>],
[<ore:itemBiomass>, <abyssalcraft:ccluster9>, <ore:itemBiomass>],
[<ore:itemBiomass>, <ore:itemBiomass>, <ore:itemBiomass>]]);
recipes.addShapeless("auto_gen_1193453886", <tconstruct:cast>.withTag({PartType:"tconstruct:arrow_shaft"}), [<tconstruct:arrow_shaft>, <ore:ingotGold>, <ore:ingotGold>]);

recipes.addShaped("astral_metal_block", <additions:greedycraft-astral_metal_block>, 
[[<ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>],
[<ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>],
[<ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>]]);
recipes.addShapeless("astral_metal_block_rev", <additions:astral_metal_ingot> * 9, [<ore:blockAstralMetal>]);
recipes.addShaped("cosmilite_block", <additions:greedycraft-cosmilite_block>, 
[[<ore:ingotCosmilite>, <ore:ingotCosmilite>, <ore:ingotCosmilite>],
[<ore:ingotCosmilite>, <ore:ingotCosmilite>, <ore:ingotCosmilite>],
[<ore:ingotCosmilite>, <ore:ingotCosmilite>, <ore:ingotCosmilite>]]);
recipes.addShapeless("cosmilite_block_rev", <additions:cosmilite_ingot> * 9, [<ore:blockCosmilite>]);
recipes.addShaped("auto_gen_-1610974886", <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), 
[[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>],
[<ore:slimeball>, null, <ore:slimeball>],
[<ore:alloyBasic>, <extrautils2:machine>, <ore:alloyBasic>]]);
recipes.addShaped("awakened_eye", <additions:greedycraft-awakened_eye>, 
[[<ore:eternalLifeEssence>, <ore:ingotLiquifiedCoralium>, <ore:eternalLifeEssence>],
[<ore:ingotLiquifiedCoralium>, <abyssalcraft:eoa>.transformReplace(<abyssalcraft:eoa>), <ore:ingotLiquifiedCoralium>],
[<ore:eternalLifeEssence>, <ore:ingotLiquifiedCoralium>, <ore:eternalLifeEssence>]]);
recipes.addShaped("titanium_ingot", <additions:titanium_ingot>, 
[[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>],
[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>],
[<ore:nuggetTitanium>, <ore:nuggetTitanium>, <ore:nuggetTitanium>]]);
recipes.addShapeless("titanium_ingot_rev", <additions:greedycraft-titanium_nugget> * 9, [<ore:ingotTitanium>]);
recipes.addShaped("titanium_block", <additions:greedycraft-titanium_block>, 
[[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>],
[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>],
[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>]]);
recipes.addShapeless("titanium_block_rev", <additions:titanium_ingot> * 9, [<ore:blockTitanium>]);
recipes.addShaped("forbidden_bible", <additions:greedycraft-forbidden_bible>, 
[[<ore:ingotVoid>, <ore:ingotDemonicMetal>, <ore:ingotVoid>],
[<ore:ingotDemonicMetal>, <minecraft:skull:3>.withTag({SkullOwner: "TCreopargh"}), <ore:ingotDemonicMetal>],
[<ore:ingotVoid>, <ore:ingotDemonicMetal>, <ore:ingotVoid>]]);
recipes.addShaped("forbidden_bible_1", <additions:greedycraft-forbidden_bible>, 
[[<ore:ingotVoid>, <ore:ingotDemonicMetal>, <ore:ingotVoid>],
[<ore:ingotDemonicMetal>, <minecraft:skull:3>.withTag({SkullOwner: {"Name": "TCreopargh"}}), <ore:ingotDemonicMetal>],
[<ore:ingotVoid>, <ore:ingotDemonicMetal>, <ore:ingotVoid>]]);
recipes.addShaped("time_shard", <additions:greedycraft-time_shard>, 
[[<ore:fragmentTime>, <ore:fragmentTime>, <ore:fragmentTime>],
[<ore:fragmentTime>, <ore:fragmentTime>, <ore:fragmentTime>],
[<ore:fragmentTime>, <ore:fragmentTime>, <ore:fragmentTime>]]);
recipes.addShaped("time_order", <additions:greedycraft-delivery_order>, 
[[<ore:shardTime>, <ore:shardTime>, <ore:shardTime>],
[<ore:shardTime>, <ore:paper>, <ore:shardTime>],
[<ore:shardTime>, <ore:shardTime>, <ore:shardTime>]]);
recipes.addShaped("beacon", <minecraft:beacon>, 
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
[<ore:paneGlass>, <ore:blockTerrasteel>, <ore:paneGlass>],
[<ore:obsidian>, <ore:obsidian>, <ore:obsidian>]]);
recipes.addShaped("difficulty_syncer", <additions:greedycraft-difficulty_syncer>, 
[[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
[<ore:paneGlass>, <ore:bone>, <ore:paneGlass>],
[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]]);
recipes.addShaped("xnet_cable", <xnet:netcable>.withTag({display: {LocName: "tile.xnet.netcable_blue.name"}}) * 32, 
[[null, <ore:dustRedstone>, null],
[<ore:dustRedstone>, <ore:ingotCopper>, <ore:dustRedstone>],
[null, <ore:dustRedstone>, null]]);

recipes.addShaped("auto_gen_-99538273", <solarflux:solar_panel_2>, 
[[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
[<solarflux:solar_panel_1>, <ore:ingotGold>, <solarflux:solar_panel_1>],
[<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]]);
recipes.addShaped("auto_gen_-1449036263", <solarflux:solar_panel_3>, 
[[<solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>, <solarflux:photovoltaic_cell_1>],
[<ore:ingotBronze>, <solarflux:solar_panel_2>, <ore:ingotBronze>],
[<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]]);
recipes.addShaped("auto_gen_1253476915", <solarflux:solar_panel_4>, 
[[<solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>, <solarflux:photovoltaic_cell_2>],
[<ore:ingotSteel>, <solarflux:solar_panel_3>, <ore:ingotSteel>],
[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]]);
recipes.addShaped("auto_gen_-6955136", <solarflux:solar_panel_5>, 
[[<solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>, <solarflux:photovoltaic_cell_3>],
[<ore:ingotElectricalSteel>, <solarflux:solar_panel_4>, <ore:ingotElectricalSteel>],
[<ore:ingotElectricalSteel>, <ore:ingotEnergeticAlloy>, <ore:ingotElectricalSteel>]]);
recipes.addShaped("auto_gen_-1412957844", <solarflux:solar_panel_6>, 
[[<solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>, <solarflux:photovoltaic_cell_4>],
[<ore:ingotOsmium>, <solarflux:solar_panel_5>, <ore:ingotOsmium>],
[<ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>]]);
recipes.addShaped("auto_gen_-1220121495", <solarflux:solar_panel_7>, 
[[<solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>, <solarflux:photovoltaic_cell_5>],
[<ore:ingotStellarAlloy>, <solarflux:solar_panel_6>, <ore:ingotStellarAlloy>],
[<ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>, <ore:ingotStellarAlloy>]]);
recipes.addShaped("auto_gen_-1053080683", <solarflux:solar_panel_8>, 
[[<solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>, <solarflux:photovoltaic_cell_6>],
[<ore:ingotFusionMatrix>, <solarflux:solar_panel_7>, <ore:ingotFusionMatrix>],
[<ore:ingotFusionMatrix>, <ore:ingotFusionMatrix>, <ore:ingotFusionMatrix>]]);
recipes.addShaped("bottledstar", <extrabotany:bottledstar>, 
[[<ore:petalYellow>, <ore:petalYellow>, <ore:petalYellow>],
[<ore:blockGlass>, <ore:fallenStar>, <ore:blockGlass>],
[<ore:blockGlass>, <ore:blockGlass>, <ore:blockGlass>]]);
recipes.addShaped("end_portal_frame", <minecraft:end_portal_frame>, 
[[<ore:pearlEnderEye>, <ore:netherStar>, <ore:pearlEnderEye>],
[<ore:endstone>, <ore:endstone>, <ore:endstone>],
[<ore:endstone>, <ore:endstone>, <ore:endstone>]]);
recipes.addShaped("experience_transporter", <additions:greedycraft-experience_transporter>, 
[[<ore:pearlEnderEye>, <ore:eternalLifeEssence>, <ore:pearlEnderEye>],
[<ore:eternalLifeEssence>, <additions:greedycraft-pearl_of_knowledge>, <ore:eternalLifeEssence>],
[<ore:pearlEnderEye>, <ore:eternalLifeEssence>, <ore:pearlEnderEye>]]);
recipes.addShaped("netherite_block", <additions:greedycraft-netherite_block>, 
[[<ore:ingotNetherite>, <ore:ingotNetherite>, <ore:ingotNetherite>],
[<ore:ingotNetherite>, <ore:ingotNetherite>, <ore:ingotNetherite>],
[<ore:ingotNetherite>, <ore:ingotNetherite>, <ore:ingotNetherite>]]);
recipes.addShapeless("netherite_block_rev", <additions:netherite_ingot> * 9, [<ore:blockNetherite>]);
recipes.addShaped("overworld_portal", <extrautils2:teleporter>, 
[[<ore:grass>, <ore:grass>, <ore:grass>],
[<ore:grass>, <ore:pearlEnderEye>, <ore:grass>],
[<ore:grass>, <ore:grass>, <ore:grass>]]);
recipes.addShaped("skill_reset_scroll", <additions:greedycraft-skill_reset_scroll>, 
[[<ore:paper>, <ore:paper>, <ore:paper>],
[<astralsorcery:itemshiftingstar>, <ore:netherStar>, <astralsorcery:itemshiftingstar>],
[<ore:paper>, <ore:paper>, <ore:paper>]]);
//recipes.addShapeless("tofu_gem_1", <tofucraft:material:26>, [<tofucraft:mineral_soymilk>, <tofucraft:mineral_soymilk>, <tofucraft:nigari>]);
//recipes.addShapeless("tofu_gem_2", <tofucraft:material:27>, [<tofucraft:mineral_soymilk>, <tofucraft:mineral_soymilk>, <tofucraft:nigari>, <forge:bucketfilled>.withTag({FluidName: "soymilk_hell", Amount: 1000})]);
recipes.addShaped("tofu_machine_case", <tofucraft:tf_machine_case> * 8, 
[[<tofucraft:blocktofumetal>, <tofucraft:blocktofumetal>, <tofucraft:blocktofumetal>],
[<tofucraft:blocktofumetal>, null, <tofucraft:blocktofumetal>],
[<tofucraft:blocktofumetal>, <tofucraft:blocktofumetal>, <tofucraft:blocktofumetal>]]);
recipes.addShaped("wood_pile", <forestry:wood_pile> * 1, 
[[<ore:logWood>, null, <ore:logWood>],
[null, null, null],
[<ore:logWood>, null, <ore:logWood>]]);


recipes.addShaped("blockinputbus_3", <modularmachinery:blockinputbus:3>, 
[[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>],
[<ore:ingotStainlessSteel>, <modularmachinery:blockinputbus:2>, <ore:ingotStainlessSteel>],
[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>]]);
recipes.addShaped("blockinputbus_4", <modularmachinery:blockinputbus:4>, 
[[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>],
[<ore:ingotCrystallineAlloy>, <modularmachinery:blockinputbus:3>, <ore:ingotCrystallineAlloy>],
[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>]]);
recipes.addShaped("blockinputbus_5", <modularmachinery:blockinputbus:5>, 
[[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>],
[<ore:ingotEnderium>, <modularmachinery:blockinputbus:4>, <ore:ingotEnderium>],
[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>]]);
recipes.addShaped("blockinputbus_6", <modularmachinery:blockinputbus:6>, 
[[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>],
[<ore:ingotFusionMatrix>, <modularmachinery:blockinputbus:5>, <ore:ingotFusionMatrix>],
[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>]]);
recipes.addShaped("blockoutputbus_3", <modularmachinery:blockoutputbus:3>, 
[[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>],
[<ore:ingotStainlessSteel>, <modularmachinery:blockoutputbus:2>, <ore:ingotStainlessSteel>],
[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>]]);
recipes.addShaped("blockoutputbus_4", <modularmachinery:blockoutputbus:4>, 
[[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>],
[<ore:ingotCrystallineAlloy>, <modularmachinery:blockoutputbus:3>, <ore:ingotCrystallineAlloy>],
[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>]]);
recipes.addShaped("blockoutputbus_5", <modularmachinery:blockoutputbus:5>, 
[[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>],
[<ore:ingotEnderium>, <modularmachinery:blockoutputbus:4>, <ore:ingotEnderium>],
[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>]]);
recipes.addShaped("blockoutputbus_6", <modularmachinery:blockoutputbus:6>, 
[[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>],
[<ore:ingotFusionMatrix>, <modularmachinery:blockoutputbus:5>, <ore:ingotFusionMatrix>],
[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidinputhatch_3", <modularmachinery:blockfluidinputhatch:3>, 
[[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>],
[<ore:ingotStainlessSteel>, <modularmachinery:blockfluidinputhatch:2>, <ore:ingotStainlessSteel>],
[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidinputhatch_4", <modularmachinery:blockfluidinputhatch:4>, 
[[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>],
[<ore:ingotCrystallineAlloy>, <modularmachinery:blockfluidinputhatch:3>, <ore:ingotCrystallineAlloy>],
[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidinputhatch_5", <modularmachinery:blockfluidinputhatch:5>, 
[[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>],
[<ore:ingotEnderium>, <modularmachinery:blockfluidinputhatch:4>, <ore:ingotEnderium>],
[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidinputhatch_6", <modularmachinery:blockfluidinputhatch:6>, 
[[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>],
[<ore:ingotFusionMatrix>, <modularmachinery:blockfluidinputhatch:5>, <ore:ingotFusionMatrix>],
[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidinputhatch_7", <modularmachinery:blockfluidinputhatch:7>, 
[[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>],
[<ore:ingotTitanium>, <modularmachinery:blockfluidinputhatch:5>, <ore:ingotTitanium>],
[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidoutputhatch_3", <modularmachinery:blockfluidoutputhatch:3>, 
[[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>],
[<ore:ingotStainlessSteel>, <modularmachinery:blockfluidoutputhatch:2>, <ore:ingotStainlessSteel>],
[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidoutputhatch_4", <modularmachinery:blockfluidoutputhatch:4>, 
[[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>],
[<ore:ingotCrystallineAlloy>, <modularmachinery:blockfluidoutputhatch:3>, <ore:ingotCrystallineAlloy>],
[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidoutputhatch_5", <modularmachinery:blockfluidoutputhatch:5>, 
[[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>],
[<ore:ingotEnderium>, <modularmachinery:blockfluidoutputhatch:4>, <ore:ingotEnderium>],
[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidoutputhatch_6", <modularmachinery:blockfluidoutputhatch:6>, 
[[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>],
[<ore:ingotFusionMatrix>, <modularmachinery:blockfluidoutputhatch:5>, <ore:ingotFusionMatrix>],
[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidoutputhatch_7", <modularmachinery:blockfluidoutputhatch:7>, 
[[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>],
[<ore:ingotTitanium>, <modularmachinery:blockfluidoutputhatch:5>, <ore:ingotTitanium>],
[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyinputhatch_3", <modularmachinery:blockenergyinputhatch:3>, 
[[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>],
[<ore:ingotStainlessSteel>, <modularmachinery:blockenergyinputhatch:2>, <ore:ingotStainlessSteel>],
[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyinputhatch_4", <modularmachinery:blockenergyinputhatch:4>, 
[[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>],
[<ore:ingotCrystallineAlloy>, <modularmachinery:blockenergyinputhatch:3>, <ore:ingotCrystallineAlloy>],
[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyinputhatch_5", <modularmachinery:blockenergyinputhatch:5>, 
[[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>],
[<ore:ingotEnderium>, <modularmachinery:blockenergyinputhatch:4>, <ore:ingotEnderium>],
[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyinputhatch_6", <modularmachinery:blockenergyinputhatch:6>, 
[[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>],
[<ore:ingotFusionMatrix>, <modularmachinery:blockenergyinputhatch:5>, <ore:ingotFusionMatrix>],
[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyinputhatch_7", <modularmachinery:blockenergyinputhatch:7>, 
[[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>],
[<ore:ingotTitanium>, <modularmachinery:blockenergyinputhatch:5>, <ore:ingotTitanium>],
[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyoutputhatch_3", <modularmachinery:blockenergyoutputhatch:3>, 
[[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>],
[<ore:ingotStainlessSteel>, <modularmachinery:blockenergyoutputhatch:2>, <ore:ingotStainlessSteel>],
[<ore:ingotModularium>, <ore:ingotStainlessSteel>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyoutputhatch_4", <modularmachinery:blockenergyoutputhatch:4>, 
[[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>],
[<ore:ingotCrystallineAlloy>, <modularmachinery:blockenergyoutputhatch:3>, <ore:ingotCrystallineAlloy>],
[<ore:ingotModularium>, <ore:ingotCrystallineAlloy>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyoutputhatch_5", <modularmachinery:blockenergyoutputhatch:5>, 
[[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>],
[<ore:ingotEnderium>, <modularmachinery:blockenergyoutputhatch:4>, <ore:ingotEnderium>],
[<ore:ingotModularium>, <ore:ingotEnderium>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyoutputhatch_6", <modularmachinery:blockenergyoutputhatch:6>, 
[[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>],
[<ore:ingotFusionMatrix>, <modularmachinery:blockenergyoutputhatch:5>, <ore:ingotFusionMatrix>],
[<ore:ingotModularium>, <ore:ingotFusionMatrix>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyoutputhatch_7", <modularmachinery:blockenergyoutputhatch:7>, 
[[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>],
[<ore:ingotTitanium>, <modularmachinery:blockenergyoutputhatch:5>, <ore:ingotTitanium>],
[<ore:ingotModularium>, <ore:ingotTitanium>, <ore:ingotModularium>]]);

recipes.addShaped("blockinputbus_2", <modularmachinery:blockinputbus:2>, 
[[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>],
[<ore:ingotInvar>, <modularmachinery:blockinputbus:1>, <ore:ingotInvar>],
[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>]]);
recipes.addShaped("blockoutputbus_2", <modularmachinery:blockoutputbus:2>, 
[[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>],
[<ore:ingotInvar>, <modularmachinery:blockoutputbus:1>, <ore:ingotInvar>],
[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidinputhatch_2", <modularmachinery:blockfluidinputhatch:2>, 
[[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>],
[<ore:ingotInvar>, <modularmachinery:blockfluidinputhatch:1>, <ore:ingotInvar>],
[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>]]);
recipes.addShaped("blockfluidoutputhatch_2", <modularmachinery:blockfluidoutputhatch:2>, 
[[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>],
[<ore:ingotInvar>, <modularmachinery:blockfluidoutputhatch:1>, <ore:ingotInvar>],
[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyinputhatch_2", <modularmachinery:blockenergyinputhatch:2>, 
[[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>],
[<ore:ingotInvar>, <modularmachinery:blockenergyinputhatch:1>, <ore:ingotInvar>],
[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>]]);
recipes.addShaped("blockenergyoutputhatch_2", <modularmachinery:blockenergyoutputhatch:2>, 
[[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>],
[<ore:ingotInvar>, <modularmachinery:blockenergyoutputhatch:1>, <ore:ingotInvar>],
[<ore:ingotModularium>, <ore:ingotInvar>, <ore:ingotModularium>]]);

recipes.addShapeless("stone_table", <projectex:stone_table>, [<projecte:transmutation_table>, <ore:stone>]);

recipes.addShaped("casing_strong", <modularmachinery:blockcasing:4> * 4, 
[[<ore:ingotSteel>, <modularmachinery:blockcasing>, <ore:ingotSteel>],
[<modularmachinery:blockcasing>, null, <modularmachinery:blockcasing>],
[<ore:ingotSteel>, <modularmachinery:blockcasing>, <ore:ingotSteel>]]);
recipes.addShaped("high_oven_io_2", <tcomplement:high_oven_io:2>, 
[[<tcomplement:materials:1>, <ore:ingotIron>, <tcomplement:materials:1>],
[null, null, null],
[<tcomplement:materials:1>, <ore:ingotIron>, <tcomplement:materials:1>]]);

recipes.addShaped("stainless_steel_block", <additions:greedycraft-stainless_steel_block>, 
[[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],
[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],
[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>]]);
recipes.addShapeless("stainless_steel_rev", <additions:stainless_steel_ingot> * 9, [<ore:blockStainlessSteel>]);

recipes.addShaped("mekanism_casing", <mekanism:basicblock:8>, 
[[<ore:ingotStainlessSteel>, <ore:blockGlassHardened>, <ore:ingotStainlessSteel>],
[<ore:blockGlassHardened>, <ore:ingotOsmium>, <ore:blockGlassHardened>],
[<ore:ingotStainlessSteel>, <ore:blockGlassHardened>, <ore:ingotStainlessSteel>]]);

recipes.addShapeless("red_key", <treasure2:ruby_key>, [<ore:dustGlowstone>, <treasure2:gold_key>, <treasure2:treasure_tool>, <ore:gemRuby>]);
recipes.addShapeless("blue_key", <treasure2:sapphire_key>, [<ore:dustGlowstone>, <treasure2:gold_key>, <treasure2:treasure_tool>, <ore:gemSapphire>]);

recipes.addShaped("auto_gen_2008269634", <buildinggadgets:buildingtool>, 
[[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>],
[<ore:ingotBronze>, <ore:gemDiamond>, <ore:ingotBronze>],
[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>]]);
recipes.addShaped("auto_gen_352019415", <buildinggadgets:exchangertool>, 
[[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>],
[<ore:pearlEnderEye>, <ore:gemDiamond>, <ore:pearlEnderEye>],
[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>]]);
recipes.addShaped("auto_gen_-1071431898", <buildinggadgets:copypastetool>, 
[[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>],
[<ore:slimeball>, <ore:gemDiamond>, <ore:slimeball>],
[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>]]);
recipes.addShaped("auto_gen_12241914", <buildinggadgets:destructiontool>, 
[[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>],
[<ore:ingotRavaging>, <ore:gemDiamond>, <ore:ingotRavaging>],
[<ore:ingotStainlessSteel>, <ore:dustRedstone>, <ore:ingotStainlessSteel>]]);

recipes.addShaped("witch_essence", <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:witch"}}), 
[[null, <ore:essenceWitch>, null],
[<ore:essenceWitch>, <ore:egg>, <ore:essenceWitch>],
[null, <ore:essenceWitch>, null]]);

recipes.addShaped("nylon_string", <additions:nylon_string>, 
[[<thermalfoundation:material:833>, <thermalfoundation:material:833>, <thermalfoundation:material:833>]]);
recipes.addShaped("nylon_cloth", <additions:nylon_cloth>, 
[[<ore:stringNylon>, <ore:stringNylon>, <ore:stringNylon>], 
[<ore:stringNylon>, <ore:stringNylon>, <ore:stringNylon>], 
[<ore:stringNylon>, <ore:stringNylon>, <ore:stringNylon>]]);
recipes.addShaped("rubber_band", <additions:rubber_band>, 
[[<thermalfoundation:material:832>, <thermalfoundation:material:832>, <thermalfoundation:material:832>]]);
recipes.addShaped("ender_casing", <actuallyadditions:block_misc:8>, 
[[<ore:ingotEnderium>, <ore:ingotFusionMatrix>, <ore:ingotEnderium>],
[<ore:ingotStainlessSteel>, <ore:blockQuartzBlack>, <ore:ingotStainlessSteel>],
[<ore:ingotEnderium>, <ore:ingotFusionMatrix>, <ore:ingotEnderium>]]);
recipes.addShaped("stainless_steel_ball", <additions:greedycraft-stainless_steel_ball> * 24, 
[[null, <ore:ingotStainlessSteel>, null],
[<ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>, <ore:ingotStainlessSteel>],
[null, <ore:ingotStainlessSteel>, null]]);
recipes.addShaped("plate_of_honor", <additions:greedycraft-plate_of_honor>, 
[[null, <quark:rune:16>, null],
[<quark:rune:16>, <ore:cast>, <quark:rune:16>],
[null, <quark:rune:16>, null]]);
recipes.addShaped("emc_collector_purple", <projectex:collector:5>, 
[[null, <projectex:matter:2>, null],
[<projectex:matter:2>, <ore:soulCreative>, <projectex:matter:2>],
[null, <projectex:matter:2>, null]]);
recipes.addShaped("demagnetizer", <demagnetize:demagnetizer>, 
[[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>],
[<ore:dustRedstone>, <ore:ingotElectricalSteel>, <ore:dustRedstone>],
[<ore:ingotIron>, <ore:dustRedstone>, <ore:ingotIron>]]);
recipes.addShaped("demagnetizer_advanced", <demagnetize:demagnetizer_advanced>, 
[[<ore:ingotStainlessSteel>, <ore:ingotConductiveIron>, <ore:ingotStainlessSteel>],
[<ore:ingotConductiveIron>, <demagnetize:demagnetizer>, <ore:ingotConductiveIron>],
[<ore:ingotStainlessSteel>, <ore:ingotConductiveIron>, <ore:ingotStainlessSteel>]]);
recipes.addShapeless("terrestrial_artifact", <biomesoplenty:terrestrial_artifact>, 
[<ore:gemRuby>, <ore:gemTopaz>, <ore:gemAmber>, <ore:gemPeridot>, <ore:gemMalachite>, <ore:gemSapphire>, <ore:gemTanzanite>, <ore:gemAmethyst>, <ore:gemScarlite>]);
// recipes.addShapeless("primordial_pearl_fix", <thaumcraft:primordial_pearl>, [<thaumcraft:primordial_pearl>.anyDamage(), <thaumcraft:void_seed>]);
recipes.addShaped("chunk_analyzer", <randomthings:chunkanalyzer>, 
[[<ore:stickIron>, null, <ore:stickIron>],
[<ore:ingotStainlessSteel>, <ore:gemTerrestrial>, <ore:ingotStainlessSteel>],
[<ore:ingotChromium>, <ore:ingotStainlessSteel>, <ore:ingotChromium>]]);
recipes.addShaped("harvester", <cyclicmagic:harvester_block>, 
[[null, <cyclicmagic:tool_harvest_crops>, null],
[<ore:ingotStainlessSteel>, <minecraft:dispenser>, <ore:ingotStainlessSteel>],
[<ore:circuitElite>, <ore:ingotStainlessSteel>, <ore:circuitElite>]]);
recipes.addShaped("ma_mystical_fertilizer", <mysticalagriculture:mystical_fertilizer> * 3, 
[[<mysticalagriculture:fertilized_essence>, <thermalfoundation:fertilizer:2>, <mysticalagriculture:fertilized_essence>],
[<thermalfoundation:fertilizer:2>, <ore:essenceSupremium>, <thermalfoundation:fertilizer:2>],
[<mysticalagriculture:fertilized_essence>, <thermalfoundation:fertilizer:2>, <mysticalagriculture:fertilized_essence>]]);

recipes.addShaped("protonium_block", <additions:greedycraft-protonium_block>, 
[[<ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>],
[<ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>],
[<ore:ingotProtonium>, <ore:ingotProtonium>, <ore:ingotProtonium>]]);
recipes.addShapeless("protonium_rev", <additions:protonium_ingot> * 9, [<ore:blockProtonium>]);
recipes.addShaped("protonium_ingot", <additions:protonium_ingot>, 
[[<ore:nuggetCosmicNeutronium>, <projectex:matter:2>, <ore:nuggetCosmicNeutronium>],
[<projectex:matter:2>, <additions:greedycraft-energy_matter_core>.transformReplace(<additions:greedycraft-energy_matter_core>), <projectex:matter:2>],
[<ore:nuggetCosmicNeutronium>, <projectex:matter:2>, <ore:nuggetCosmicNeutronium>]]);
recipes.addShaped("electronium_block", <additions:greedycraft-electronium_block>, 
[[<ore:ingotElectronium>, <ore:ingotElectronium>, <ore:ingotElectronium>],
[<ore:ingotElectronium>, <ore:ingotElectronium>, <ore:ingotElectronium>],
[<ore:ingotElectronium>, <ore:ingotElectronium>, <ore:ingotElectronium>]]);
recipes.addShapeless("electronium_rev", <additions:electronium_ingot> * 9, [<ore:blockElectronium>]);
recipes.addShapeless("neutronium_combination", <avaritia:resource:4> * 2, [<ore:ingotProtonium>, <ore:ingotElectronium>]);
recipes.addShapeless("neutronium_block_combination", <avaritia:block_resource> * 2, [<ore:blockProtonium>, <ore:blockElectronium>]);
recipes.addShapeless("rotten_flesh_block_1", <charm:rotten_flesh_block>, [<thaumcraft:flesh_block>]);
recipes.addShapeless("rotten_flesh_block_2", <thaumcraft:flesh_block>, [<charm:rotten_flesh_block>]);
recipes.addShaped("respawn_anchor", <additions:greedycraft-respawn_anchor>, 
[[<ore:shardTime>, <ore:ingotAeroite>, <ore:shardTime>],
[<ore:ingotAsgardium>, <ore:ingotAeroite>, <ore:ingotAsgardium>],
[<ore:shardTime>, <ore:ingotAsgardium>, <ore:shardTime>]]);
recipes.addShapeless("maid_token", <touhou_little_maid:gashapon_coin>, [<touhou_little_maid:gashapon_coin>]);
recipes.addShaped("crimsonite_block", <additions:greedycraft-crimsonite_block>, 
[[<ore:ingotCrimsonite>, <ore:ingotCrimsonite>, <ore:ingotCrimsonite>],
[<ore:ingotCrimsonite>, <ore:ingotCrimsonite>, <ore:ingotCrimsonite>],
[<ore:ingotCrimsonite>, <ore:ingotCrimsonite>, <ore:ingotCrimsonite>]]);
recipes.addShapeless("crimsonite_rev", <additions:crimsonite_ingot> * 9, [<ore:blockCrimsonite>]);
recipes.addShaped("loli_lolipop", <additions:greedycraft-loli_lolipop>, 
[[null, <ore:listAllsugar>, <ore:shardTime>],
[null, <ore:stickWood>, <ore:listAllsugar>],
[<ore:stickWood>, null, null]]);
recipes.addShaped("soul_forge", <bloodmagic:soul_forge>, 
[[<ore:ingotStainlessSteel>, null, <ore:ingotStainlessSteel>],
[<ore:blockNetherBrick>, <ore:rodBlaze>, <ore:blockNetherBrick>],
[<ore:blockNetherBrick>, <ore:blockIron>, <ore:blockNetherBrick>]]);
recipes.addShaped("amber_brick", <thaumcraft:amber_brick> * 4, 
[[<ore:blockAmber>, <ore:blockAmber>],
[<ore:blockAmber>, <ore:blockAmber>]]);
recipes.addShapeless("emc_tablet_clear_nbt", <projecte:item.pe_transmutation_tablet>, [<projecte:item.pe_transmutation_tablet>]);
