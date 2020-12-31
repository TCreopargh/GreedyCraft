/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 4000

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.recipes as RecipeUtil;

val oeEnchantId = <enchantment:oeintegration:oreexcavation>.id as int;

////////////////////////////////
//                            //
//    Shapeless   Recipes     //
//                            //
////////////////////////////////

RecipeUtil.addShapeless("web_to_string", <minecraft:string> * 2, [<minecraft:web>]);
RecipeUtil.addShapeless("encyclopedia", omnipedia, [<akashictome:tome>]);
RecipeUtil.addShapeless("thermal_shapeless_1", <thermalfoundation:material:2051>, [<minecraft:blaze_powder>,<thermalfoundation:material:2049>]);
RecipeUtil.addShapeless("thermal_shapeless_2", <thermalfoundation:material:2053>, [<minecraft:blaze_powder>,<minecraft:blaze_powder>,<minecraft:stone>]);
RecipeUtil.addShapeless("compressed_stone_convert1", <prefab:block_compressed_stone:5> * 4, [<extrautils2:compresseddirt>,<extrautils2:compresseddirt>,<extrautils2:compresseddirt>,<extrautils2:compresseddirt>]);
RecipeUtil.addShapeless("compressed_stone_convert2", <prefab:block_compressed_stone:6>, [<extrautils2:compresseddirt:1>]);
RecipeUtil.addShapeless("compressed_convert1", <extrautils2:compresseddirt:1>, [<prefab:block_compressed_stone:6>]);
RecipeUtil.addShapeless("compressed_convert2", <extrautils2:compresseddirt>, [<prefab:block_compressed_stone:5>]);
RecipeUtil.addShapeless("compressed_convert3", <prefab:block_compressed_stone:5>, [<extrautils2:compresseddirt>]);
RecipeUtil.addShapeless("thermal_shapeless_3", <thermalfoundation:material:25>, [<aether_legacy:golden_ring>]);
RecipeUtil.addShapeless("thermal_shapeless_4", <thermalfoundation:material:24>, [<aether_legacy:iron_ring>]);
RecipeUtil.addShapeless("rotleather", <minecraft:leather>, [<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>]);
RecipeUtil.addShapeless("oebook", <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: oeEnchantId}]}), [<oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <oeintegration:excavatemodifier>, <minecraft:book>]);
RecipeUtil.addShapeless("auto_gen_1334582590", <avaritia:block_resource:1> * 64, [<additions:greedycraft-infinity_block_block>]);
RecipeUtil.addShapeless("auto_gen_-702569552", <additions:greedycraft-infinity_block_block> * 64, [<additions:greedycraft-infinity_block_block_block>]);
RecipeUtil.addShapeless("auto_gen_163670440", <ftbquests:lootcrate>.withTag({type:"loot_level_1"}), [<additions:greedycraft-reward_ticket_common>]);
RecipeUtil.addShapeless("auto_gen_1701963744", <ftbquests:lootcrate>.withTag({type:"loot_level_2"}), [<additions:greedycraft-reward_ticket_rare>]);
RecipeUtil.addShapeless("auto_gen_-1818409148", <ftbquests:lootcrate>.withTag({type:"loot_level_3"}), [<additions:greedycraft-reward_ticket_epic>]);
RecipeUtil.addShapeless("auto_gen_-86832743", <ftbquests:lootcrate>.withTag({type:"loot_level_4"}), [<additions:greedycraft-reward_ticket_legendary>]);
RecipeUtil.addShapeless("auto_gen_747705352", <thermalfoundation:material:199>, [<projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>), <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]);
RecipeUtil.addShapeless("auto_gen_1647035237", <thermalfoundation:material:133>, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>)]);
RecipeUtil.addShapeless("auto_gen_104947165", <thermalfoundation:material:134>, [<projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>), <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]);
RecipeUtil.addShapeless("auto_gen_695668416", <minecraft:tallgrass:1>, [<pvj:short_grass>]);
RecipeUtil.addShapeless("auto_gen_1862248730", <minecraft:potion>.withTag({Potion:"cofhcore:luck3+"}), [<minecraft:glass_bottle>, <additions:greedycraft-lucky_clover>]);
RecipeUtil.addShapeless("auto_gen_288981592", <minecraft:crafting_table> * 4, [<ore:logWood>, <ore:logWood>, <ore:logWood>, <ore:logWood>]);
RecipeUtil.addShapeless("auto_gen_-1694793471", <minecraft:potion>.withTag({Potion: "minecraft:water"}), [<minecraft:glass_bottle>, <minecraft:water_bucket>.transformReplace(<minecraft:water_bucket>)]);
RecipeUtil.addShapeless("auto_gen_-865558598", <minecraft:dragon_breath>, [<minecraft:glass_bottle>, <ore:skullEnderDragon>.transformReplace(<minecraft:skull:5>)]);
RecipeUtil.addShapeless("auto_gen_-340562326", <minecraft:spawn_egg>.withTag({EntityTag: {id: "abyssalcraft:chagaroth"}}), [<abyssalcraft:dreadaltartop>.transformReplace(<abyssalcraft:dreadaltartop>), <abyssalcraft:dreadaltarbottom>.transformReplace(<abyssalcraft:dreadaltarbottom>), <abyssalcraft:dreadshard>]);
RecipeUtil.addShapeless("auto_gen_1565439995", <scalinghealth:heartdust> * 9, [<scalinghealth:crystalshard>]);
RecipeUtil.addShapeless("auto_gen_522430280", <scalinghealth:crystalshard>, [<scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>, <scalinghealth:heartdust>]);
RecipeUtil.addShapeless("auto_gen_-1180907112", <scalinghealth:crystalshard> * 9, [<scalinghealth:heartcontainer>]);
RecipeUtil.addShapeless("auto_gen_1296047035", <minecraft:splash_potion>.withTag({CustomPotionEffects:[{Duration:2400,Id:1,Amplifier:49},{Duration:2400,Id:3,Amplifier:49},{Duration:2400,Id:5,Amplifier:49},{Id:6,Amplifier:28},{Duration:2400,Id:8,Amplifier:49},{Duration:2400,Id:10,Amplifier:31},{Duration:2400,Id:11,Amplifier:4},{Duration:2400,Id:12},{Duration:2400,Id:13},{Duration:2400,Id:14},{Duration:2400,Id:16},{Duration:2400,Id:21,Amplifier:49},{Duration:2400,Id:22,Amplifier:49},{Id:23,Amplifier:119},{Duration:2400,Id:26,Amplifier:49},{Duration:2400,Id:28}],CustomPotionColor:16648959,display:{Lore:["§d蕴含了世间强大力量的药剂"],Name:"§5§l巨龙药剂"}}), [<minecraft:glass_bottle>, <additions:greedycraft-dragon_soul>, <ore:shardCreative>, <ore:shardCreative>]);
RecipeUtil.addShapeless("auto_gen_-2147158797", <minecraft:splash_potion>.withTag({CustomPotionEffects:[{Duration:2400,Id:2,Amplifier:49},{Duration:2400,Id:4,Amplifier:49},{Id:7,Amplifier:28},{Duration:2400,Id:9},{Duration:2400,Id:15},{Duration:2400,Id:17,Amplifier:49},{Duration:2400,Id:18,Amplifier:49},{Duration:2400,Id:19,Amplifier:4},{Duration:2400,Id:20,Amplifier:2},{Duration:2400,Id:24},{Duration:2400,Id:25,Amplifier:49},{Duration:2400,Id:27,Amplifier:49}],CustomPotionColor:0,display:{Lore:["蕴含了世间枯萎力量的药剂"],Name:"§8§l枯萎药剂"}}), [<minecraft:glass_bottle>, <additions:greedycraft-wither_soul>, <ore:shardCreative>, <ore:shardCreative>]);
RecipeUtil.addShapeless("auto_gen_1498134564", <ae2wtlib:wut_creative>, [<wit:wit_creative>, <wct:wct_creative>, <wft:wft_creative>]);
RecipeUtil.addShapeless("auto_gen_269849607", <additions:greedycraft-experience_block> * 9, [<additions:greedycraft-compressed_experience_block>]);
RecipeUtil.addShapeless("auto_gen_680300395", <additions:greedycraft-experience_ingot> * 9, [<additions:greedycraft-experience_block>]);
RecipeUtil.addShapeless("auto_gen_198647556", <additions:greedycraft-experience_nugget> * 9, [<additions:greedycraft-experience_ingot>]);
RecipeUtil.addShapeless("auto_gen_1353175347", <additions:greedycraft-experience_nugget>, [<mysticalagriculture:xp_droplet>]);
RecipeUtil.addShapeless("auto_gen_244244256", <projecte:transmutation_table>, [<projectex:stone_table>]);
RecipeUtil.addShapeless("auto_gen_-1011385798", <minecraft:crafting_table>, [<tconstruct:tooltables>]);
RecipeUtil.addShapeless("auto_gen_-1139630037", <scalinghealth:heartcontainer>, [<bountifulbaubles:trinketbrokenheart>, <scalinghealth:crystalshard>]);
RecipeUtil.addShapeless("auto_gen_741775353", <thermalfoundation:material:135>, [<projecte:item.pe_philosophers_stone>.transformReplace(<projecte:item.pe_philosophers_stone>), <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>]);
RecipeUtil.addShapeless("auto_gen_1102737540", <actuallyadditions:item_misc:20>, [<enderio:item_broken_spawner>]);
RecipeUtil.addShapeless("auto_gen_21729634", <minecraft:tallgrass:1>, [<biomesoplenty:plant_0:1>]);
RecipeUtil.addShapeless("auto_gen_1318457067", <minecraft:tallgrass:1>, [<biomesoplenty:plant_0>]);
RecipeUtil.addShapeless("auto_gen_1921390605", <extrautils2:teleporter:1>, [<ore:blockCoal>, <ore:blockDiamond>, <ore:blockIron>, <ore:blockGold>]);
RecipeUtil.addShapeless("auto_gen_1910785345", <additions:greedycraft-death_counter>, [<tconstruct:pattern>, <minecraft:bone>]);
RecipeUtil.addShapeless("auto_gen_-384348300", <mysticalagriculture:crafting:1>, [<mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>]);
RecipeUtil.addShapeless("auto_gen_-892246609", <mysticalagriculture:crafting:2>, [<mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]);
RecipeUtil.addShapeless("auto_gen_1365854354", <mysticalagriculture:crafting:3>, [<mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]);
RecipeUtil.addShapeless("auto_gen_-671011979", <mysticalagriculture:crafting:4>, [<mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]);
RecipeUtil.addShapeless("auto_gen_271729765", <mysticalagriculture:crafting:33>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>, <mysticalagriculture:crafting>]);
RecipeUtil.addShapeless("auto_gen_2055027330", <mysticalagriculture:crafting:34>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>, <mysticalagriculture:crafting:1>]);
RecipeUtil.addShapeless("auto_gen_1970110023", <mysticalagriculture:crafting:35>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>, <mysticalagriculture:crafting:2>]);
RecipeUtil.addShapeless("auto_gen_1885192716", <mysticalagriculture:crafting:36>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>, <mysticalagriculture:crafting:3>]);
RecipeUtil.addShapeless("auto_gen_1800275409", <mysticalagriculture:crafting:37>, [<mysticalagriculture:crafting:32>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]);
RecipeUtil.addShapeless("auto_gen_-756405691", <mysticalagradditions:insanium>, [<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>]);
RecipeUtil.addShapeless("auto_gen_-1248999641", <mysticalagradditions:insanium:2>, [<mysticalagriculture:crafting:32>, <mysticalagradditions:insanium>, <mysticalagradditions:insanium>, <mysticalagradditions:insanium>, <mysticalagradditions:insanium>]);
RecipeUtil.addShapeless("auto_gen_-1317989727", <astralsorcery:blockmarble:6> * 3, [<ore:stoneMarble>, <ore:stoneMarble>, <ore:stoneMarble>]);
RecipeUtil.addShapeless("auto_gen_1877622542", <astralsorcery:blockmarble>, [<ore:stoneMarble>]);
RecipeUtil.addShapeless("auto_gen_-1801128435", <astralsorcery:blockmarble>, [<pvj:marble>]);
RecipeUtil.addShapeless("auto_gen_303589427", <quark:marble>, [<ore:stoneMarble>]);
RecipeUtil.addShapeless("auto_gen_-739881408", <chisel:marble2:7>, [<ore:stoneMarble>]);
RecipeUtil.addShapeless("auto_gen_-880073734", <forge:bucketfilled>, [<forge:bucketfilled>.withTag({ForgeCaps:{"astralsorcery:cap_item_amulet_holder":{}},tag:{FluidName:"resin",Amount:1000}})]);
RecipeUtil.addShapeless("auto_gen_-983697411", <forge:bucketfilled>, [<forge:bucketfilled>.withTag({ForgeCaps:{"astralsorcery:cap_item_amulet_holder":{}},tag:{FluidName:"binnie.resin",Amount:1000}})]);
RecipeUtil.addShapeless("auto_gen_-628920196", <minecraft:experience_bottle>, [<minecraft:glass_bottle>, <actuallyadditions:item_crystal_empowered:1>]);
RecipeUtil.addShapeless("auto_gen_-2041446050", <storagedrawers:upgrade_creative> * 32, [<storagedrawers:upgrade_template>, <ore:shardCreative>]);
RecipeUtil.addShapeless("auto_gen_-2041446051", <storagedrawers:upgrade_creative>, [<storagedrawers:upgrade_template>, <draconicevolution:awakened_core>]);
RecipeUtil.addShapeless("auto_gen_-60414065", <mysticalagradditions:insanium> * 9, [<ore:blockInsaniumEssence>]);
RecipeUtil.addShapeless("auto_gen_1844726144", <mysticalagriculture:crafting:4> * 9, [<ore:blockSupremiumEssence>]);
RecipeUtil.addShapeless("auto_gen_1323422212", <mysticalagriculture:crafting:3> * 9, [<ore:blockSuperiumEssence>]);
RecipeUtil.addShapeless("auto_gen_662804194", <mysticalagriculture:crafting:2> * 9, [<ore:blockIntermediumEssence>]);
RecipeUtil.addShapeless("auto_gen_1137610693", <mysticalagriculture:crafting:1> * 9, [<ore:blockPrudentiumEssence>]);
RecipeUtil.addShapeless("auto_gen_-163727312", <mysticalagriculture:crafting> * 9, [<ore:blockInferiumEssence>]);
RecipeUtil.addShapeless("auto_gen_-1028255111", <appliedenergistics2:material:36>, [<appliedenergistics2:material:35>, <appliedenergistics2:material:35>, <appliedenergistics2:material:35>, <appliedenergistics2:material:35>]);
RecipeUtil.addShapeless("auto_gen_-1168410344", <appliedenergistics2:material:37>, [<appliedenergistics2:material:36>, <appliedenergistics2:material:36>, <appliedenergistics2:material:36>, <appliedenergistics2:material:36>]);
RecipeUtil.addShapeless("auto_gen_-1308565577", <appliedenergistics2:material:38>, [<appliedenergistics2:material:37>, <appliedenergistics2:material:37>, <appliedenergistics2:material:37>, <appliedenergistics2:material:37>]);
RecipeUtil.addShapeless("auto_gen_-326012325", <extracells:storage.component>, [<appliedenergistics2:material:38>, <appliedenergistics2:material:38>, <appliedenergistics2:material:38>, <appliedenergistics2:material:38>]);
RecipeUtil.addShapeless("auto_gen_159103536", <extracells:storage.component:1>, [<extracells:storage.component>, <extracells:storage.component>, <extracells:storage.component>, <extracells:storage.component>]);
RecipeUtil.addShapeless("auto_gen_-981757333", <extracells:storage.component:2>, [<extracells:storage.component:1>, <extracells:storage.component:1>, <extracells:storage.component:1>, <extracells:storage.component:1>]);
RecipeUtil.addShapeless("auto_gen_1276343630", <extracells:storage.component:3>, [<extracells:storage.component:2>, <extracells:storage.component:2>, <extracells:storage.component:2>, <extracells:storage.component:2>]);
RecipeUtil.addShapeless("auto_gen_462958864", <projectex:energy_link>, [<projecte:transmutation_table>.transformReplace(<projecte:transmutation_table>), <rftools:machine_frame>]);
RecipeUtil.addShapeless("pack_guide_book", <patchouli:guide_book>.withTag({"patchouli:book":"patchouli:greedycraft_guide_book"}), [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]);
RecipeUtil.addShapeless("auto_gen_-1966891614", <quark:black_ash>, [<darkutils:material>]);
RecipeUtil.addShapeless("auto_gen_2033568330", <enderio:item_material:63>, [<quark:black_ash>]);
RecipeUtil.addShapeless("auto_gen_254615916", <quark:black_ash>, [<enderio:item_material:63>]);
RecipeUtil.addShapeless("auto_gen_-2112645397", <quark:black_ash>, [<netherex:wither_dust>]);
RecipeUtil.addShapeless("auto_gen_1194975689", <netherex:wither_dust>, [<quark:black_ash>]);
RecipeUtil.addShapeless("auto_gen_-1387251411", <netherex:wither_dust>, [<darkutils:material>]);
RecipeUtil.addShapeless("auto_gen_932948151", <netherex:wither_dust>, [<enderio:item_material:63>]);
RecipeUtil.addShapeless("auto_gen_455125292", <tconevo:material> * 9, [<ore:blockFusionMatrix>]);
RecipeUtil.addShapeless("auto_gen_330301095", <additions:infernium_ingot> * 9, [<additions:greedycraft-infernium_block>]);
RecipeUtil.addShapeless("auto_gen_193347573", <additions:greedycraft-infernium_nugget> * 9, [<additions:infernium_ingot>]);
RecipeUtil.addShapeless("unlock_chest", <additions:greedycraft-tower_chest_unlocked>, [<additions:tower_chest>, <additions:greedycraft-tower_chest_key>.anyDamage().transformDamage(1)]);
RecipeUtil.addShapeless("stone", <additions:greedycraft-pebble>, [<ore:rocks>]);
RecipeUtil.addShapeless("twig", <minecraft:stick>, [<ore:twigs>]);
RecipeUtil.addShapeless("auto_gen_-1599197603", <additions:greedycraft-grass_string>, [<ore:plantFibre>, <ore:plantFibre>, <ore:plantFibre>]);
RecipeUtil.addShapeless("auto_gen_-689226972", <additions:greedycraft-crude_hatchet>, [<ore:pebble>, <ore:string>, <ore:stickWood>]);
RecipeUtil.addShapeless("auto_gen_-1342866062", <twilightforest:magic_map_focus>, [<twilightforest:raven_feather>, <twilightforest:torchberries>]);
RecipeUtil.addShapeless("clam", <pvj:clam>, [<pvj:seashells>]);
RecipeUtil.addShapeless("rose_gold_dust", <mca:rose_gold_dust> * 3, [<ore:dustGold>, <ore:dustCopper>, <ore:dustSilver>]);
RecipeUtil.addShapeless("sand_to_glass", <minecraft:glass>, [<ore:sand>, <additions:greedycraft-fake_philosopher_stone>.transformReplace(<additions:greedycraft-fake_philosopher_stone>)]);
RecipeUtil.addShapeless("pinecone", <additions:greedycraft-pinecone>, [<pvj:pinecones>]);
RecipeUtil.addShapeless("stick", <minecraft:stick>, [<ore:twigs>]);
RecipeUtil.addShapeless("earth_talisman", <mowziesmobs:earth_talisman>, [<ore:dirt>, <ore:shardCreative>, <ore:shardCreative>]);
RecipeUtil.addShapeless("auto_gen_-518845405", <additions:cryonium_ingot> * 9, [<ore:blockCryonium>]);
RecipeUtil.addShapeless("shroom1", <biomesoplenty:shroompowder>, [<pvj:bracket_fungus>]);
RecipeUtil.addShapeless("shroom2", <biomesoplenty:shroompowder>, [<pvj:flouropore>]);
RecipeUtil.addShapeless("sea_oat1", <harvestcraft:oatsitem>, [<pvj:sea_oats>]);
RecipeUtil.addShapeless("sea_oat2", <harvestcraft:oatsitem>, [<biomesoplenty:double_plant:3>]);
RecipeUtil.addShapeless("sapling", <minecraft:stick>, [<ore:treeSapling>]);
RecipeUtil.addShapeless("cattail", <additions:greedycraft-plant_fibre>, [<ore:plantCattail>]);
RecipeUtil.addShapeless("firework", <minecraft:fireworks>, [<minecraft:fire_charge>, <ore:paper>, <ore:gunpowder>]);
RecipeUtil.addShapeless("frame_alt_2", <rftools:machine_frame>, [<thermalexpansion:frame>]);
RecipeUtil.addShapeless("frame_alt_2_reverse", <thermalexpansion:frame>, [<rftools:machine_frame>]);
RecipeUtil.addShapeless("plate_0", <thaumadditions:adaminite_plate>, [<ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>, <ore:ingotAdaminite>]);
RecipeUtil.addShapeless("plate_1", <thaumadditions:mithminite_plate>, [<ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>, <ore:ingotMithminite>]);
RecipeUtil.addShapeless("plate_2", <thaumadditions:mithrillium_plate>, [<ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>, <ore:ingotMithrillium>]);
RecipeUtil.addShapeless("terra_alloy_block_rev", <additions:terra_alloy_ingot> * 9, [<ore:blockTerraAlloy>]);
RecipeUtil.addShapeless("cytosinite_block_rev", <additions:cytosinite_ingot> * 9, [<ore:blockCytosinite>]);
RecipeUtil.addShapeless("auto_gen_1193453886", <tconstruct:cast>.withTag({PartType:"tconstruct:arrow_shaft"}), [<tconstruct:arrow_shaft>, <ore:ingotGold>, <ore:ingotGold>]);
RecipeUtil.addShapeless("astral_metal_block_rev", <additions:astral_metal_ingot> * 9, [<ore:blockAstralMetal>]);
RecipeUtil.addShapeless("cosmilite_block_rev", <additions:cosmilite_ingot> * 9, [<ore:blockCosmilite>]);
RecipeUtil.addShapeless("titanium_ingot_rev", <additions:greedycraft-titanium_nugget> * 9, [<ore:ingotTitanium>]);
RecipeUtil.addShapeless("titanium_block_rev", <additions:titanium_ingot> * 9, [<ore:blockTitanium>]);
RecipeUtil.addShapeless("netherite_block_rev", <additions:netherite_ingot> * 9, [<ore:blockNetherite>]);
RecipeUtil.addShapeless("tofu_gem_1", <tofucraft:material:26>, [<tofucraft:mineral_soymilk>, <tofucraft:mineral_soymilk>, <tofucraft:nigari>]);
RecipeUtil.addShapeless("tofu_gem_2", <tofucraft:material:27>, [<tofucraft:mineral_soymilk>, <tofucraft:mineral_soymilk>, <tofucraft:nigari>, <forge:bucketfilled>.withTag({FluidName: "soymilk_hell", Amount: 1000})]);
RecipeUtil.addShapeless("stone_table", <projectex:stone_table>, [<projecte:transmutation_table>, <ore:stone>]);
RecipeUtil.addShapeless("stainless_steel_rev", <additions:stainless_steel_ingot> * 9, [<ore:blockStainlessSteel>]);
RecipeUtil.addShapeless("red_key", <treasure2:ruby_key>, [<ore:dustGlowstone>, <treasure2:gold_key>, <treasure2:treasure_tool>, <ore:gemRuby>]);
RecipeUtil.addShapeless("blue_key", <treasure2:sapphire_key>, [<ore:dustGlowstone>, <treasure2:gold_key>, <treasure2:treasure_tool>, <ore:gemSapphire>]);
RecipeUtil.addShapeless("terrestrial_artifact", <biomesoplenty:terrestrial_artifact>, [<ore:gemRuby>, <ore:gemTopaz>, <ore:gemAmber>, <ore:gemPeridot>, <ore:gemMalachite>, <ore:gemSapphire>, <ore:gemTanzanite>, <ore:gemAmethyst>, <ore:gemScarlite>]);
RecipeUtil.addShapeless("primordial_pearl_fix", <thaumcraft:primordial_pearl>, [<thaumcraft:primordial_pearl>.anyDamage(), <thaumcraft:void_seed>]);
RecipeUtil.addShapeless("protonium_rev", <additions:protonium_ingot> * 9, [<ore:blockProtonium>]);
RecipeUtil.addShapeless("electronium_rev", <additions:electronium_ingot> * 9, [<ore:blockElectronium>]);
RecipeUtil.addShapeless("neutronium_combination", <avaritia:resource:4> * 2, [<ore:ingotProtonium>, <ore:ingotElectronium>]);
RecipeUtil.addShapeless("neutronium_block_combination", <avaritia:block_resource> * 2, [<ore:blockProtonium>, <ore:blockElectronium>]);
RecipeUtil.addShapeless("rotten_flesh_block_1", <charm:rotten_flesh_block>, [<thaumcraft:flesh_block>]);
RecipeUtil.addShapeless("rotten_flesh_block_2", <thaumcraft:flesh_block>, [<charm:rotten_flesh_block>]);
RecipeUtil.addShapeless("maid_token", <touhou_little_maid:gashapon_coin>, [<touhou_little_maid:gashapon_coin>]);
RecipeUtil.addShapeless("crimsonite_rev", <additions:crimsonite_ingot> * 9, [<ore:blockCrimsonite>]);
RecipeUtil.addShapeless("emc_tablet_clear_nbt", <projecte:item.pe_transmutation_tablet>, [<projecte:item.pe_transmutation_tablet>]);
RecipeUtil.addShapeless("black_quartz_block", <actuallyadditions:block_misc:2>, [<ore:gemQuartzBlack>, <ore:gemQuartzBlack>, <ore:gemQuartzBlack>, <ore:gemQuartzBlack>]);
RecipeUtil.addShapeless("forestry_resource_2", <magicbees:resource:2> * 4, [<ore:itemBiomassRich>, <ore:itemBiomassRich>, <ore:itemBiomassRich>, <ore:itemBiomassRich>]);
RecipeUtil.addShapeless("eternal_singularity_dupe", <eternalsingularity:eternal_singularity> * 2, [<eternalsingularity:eternal_singularity>, <additions:greedycraft-black_hole_remnant>, <additions:greedycraft-black_hole_remnant>]);
RecipeUtil.addShapeless("advanced_coil", <actuallyadditions:item_misc:8>, [<actuallyadditions:item_misc:7>, <ore:ingotDurasteel>]);
RecipeUtil.addShapeless("clear_rock_crystal_nbt", <astralsorcery:itemrockcrystalsimple>, [<astralsorcery:itemrockcrystalsimple>]);

/* Template

RecipeUtil.addShapeless("", <>, []);

*/
