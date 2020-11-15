/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 950

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;

val noStageItems as IIngredient[] = [
    <cyclicmagic:inventory_food>,
    <cyclicmagic:crafting_food>,
    <extrabotany:candybag>,
    <extrabotany:candy:*>,
    <ore:rock>,
    <taiga:basalt_block>,
    <ore:dustDiamond>,
    <cyclicmagic:slingshot_weapon>,
    <aether_legacy:aercloud:*>,
    <ore:dustSalt>,
    <mekanism:salt>,
    <bloodmagic:monster_soul:3>,
    <ore:blockSalt>
] as IIngredient[];

var stageTwilightShield = ZenStager.initStage("twilight_shield");
var stageHardmode = ZenStager.initStage("hardmode");
var stageSkilledEngineer = ZenStager.initStage("skilled_engineer");
var stageNether = ZenStager.initStage("nether");
var stageNoviceEngineer = ZenStager.initStage("novice_engineer");
var stageDisabled = ZenStager.initStage("disabled");
var stageInfinity = ZenStager.initStage("wielder_of_infinity");
var stageWitherSlayer = ZenStager.initStage("wither_slayer");
var stageCosmicSword = ZenStager.initStage("sword_of_cosmos");
var stageAbyssalConquerer = ZenStager.initStage("abyssal_conquerer");
var stageMasterEngineer = ZenStager.initStage("master_engineer");
var stageFusionMatrix = ZenStager.initStage("fusion_matrix");
var stageChallenger1 = ZenStager.initStage("challenger_a");
var stageChallenger2 = ZenStager.initStage("challenger_b");
var stageChallenger3 = ZenStager.initStage("challenger_c");
var stageChallenger4 = ZenStager.initStage("challenger_d");
var stageChallenger5 = ZenStager.initStage("challenger_e");
var stageChallenger6 = ZenStager.initStage("challenger_f");
var stageChallenger7 = ZenStager.initStage("challenger_g");
var stageChallenger8 = ZenStager.initStage("challenger_all");
var stageFearlessMan = ZenStager.initStage("fearless_man");
var stageNoviceWizard = ZenStager.initStage("novice_wizard");
var stageSkilledWizard = ZenStager.initStage("skilled_wizard");
var stageMasterWizard = ZenStager.initStage("master_wizard");
var stageEnderCharm = ZenStager.initStage("ender_charm");
var stageTransmutationTable = ZenStager.initStage("transmutation_table");
var stageEnergyMatter = ZenStager.initStage("energy_matter_core");
var stageAwakened = ZenStager.initStage("awakened");
var stageWyvern = ZenStager.initStage("wyvern");
var stageGettingStarted = ZenStager.initStage("getting_started");
var stageChaotic = ZenStager.initStage("chaotic");
var stageChaoticDominator = ZenStager.initStage("chaotic_dominator");
var stageExpert = ZenStager.initStage("expert");
var stageDescendantOfTheSun = ZenStager.initStage("descendant_of_the_sun");
var stageGraduated = ZenStager.initStage("graduated");

ItemStages.stageTooltip("energy_matter_core", "EMC:");
ItemStages.stageTooltip("energy_matter_core", "EMC总和:");
ItemStages.stageTooltip("energy_matter_core", "§eEMC:");
ItemStages.stageTooltip("energy_matter_core", "§eEMC总和:");
ItemStages.stageTooltip("energy_matter_core", "EMC：");
ItemStages.stageTooltip("energy_matter_core", "EMC总和：");
ItemStages.stageTooltip("energy_matter_core", "§eEMC：");
ItemStages.stageTooltip("energy_matter_core", "§eEMC总和：");

for mod in loadedMods {
    for item in mod.items {
        ItemStages.setUnfamiliarName("§5§ka§r §d未知物品 §5§ka§r", item);
    }
}

ItemStages.setUnfamiliarName("§c无法直视的头颅", <ore:skullWitherSkeleton>);

function restageItem(stage as string, item as IIngredient) {
    ItemStages.removeItemStage(item);
    ItemStages.addItemStage(stage, item);
}

function restageItems(stage as string, items as IIngredient[]) {
    for item in items {
        ItemStages.removeItemStage(item);
        ItemStages.addItemStage(stage, item);
    }
}

stageDescendantOfTheSun.addIngredients([
    <ore:ingotInfernium>,
    <ore:nuggetInfernium>,
    <ore:blockInfernium>,
    <ore:dustInfernium>,
    <additions:infernium_ingot>,
    <additions:greedycraft-infernium_block>,
    <additions:greedycraft-infernium_nugget>,
    <additions:greedycraft-infernium_ore>
], true);

stageExpert.addIngredients([
    <additions:greedycraft-fake_philosopher_stone>,
    <additions:greedycraft-undead_medkit>,
    <additions:greedycraft-strange_lolipop>,
    <additions:greedycraft-adrenaline>,
    <additions:greedycraft-shield_gum>,
    <additions:greedycraft-goodie_bag>
], true);


stageChaoticDominator.addIngredients([
    <additions:greedycraft-death_coin>,
    <scalinghealth:difficultychanger:*>,
    <additions:greedycraft-difficulty_changer>,
    <avaritiatweaks:infinitato>
], true);

stageGettingStarted.addIngredients([
    <ore:workbench>,
    <ore:plankWood>,
    <ore:chest>,
    <ore:craftingTableWood>,
    <minecraft:wooden_pickaxe>,
    <minecraft:stone_pickaxe>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <minecraft:iron_pickaxe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_axe>,
    <minecraft:diamond_axe>,
    <minecraft:golden_axe>,
    <minecraft:iron_axe>,
    <ore:cobblestone>,
    <minecraft:golden_axe>
], true);

stageGettingStarted.addIngredients([
    <ore:ingotIron>,
    <ore:ingotGold>,
    <ore:nuggetIron>,
    <ore:nuggetGold>,
    <ore:dustIron>,
    <ore:dustGold>,
    <ore:blockIron>,
    <ore:blockGold>
], false);

stageGettingStarted.addRecipeName("tinkersurvival:cobblestone");

stageFusionMatrix.addIngredients([
    <zensummoning:altar>,
    <ore:oreDraconium>,
    <ore:ingotDraconium>,
    <ore:dustDraconium>,
    <ore:blockDraconium>,
    <ore:ingotElectronium>,
    <ore:blockElectronium>
], true);

stageWyvern.addIngredients([
    <ore:ingotWyvernMetal>,
    <ore:blockWyvernMetal>,
    <ore:nuggetWyvernMetal>,
    <ore:dustWyvernMetal>,
    <additions:greedycraft-solarium_star>,
    <additions:greedycraft-sun_totem>
], true);

stageAwakened.addIngredients([
    <tconstruct:materials:50>,
    <ore:ingotDraconicMetal>,
    <ore:blockDraconicMetal>,
    <ore:nuggetDraconicMetal>,
    <ore:dustDraconicMetal>,
    <ore:nuggetTitanium>,
    <ore:ingotTitanium>,
    <ore:oreTitanium>,
    <ore:dustTitanium>,
    <ore:blockTitanium>,
    <extrautils2:chickenring>,
    <extrautils2:angelring:*>,
    <inventorypets:cloud_pet>,
    <cyclicmagic:glowing_chorus>,
    <toolprogression:magic_mushroom>,
    <ore:blockTerraAlloy>,
    <ore:ingotTerraAlloy>,
    <actuallyadditions:item_misc:15>,
    <magicfeather:magicfeather>,
    <ore:bedrock>,
    <ore:ingotProtonium>,
    <ore:blockProtonium>
], true);

stageNether.addIngredients([
    <ore:eternalLifeEssence>,
    <ore:ingotGaia>,
    <ore:ingotNetherite>,
    <ore:blockNetherite>,
    <ore:gemAncientDebris>,
    <ore:oreAncientDebris>,
    <minecraft:beacon>,
    <ore:oreArdite>,
    <ore:ingotArdite>,
    <ore:dustArdite>,
    <ore:oreCobalt>,
    <ore:ingotCobalt>,
    <ore:dustCobalt>,
    <minecraft:blaze_rod>,
    <minecraft:blaze_powder>,
    <ore:dustGlowstone>,
    <additions:tcsponsors-sponsors_chest>,
    <ore:blockGlowstone>,
    <additions:greedycraft-medkit_big>,
    <additions:greedycraft-blood_sigil>,
    <ore:dustQuartz>,
    <ore:gemQuartz>,
    <ore:oreQuartz>,
    <ore:dustNetherQuartz>,
    <additions:greedycraft-bloody_sacrifice>,
    <minecraft:ender_eye>,
    <minecraft:enchanted_book>,
    <openmodularturrets:turret_base:1>,
    <minecraft:anvil:*>,
    <enderio:item_dark_steel_sword>.withTag({RepairCost: 0}),
    <minecraft:enchanting_table>,
    <inventorypets:nether_portal_pet>,
    <ore:ingotDemonicMetal>,
    <yoyos:diamond_yoyo>,
    <yoyos:gold_yoyo>,
    <yoyos:shear_yoyo>,
    <additions:greedycraft-awakened_eye>,
    <cqrepoured:great_sword_diamond>,
    <cqrepoured:great_sword_iron>,
    <cqrepoured:great_sword_bull>,
    <cqrepoured:great_sword_monking>,
    <cqrepoured:spear_diamond>,
    <cqrepoured:spear_iron>,
    <cqrepoured:staff_healing>,
    <cqrepoured:sword_moonlight>,
    <cqrepoured:dagger_iron>,
    <cqrepoured:dagger_diamond>,
    <cqrepoured:dagger_ninja>,
    <cqrepoured:dagger_monking>,
    <cqrepoured:sword_turtle>,
    <cqrepoured:sword_spider>,
    <cqrepoured:staff_poison>,
    <cqrepoured:staff_thunder>,
    <cqrepoured:staff_wind>,
    <cqrepoured:sword_sunshine>,
    <cqrepoured:battle_axe_bull>,
    <cqrepoured:sword_walker>,
    <cqrepoured:shield_walker_king>,
    <cqrepoured:staff_spider>,
    <cqrepoured:staff_gun>,
    <cqrepoured:revolver>,
    <cqrepoured:musket>,
    <cqrepoured:musket_dagger_iron>,
    <cqrepoured:musket_dagger_monking>,
    <cqrepoured:musket_dagger_diamond>,
    <cqrepoured:captain_revolver>,
    <cqrepoured:helmet_slime>,
    <cqrepoured:chestplate_slime>,
    <cqrepoured:leggings_slime>,
    <cqrepoured:boots_slime>,
    <cqrepoured:helmet_bull>,
    <cqrepoured:chestplate_bull>,
    <cqrepoured:leggings_bull>,
    <cqrepoured:boots_bull>,
    <cqrepoured:helmet_turtle>,
    <cqrepoured:chestplate_turtle>,
    <cqrepoured:leggings_turtle>,
    <cqrepoured:boots_turtle>,
    <cqrepoured:helmet_spider>,
    <cqrepoured:chestplate_spider>,
    <cqrepoured:leggings_spider>,
    <cqrepoured:boots_spider>,
    <cqrepoured:helmet_inquisition>,
    <cqrepoured:chestplate_inquisition>,
    <cqrepoured:leggings_inquisition>,
    <cqrepoured:boots_inquisition>,
    <cqrepoured:helmet_heavy_diamond>,
    <cqrepoured:chestplate_heavy_diamond>,
    <cqrepoured:leggings_heavy_diamond>,
    <cqrepoured:boots_heavy_diamond>,
    <cqrepoured:helmet_heavy_iron>,
    <cqrepoured:chestplate_heavy_iron>,
    <cqrepoured:leggings_heavy_iron>,
    <cqrepoured:boots_heavy_iron>,
    <cqrepoured:helmet_diamond_dyable>,
    <cqrepoured:chestplate_diamond_dyable>,
    <cqrepoured:leggings_diamond_dyable>,
    <cqrepoured:boots_diamond_dyable>,
    <cqrepoured:helmet_iron_dyable>,
    <cqrepoured:chestplate_iron_dyable>,
    <cqrepoured:leggings_iron_dyable>,
    <cqrepoured:boots_iron_dyable>,
    <cqrepoured:helmet_dragon>,
    <ore:blockDemonicMetal>,
    <cqrepoured:shield_bull>,
    <cqrepoured:shield_carl>,
    <cqrepoured:shield_dragonslayer>,
    <cqrepoured:shield_fire>,
    <cqrepoured:shield_goblin>,
    <cqrepoured:shield_monking>,
    <cqrepoured:shield_moon>,
    <cqrepoured:shield_mummy>,
    <cqrepoured:shield_pigman>,
    <cqrepoured:shield_pirate>,
    <cqrepoured:shield_pirate2>,
    <cqrepoured:shield_rainbow>,
    <cqrepoured:shield_reflective>,
    <cqrepoured:shield_rusted>,
    <cqrepoured:shield_skeleton_friends>,
    <cqrepoured:shield_specter>,
    <cqrepoured:shield_spider>,
    <cqrepoured:shield_sun>,
    <cqrepoured:shield_tomb>,
    <cqrepoured:shield_triton>,
    <cqrepoured:shield_turtle>,
    <cqrepoured:shield_walker>,
    <cqrepoured:shield_warped>,
    <cqrepoured:shield_zombie>,
    <botania:enchanter>,
    <thaumictinkerer:osmotic_enchanter>,
    <ore:ingotAeroite>,
    <ore:blockAeroite>,
    <ore:nuggetAeroite>,
    <ore:dustAeroite>,
    <ore:ingotAsgardium>,
    <ore:blockAsgardium>,
    <ore:nuggetAsgardium>,
    <ore:dustAsgardium>,
    <ore:ingotMeteor>,
    <ore:blockMeteor>,
    <ore:dustMeteor>,
    <openblocks:auto_anvil>,
    <hooked:hook:3>,
    <additions:tcsponsors-sponsor_chest_fragment>,
    <ore:ingotLumium>,
    <ore:blockLumium>,
    <ore:nuggetLumium>,
    <ore:dustLumium>,
    <ore:gearLumium>,
    <ore:ingotValkyrie>,
    <ore:nuggetValkyrie>,
    <ore:blockValkyrie>,
    <ore:essenceDestroyer>,
    <ore:ingotRavaging>,
    <defiledlands:calling_stone>,
    <ore:essenceMourner>,
    <ore:gemRemorseful>,
    <ore:slimecrystalMagma>,
    <ore:blockQuartz>,
    <minecraft:brewing_stand>,
    <ore:ingotAqualite>,
    <ore:nuggetAqualite>,
    <ore:dustAqualite>,
    <ore:oreAqualite>,
    <ore:blockAqualite>
], true);

stageNether.addIngredients([
    <ore:nitor>
], false);

stageChaotic.addIngredients([
    <ore:ingotChaoticMetal>,
    <ore:blockChaoticMetal>,
    <ore:nuggetChaoticMetal>,
    <ore:dustChaoticMetal>,
    <ore:ingotCosmilite>,
    <ore:blockCosmilite>,
    <additions:greedycraft-flux_singularity>,
    <additions:greedycraft-mana_singularity>,
    <additions:greedycraft-experience_singularity>,
    <additions:greedycraft-matter_singularity>,
    <additions:greedycraft-anti_entropy_matter>,
    <solarflux:custom_solar_panel_cosmic_solar_panel>,
    <eternalsingularity:eternal_singularity>
], true);

stageNoviceEngineer.addIngredients([
    <openblocks:block_placer>,
    <cyclicmagic:placer_block>,
    <actuallyadditions:block_placer>,
    <actuallyadditions:block_phantom_placer>,
    <extrautils2:spike_gold>,
    <actuallyadditions:block_battery_box>,
    <actuallyadditions:block_item_viewer_hopping>,
    <actuallyadditions:block_bio_reactor>,
    <actuallyadditions:block_farmer>,
    <actuallyadditions:block_empowerer>,
    <actuallyadditions:block_shock_suppressor>,
    <actuallyadditions:block_display_stand>,
    <actuallyadditions:block_player_interface>,
    <actuallyadditions:block_item_viewer>,
    <actuallyadditions:block_crystal_empowered:*>,
    <actuallyadditions:block_enervator>,
    <actuallyadditions:block_energizer>,
    <actuallyadditions:block_lava_factory_controller>,
    <actuallyadditions:block_canola_press>,
    <actuallyadditions:block_phantomface>,
    <actuallyadditions:block_phantom_energyface>,
    <actuallyadditions:block_phantom_liquiface>,
    <actuallyadditions:block_phantom_redstoneface>,
    <actuallyadditions:block_phantom_booster>,
    <actuallyadditions:block_coffee_machine>,
    <actuallyadditions:block_atomic_reconstructor>,
    <enderio:item_dark_steel_sword>
], true);

stageHardmode.addIngredients([
    <actuallyadditions:item_disenchanting_lens>,
    <additions:greedycraft-forbidden_bible>,
    <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}),
    <extrabotany:bottledflame>,
    <additions:greedycraft-true_blood_sigil>,
    <additions:greedycraft-ordinary_medal>,
    <abyssalcraft:gatewaykeyjzh>,
    <minecraft:dragon_egg>,
    <openmodularturrets:turret_base:3>,
    <additions:greedycraft-medkit_super>,
    <additions:greedycraft-wither_soul>,
    <additions:greedycraft-dragon_soul>,
    <twilightforest:shield_scepter>,
    <tconevo:material>,
    <ore:blockFusionMatrix>,
    <additions:greedycraft-creative_shard>,
    <additions:greedycraft-beast_hand>,
    <ore:ingotCryonium>,
    <ore:blockCryonium>,
    <ore:oreCryonium>,
    <ore:dustCryonium>,
    <ore:nuggetCryonium>,
    <plustic:osgloglasingot>,
    <minecraft:elytra>,
    <colytra:elytra_bauble>,
    <plustic:osmiridiumingot>,
    <biomesoplenty:gem:*>,
    <ore:ingotCytosinite>,
    <ore:blockCytosinite>,
    <ore:oreCytosinite>,
    <ore:nuggetCytosinite>,
    <ore:dustCytosinite>,
    <ore:ingotShadowium>,
    <ore:blockShadowium>,
    <ore:nuggetShadowium>,
    <ore:dustShadowium>,
    <extrautils2:teleporter:1>,
    <openblocks:hang_glider>,
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short}]}),
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short}]}),
    <actuallyadditions:item_tele_staff>,
    <actuallyadditions:block_misc:8>,
    <ore:oreRuby>,
    <ore:orePeridot>,
    <ore:oreTopaz>,
    <ore:oreTanzanite>,
    <ore:oreMalachite>,
    <ore:oreSapphire>,
    <ore:oreAmber>,
    <biomesoplenty:terrestrial_artifact>,
    <ore:blockEthaxium>,
    <ore:ingotEthaxium>,
    <ore:nuggetEthaxium>,
    <ore:ingotEthaxiumBrick>,
    <ore:gemEnderBiotite>,
    <modularmachinery:blockcasing:1>,
    <tofucraft:swordkinu>,
    <tofucraft:swordmomen>,
    <tofucraft:swordsolid>,
    <tofucraft:swordmetal>,
    <tofucraft:sworddiamond>
], true);

stageInfinity.addIngredients([
    <additions:greedycraft-pioneer_medal>,
    <additions:greedycraft-greedy_medal>,
    <ore:blockCompressedInfinity>,
    <ore:blockDoubleCompressedInfinity>,
    <extrabotany:managenerator>,
    <ambience:horn>,
    <ambience:ocarina>,
    <treasure2:salandaars_ward>,
    <treasure2:dwarven_talisman>,
    <treasure2:miners_friend>,
    <treasure2:angel_blessed>,
    <treasure2:adephagias_bounty>,
    <additions:greedycraft-creative_soul>,
    <additions:greedycraft-difficulty_changer>,
    <additions:greedycraft-creative_controller>,
    <minecraft:diamond_sword>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_helmet>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_chestplate>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_leggings>.withTag({ench: [{lvl: 10 as short}]}),
    <minecraft:diamond_boots>.withTag({ench: [{lvl: 10 as short}]}),
    <additions:greedycraft-infinity_block_block>,
    <additions:greedycraft-infinity_block_block_block>,
    <additions:greedycraft-difficulty_changer>,
    <draconicevolution:draconic_staff_of_power>,
    <extrautils2:rainbowgenerator:2>,
    <extrautils2:rainbowgenerator:1>,
    <extrautils2:rainbowgenerator>,
    <solarflux:solar_panel_infinity>
], true);

stageGraduated.addIngredients([
    <extrautils2:creativeenergy>,
    <extrautils2:passivegenerator:6>,
    <extrautils2:itemcreativedestructionwand>,
    <extrautils2:itemcreativebuilderswand>,
    <extrautils2:creativeharvest>,
    <draconicevolution:draconium_capacitor:2>,
    <appliedenergistics2:creative_storage_cell>,
    <thermalcultivation:watering_can:32000>,
    <thermalinnovation:injector:32000>,
    <botania:pool:1>,
    <mysticalagradditions:stuff:69>,
    <additions:greedycraft-creative_controller>,
    <danknull:dank_null_6>,
    <projecte:item.pe_time_watch>,
    <projecte:item.pe_tome>,
    <thermalfoundation:upgrade:256>,
    <chancecubes:creative_pendant>,
    <wct:wct_creative>,
    <yoyos:creative_yoyo>,
    <wit:wit_creative>,
    <wft:wft_creative>,
    <thaumcraft:thaumonomicon:1>,
    <storagedrawers:upgrade_creative:1>,
    <extrautils2:spike_creative>,
    <extrautils2:creativechest>,
    <thaumicwonders:creative_essentia_jar>,
    <randomthings:creativeplayerinterface>,
    <draconicevolution:creative_exchanger>,
    <randomthings:spectrecoil_genesis>,
    <additions:greedycraft-ocd_certificate>,
    <ae2wtlib:wut_creative>,
    <ae2wtlib:wut_creative>.withTag({StoredTerminals: [{ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wct:wct_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wit:wct_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wit:wit_creative", Count: 1 as byte, Damage: 0 as short}, {ForgeCaps: {"astralsorcery:cap_item_amulet_holder": {}}, id: "wft:wft_creative", Count: 1 as byte, Damage: 0 as short}], IsInRange: 0 as byte, SelectedTerminal: 0, internalCurrentPower: 1600000.0}),
    <bloodmagic:sacrificial_dagger:1>
]);

stageInfinity.addLiquid(<liquid:infinity_metal>);

stageHardmode.addLiquid(<liquid:osmiridium>);
stageHardmode.addLiquid(<liquid:osgloglas>);
stageAwakened.addLiquid(<liquid:terra_alloy>);

stageFusionMatrix.addLiquid(<liquid:draconium>);

stageAbyssalConquerer.addIngredients([
    <ore:netherStar>,
    <ore:skullWitherSkeleton>,
    <ore:ingotMirion>,
    <ore:blockMirion>
], true);

stageWitherSlayer.addIngredients([
    <additions:greedycraft-bravery_certificate>,
    <openmodularturrets:turret_base:2>,
    <enderio:block_reinforced_obsidian>,
    <mysticalagriculture:witherproof_block>,
    <mysticalagriculture:witherproof_glass>,
    <additions:greedycraft-ender_charm>,
    <ore:ingotEvilMetal>,
    <ore:blockEvilMetal>,
    <rftools:shield_template_block:*>,
    <rftools:shield_block1>,
    <rftools:shield_block2>,
    <minecraft:end_crystal>,
    <ore:ingotStellarAlloy>,
    <ore:blockStellarAlloy>,
    <ore:nuggetStellarAlloy>
], true);

stageAbyssalConquerer.addMob("minecraft:wither");

stageNoviceWizard.addIngredients([
    <thaumcraft:infusion_matrix>,
    <thaumcraft:plate:2>,
    <thaumcraft:ingot>,
    <ore:ingotBoundMetal>,
    <ore:blockBoundMetal>,
    <ore:nuggetBoundMetal>,
    <ore:dustBoundMetal>,
    <ore:ingotSentientMetal>,
    <ore:blockSentientMetal>,
    <ore:nuggetSentientMetal>,
    <ore:dustSentientMetal>,
    <thaumcraft:mechanism_complex>
], false);

stageSkilledWizard.addIngredients([
    <thaumadditions:void_thaumometer>,
    <thaumadditions:crystal_bore>,
    <thaumcraft:matrix_speed>,
    <thaumcraft:matrix_cost>,
    <thaumcraft:stabilizer>,
    <astralsorcery:blockstarlightinfuser>,
    <astralsorcery:blockattunementaltar>,
    <astralsorcery:blockaltar:3>,
    <astralsorcery:blockprism>,
    <astralsorcery:itemshiftingstar>,
    <astralsorcery:itemcraftingcomponent:4>,
    <additions:greedycraft-arcane_crystal_ball>,
    <ore:blockAstralMetal>,
    <ore:ingotAstralMetal>,
    <ore:blockCrimsonite>,
    <ore:ingotCrimsonite>
], false);

stageMasterWizard.addIngredients([
    <thaumcraft:primordial_pearl>,
    <additions:greedycraft-purifying_pill>,
    <additions:greedycraft-energy_matter_core>,
    <thaumcraft:plate:3>,
    <thaumcraft:ingot:1>,
    <thaumcraft:void_seed>,
    <ore:ingotPrimordial>,
    <ore:blockPrimordial>,
    <ore:nuggetPrimordial>,
    <ore:dustPrimordial>,
    <thaumcraft:causality_collapser>,
    <thaumadditions:mithrillium_ingot>,
    <thaumadditions:adaminite_ingot>,
    <thaumadditions:mithminite_ingot>,
    <thaumadditions:mithrillium_plate>,
    <thaumadditions:adaminite_plate>,
    <thaumadditions:mithminite_plate>,
    <thaumicwonders:void_beacon>,
    <thaumicwonders:coalescence_matrix_precursor>,
    <thaumicwonders:meaty_orb>,
    <thaumadditions:mithrillium_nugget>,
    <thaumadditions:adaminite_nugget>,
    <thaumadditions:mithminite_nugget>,
    <thaumadditions:mithminite_smelter>,
    <thaumadditions:adaminite_smelter>,
    <thaumadditions:mithrillium_smelter>,
    <thaumadditions:void_anvil>,
    <thaumadditions:shadow_enchanter>,
    <thaumicwonders:flux_capacitor>,
    <thaumicwonders:coalescence_matrix>
], false);

stageEnderCharm.addIngredients([
    <minecraft:end_bricks>,
    <minecraft:end_portal_frame>,
    <prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "EnderGateway"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}),
    <ore:endstone>,
    <ore:cropChorusfruit>,
    <hooked:hook:4>
], true);

stageHardmode.addOreReplacement(<taiga:dilithium_ore:*>, <minecraft:stone>, false);
stageHardmode.addOreReplacement(<taiga:karmesine_ore:*>, <minecraft:stone:5>, false);
stageHardmode.addOreReplacement(<taiga:ovium_ore:*>, <minecraft:stone:3>, false);
stageHardmode.addOreReplacement(<taiga:jauxum_ore:*>, <minecraft:stone:1>, false);
stageHardmode.addOreReplacement(<taiga:vibranium_ore:*>, <minecraft:stone>, false);
stageHardmode.addOreReplacement(<taiga:eezo_ore:*>, <minecraft:stone>, false);
stageHardmode.addOreReplacement(<taiga:prometheum_ore:*>, <minecraft:netherrack>, false);
stageHardmode.addOreReplacement(<taiga:tiberium_ore:*>, <minecraft:netherrack>, false);
stageHardmode.addOreReplacement(<taiga:valyrium_ore:*>, <minecraft:netherrack>, false);
stageHardmode.addOreReplacement(<taiga:palladium_ore:*>, <minecraft:end_stone>, false);
stageHardmode.addOreReplacement(<taiga:aurorium_ore:*>, <minecraft:end_stone>, false);
stageHardmode.addOreReplacement(<taiga:abyssum_ore:*>, <minecraft:end_stone>, false);
stageHardmode.addOreReplacement(<taiga:osram_ore:*>, <taiga:basalt_block>, false);
stageHardmode.addOreReplacement(<taiga:duranite_ore:*>, <taiga:obsidiorite_block>, false);
stageHardmode.addOreReplacement(<taiga:uru_ore:*>, <taiga:meteorite_block>, false);
stageDescendantOfTheSun.addOreReplacement(<additions:greedycraft-infernium_ore>, <quark:basalt>, false);
stageHardmode.addOreReplacement(<draconicevolution:draconium_ore>, <minecraft:stone>, false);
stageHardmode.addOreReplacement(<draconicevolution:draconium_ore:1>, <minecraft:netherrack>, false);
stageHardmode.addOreReplacement(<draconicevolution:draconium_ore:2>, <minecraft:end_stone>, false);
stageHardmode.addOreReplacement(<biomesoplenty:gem_ore:*>, <minecraft:stone>, false);
stageHardmode.addOreReplacement(<biomesoplenty:gem_ore:0>, <minecraft:end_stone>, false);
stageSkilledEngineer.addOreReplacement(<thermalfoundation:ore:7>, <minecraft:stone>, false);
stageSkilledEngineer.addOreReplacement(<thermalfoundation:ore:6>, <minecraft:stone>, false);
stageSkilledEngineer.addOreReplacement(<bigreactors:oreyellorite:*>, <minecraft:stone>, false);
stageSkilledEngineer.addOreReplacement(<mekanism:oreblock:*>, <minecraft:stone>, false);
stageEnderCharm.addOreReplacement(<minecraft:end_portal_frame:*>, <additions:greedycraft-unknown_block>, false);
stageNether.addOreReplacement(<minecraft:anvil:*>, <additions:greedycraft-unknown_block>, false);
stageNether.addOreReplacement(<minecraft:enchanting_table:*>, <additions:greedycraft-unknown_block>, false);
stageNether.addOreReplacement(<minecraft:beacon:*>, <additions:greedycraft-unknown_block>, false);
stageHardmode.addOreReplacement(<additions:greedycraft-titanium_ore>, <minecraft:end_stone>, false);
stageHardmode.addOreReplacement(<additions:greedycraft-cryonium_ore>, <minecraft:stone>, false);
stageNether.addOreReplacement(<minecraft:quartz_ore>, <minecraft:netherrack>, false);
stageNether.addOreReplacement(<thaumcraft:ore_quartz>, <minecraft:stone>, false);
stageNether.addOreReplacement(<netherendingores:ore_other_1>, <minecraft:stone>, false);
stageNether.addOreReplacement(<additions:greedycraft-aeroite_ore>, <aether_legacy:aercloud>, false);
stageNether.addOreReplacement(<additions:greedycraft-aqualite_ore>, <minecraft:prismarine>, false);
stageHardmode.addOreReplacement(<additions:greedycraft-cytosinite_ore>, <biomesoplenty:mud>, false);
stageGettingStarted.addOreReplacement(<ore:chest>, <additions:greedycraft-unknown_block>, false);

stageSkilledEngineer.addIngredients([
    <ore:ingotIridium>,
    <ore:nuggetIridium>,
    <ore:blockIridium>,
    <ore:oreIridium>,
    <ore:dustIridium>,
    <ore:dustPlatinum>,
    <ore:ingotPlatinum>,
    <ore:nuggetPlatinum>,
    <ore:orePlatinum>,
    <solarflux:solar_panel_5>,
    <solarflux:solar_panel_6>,
    <solarflux:solar_panel_7>,
    <ore:blockPlatinum>,
    <rftools:builder>,
    <extrautils2:passivegenerator:*>,
    <extrautils2:machine:*>,
    <randomthings:biomeradar>,
    <randomthings:redstoneobserver>,
    <randomthings:irondropper>,
    <randomthings:onlinedetector>,
    <randomthings:dyeingmachine>,
    <randomthings:enderbridge>,
    <randomthings:prismarineenderbridge>,
    <randomthings:enderanchor>,
    <randomthings:imbuingstation>,
    <randomthings:spectreblock>,
    <randomthings:analogemitter>,
    <randomthings:fluiddisplay>,
    <randomthings:advancedredstoneinterface>,
    <randomthings:fertilizeddirt>,
    <randomthings:playerinterface>,
    <randomthings:basicredstoneinterface>,
    <randomthings:rainshield>,
    <randomthings:spectrecoil_number>,
    <randomthings:spectrecoil_normal>,
    <randomthings:spectrecoil_redstone>,
    <randomthings:spectrecoil_ender>,
    <bigreactors:oreyellorite>,
    <bigreactors:ingotyellorium>,
    <bigreactors:dustyellorium>,
    <ore:ingotEnderium>,
    <ore:blockEnderium>,
    <ore:nuggetEnderium>,
    <ore:dustEnderium>,
    <ore:gearEnderium>,
    <ore:gemGelid>,
    <ore:blockGelidGem>,
    <ore:blockGelidEnderium>,
    <ore:ingotGelidEnderium>,
    <ore:nuggetGelidEnderium>
], true);

stageMasterEngineer.addIngredients([
    <extrautils2:quarry>,
    <ore:alloyUltimate>,
    <ore:circuitUltimate>,
    <solarflux:solar_panel_8>,
    <enderio:block_killer_joe>,
    <cyclicmagic:block_user>,
    <extrautils2:user>,
    <actuallyadditions:block_miner>,
    <solarflux:solar_panel_wyvern>,
    <solarflux:solar_panel_draconic>,
    <solarflux:solar_panel_chaotic>,
    <solarflux:solar_panel_neutronium>,
    <cyclicmagic:spikes_diamond>,
    <extrautils2:spike_diamond>,
    <actuallyadditions:block_breaker>,
    <actuallyadditions:block_phantom_breaker>,
    <actuallyadditions:block_fluid_placer>,
    <actuallyadditions:block_dropper>,
    <actuallyadditions:block_fluid_collector>,
    <rftools:shield_block3>,
    <rftools:shield_block4>
], true);

stageDisabled.addIngredients([
    <botania:blackholetalisman>,
    <extrautils2:wateringcan>,
    <bountifulbaubles:trinketbrokenheart>,
    <actuallyadditions:block_greenhouse_glass>,
    <extrautils2:lawsword>,
    <extrautils2:lawsword>.withTag({ench:[]}),
    <openblocks:sprinkler>,
    <astralsorcery:itemenchantmentamulet>,
    <lootbags:loot_recycler>,
    <lootbags:loot_storage>,
    <bloodarsenal:base_item:9>,
    <tconstruct:spaghetti:*>,
    <tconstruct:moms_spaghetti>,
    <abyssalcraft:abyssalniteu>,
    <abyssalcraft:coraliumu>,
    <abyssalcraft:dreadiumu>,
    <abyssalcraft:ethaxiumu>,
    <twilightforest:uncrafting_table>
], true);

stageDisabled.addLiquid(<liquid:sakura.hot_spring_water>);

stageChallenger1.addIngredients([
    <ore:seedsTier1>,
    <ore:essenceInferium>,
    <ore:ingotInferium>,
    <tinymobfarm:stone_farm>
], true);

stageChallenger2.addIngredients([
    <ore:seedsTier2>,
    <ore:essencePrudentium>,
    <ore:ingotPrudentium>,
    <tinymobfarm:iron_farm>
], true);

stageChallenger3.addIngredients([
    <ore:seedsTier3>,
    <ore:essenceIntermedium>,
    <ore:ingotIntermedium>,
    <tinymobfarm:gold_farm>
], true);

stageChallenger4.addIngredients([
    <ore:seedsTier4>,
    <ore:essenceSuperium>,
    <ore:ingotSuperium>,
    <tinymobfarm:diamond_farm>
], true);

stageChallenger5.addIngredients([
    <ore:seedsTier5>,
    <ore:essenceSupremium>,
    <ore:ingotSupremium>,
    <tinymobfarm:emerald_farm>
], true);

stageChallenger6.addIngredients([
    <ore:seedsTier6>,
    <ore:essenceInsanium>,
    <ore:ingotInsanium>,
    <tinymobfarm:inferno_farm>
], true);

stageChallenger7.addIngredients([
    <tinymobfarm:ultimate_farm>
], true);

stageFearlessMan.addIngredients([
    <abyssalcraft:gatewaykeydl>,
    <abyssalcraft:dreadshard>,
    <ore:ingotDreadium>
], true);



stageSkilledEngineer.addModId(["mekanism", "mekanismgenerators"]);
stageHardmode.addModId(["avaritia", "draconicevolution", "extrabotany", "projecte", "projectex", "taiga"]);

stageNether.addModId(["aether_legacy", "cyclicmagic", "touhou_little_maid"]);
stageNoviceWizard.addModId(["bloodmagic", "bloodarsenal", "animus"]);

stageNoviceEngineer.addModId(["enderio"]);

stageDisabled.addRecipeRegex("^mysticalagriculture:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(sickle)|(fishing_rod)|(scythe))$");
stageHardmode.addRecipeRegex("^twilightforest:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$");
stageHardmode.addRecipeRegex("^tofucraft:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(leggins)|(chestplate)|(helmet))$");
stageDisabled.addRecipeRegex("^defiledlands:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$");
stageDisabled.addRecipeRegex("^abyssalcraft:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(plate)|(legs)|(helm)|(pick))$");
stageDisabled.addRecipeRegex("^netherex:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(plate)|(legs)|(helm)|(pick))$");
stageDisabled.addRecipeRegex("^candymod:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))_(.*)$");
stageDisabled.addRecipeRegex("^aether_legacy:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$");
stageDisabled.addRecipeRegex("^betternether:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$");
stageDisabled.addRecipeRegex("^tcomplement:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$");
stageDisabled.addRecipeRegex("^bloodarsenal:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$");
stageHardmode.addRecipeRegex("^botania:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick)|(chest))$");
stageDisabled.addRecipeRegex("^enderio:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$");
stageDisabled.addRecipeRegex("^thermalfoundation:tool.fishing_rod_(.*)$");
stageDisabled.addRecipeRegex("^jaopca:block_crystalcluster(.*)$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes24[3456789]$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes2[56789].$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes3[012].$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes33[01234567]$");
stageDisabled.addRecipeRegex("^thermalfoundation:((tool)|(armor))(.*)$");
stageDisabled.addRecipeRegex("^redstonearsenal:((tool)|(armor))(.*)$");
stageDisabled.addRecipeRegex("^redstonerepository:((tool)|(armor))(.*)$");

ZenStager.buildAll();

restageItem("wielder_of_infinity", <avaritia:infinity_sword>);
restageItem("wielder_of_infinity", <avaritia:infinity_pickaxe>);
restageItem("wielder_of_infinity", <avaritia:infinity_shovel>);
restageItem("wielder_of_infinity", <avaritia:infinity_axe>);
restageItem("wielder_of_infinity", <avaritia:infinity_hoe>);
restageItem("wielder_of_infinity", <avaritia:infinity_helmet>);
restageItem("wielder_of_infinity", <avaritia:infinity_chestplate>);
restageItem("wielder_of_infinity", <avaritia:infinity_pants>);
restageItem("wielder_of_infinity", <avaritia:infinity_boots>);
restageItem("wielder_of_infinity", <ore:ingotInfinity>);
restageItem("wielder_of_infinity", <ore:blockInfinity>);

restageItem("awakened", <draconicevolution:chaos_shard>);
restageItem("chaotic_dominator", <draconicevolution:chaotic_core>);
restageItem("disabled", <cyclicmagic:cyclic_wand_build>);
restageItem("descendant_of_the_sun", <draconicevolution:awakened_core>);
restageItem("disabled", <draconicevolution:wyvern_sword>);
restageItem("chaotic", <avaritia:resource:5>);
restageItem("master_engineer", <enderio:block_killer_joe>);
restageItem("master_engineer", <cyclicmagic:block_user>);
restageItem("master_engineer", <ore:alloyUltimate>);
restageItem("master_engineer", <ore:circuitUltimate>);
restageItem("fusion_matrix", <ore:dustDraconium>);
restageItem("wither_slayer", <enderio:block_reinforced_obsidian>);
restageItem("awakened", <cyclicmagic:glowing_chorus>);
restageItems("fusion_matrix", [
    <draconicevolution:wyvern_core>,
    <draconicevolution:draconic_core>,
    <ore:ingotDraconium>,
    <ore:oreDraconium>,
    <ore:dustDraconium>,
    <ore:blockDraconium>
]);
restageItems("wyvern", [
    <avaritia:neutron_collector>, 
    <avaritia:resource:2>,
    <ore:nuggetCosmicNeutronium>,
    <ore:ingotCosmicNeutronium>,
    <ore:blockCosmicNeutronium>
] as IIngredient[]);
restageItem("awakened", <avaritia:neutronium_compressor>);
restageItem("hardmode", <cyclicmagic:block_disenchanter>);
restageItem("fusion_matrix", <cyclicmagic:ender_lightning>);
restageItem("graduated", <cyclicmagic:battery_infinite>);
restageItem("skilled_engineer", <cyclicmagic:harvester_block>);
restageItems("disabled", [
    <draconicevolution:wyvern_sword>,
    <draconicevolution:wyvern_shovel>,
    <draconicevolution:wyvern_bow>,
    <draconicevolution:wyvern_axe>,
    <draconicevolution:wyvern_pick>,
    <draconicevolution:wyvern_helm>,
    <draconicevolution:wyvern_chest>,
    <draconicevolution:wyvern_legs>,
    <draconicevolution:wyvern_boots>,
    <draconicevolution:draconic_sword>,
    <draconicevolution:draconic_shovel>,
    <draconicevolution:draconic_bow>,
    <draconicevolution:draconic_axe>,
    <draconicevolution:draconic_pick>,
    <draconicevolution:draconic_helm>,
    <draconicevolution:draconic_chest>,
    <draconicevolution:draconic_legs>,
    <draconicevolution:draconic_boots>,
    <draconicadditions:chaotic_helm>,
    <draconicadditions:chaotic_chest>,
    <draconicadditions:chaotic_legs>,
    <draconicadditions:chaotic_boots>,
    <draconicevolution:wyvern_sword>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_shovel>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_bow>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_axe>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_pick>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_helm>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_chest>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_legs>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_boots>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_sword>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_shovel>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_bow>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_axe>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_pick>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_helm>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_chest>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_legs>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_boots>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_helm>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_chest>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_legs>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_boots>.withTag({DEUpgrades: {}}),
    <cyclicmagic:sprinkler>,
    <cyclicmagic:bundled_pipe>,
    <enderio:block_powered_spawner>,
    <enderio:item_broken_spawner>,
    <bloodmagic:bound_pickaxe>,
    <bloodmagic:bound_axe>,
    <bloodarsenal:bound_sickle>,
    <bloodmagic:bound_shovel>,
    <bloodmagic:bound_sword>,
    <bloodmagic:living_armour_helmet>,
    <bloodmagic:living_armour_chest>,
    <bloodmagic:living_armour_chest>.withTag({}),
    <bloodmagic:living_armour_leggings>,
    <bloodmagic:living_armour_boots>
] as IIngredient[]);

restageItems("energy_matter_core", [
    <projectex:stone_table>,
    <projectex:arcane_tablet>,
    <projecte:transmutation_table>,
    <projecte:item.pe_transmutation_tablet>,
    <projectex:collector:*>,
    <projectex:matter:*>,
    <projecte:condenser_mk1>,
    <projecte:condenser_mk2>
] as IIngredient[]);

for item in noStageItems {
    ItemStages.removeItemStage(item);
}
