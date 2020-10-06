#disable_search_tree
#priority 950
#modloaded projecte
import mods.zenstages.ZenStager;
import mods.zenstages.Stage;

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

mods.ItemStages.stageTooltip("energy_matter_core", "EMC:");
mods.ItemStages.stageTooltip("energy_matter_core", "EMC总和:");
mods.ItemStages.stageTooltip("energy_matter_core", "§eEMC:");
mods.ItemStages.stageTooltip("energy_matter_core", "§eEMC总和:");
mods.ItemStages.stageTooltip("energy_matter_core", "EMC：");
mods.ItemStages.stageTooltip("energy_matter_core", "EMC总和：");
mods.ItemStages.stageTooltip("energy_matter_core", "§eEMC：");
mods.ItemStages.stageTooltip("energy_matter_core", "§eEMC总和：");

for mod in loadedMods {
	for item in mod.items {
		mods.ItemStages.setUnfamiliarName("§5§ka§r §d未知物品 §5§ka§r", item);
	}
}
mods.ItemStages.setUnfamiliarName("§c无法直视的头颅", <ore:skullWitherSkeleton>);

stageDescendantOfTheSun.addIngredients([
	<ore:ingotInfernium>,
	<ore:nuggetInfernium>,
	<ore:blockInfernium>,
	<ore:dustInfernium>,
	<additions:infernium_ingot>,
	<additions:greedycraft-infernium_block>,
	<additions:greedycraft-infernium_nugget>,
	<additions:greedycraft-infernium_ore>
]);

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
	<ore:ingotIron>,
	<ore:ingotGold>,
	<ore:cobblestone>,
	<minecraft:golden_axe>
], true);

stageGettingStarted.addRecipeName("tinkersurvival:cobblestone");

stageFusionMatrix.addIngredients([
	<zensummoning:altar>,
	<ore:oreDraconium>,
	<ore:ingotDraconium>,
	<ore:dustDraconium>,
	<ore:blockDraconium>
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
	<ore:ingotTerraAlloy>
], true);

stageNether.addIngredients([
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
	<extrautils2:teleporter:1>,
	<ore:ingotDemonicMetal>
], true);

stageNether.addIngredients([
	<ore:nitor>
], false);

stageChaotic.addIngredients([
	<ore:ingotChaoticMetal>,
	<ore:blockChaoticMetal>,
	<ore:nuggetChaoticMetal>
], true);

mods.ItemStages.addItemStage("novice_engineer", <enderio:item_dark_steel_sword>);

stageNoviceEngineer.addIngredients([
	<openblocks:block_placer>,
	<cyclicmagic:placer_block>,
	<actuallyadditions:block_placer>,
	<actuallyadditions:block_phantom_placer>,
	<extrautils2:spike_gold>
], true);

stageHardmode.addIngredients([
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
	<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short}]}),
	<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 10 as short}]})
], true);

stageInfinity.addIngredients([
	<additions:greedycraft-pioneer_medal>,
	<additions:greedycraft-greedy_medal>,
	<ore:blockCompressedInfinity>,
	<ore:blockDoubleCompressedInfinity>,
	<enderio:item_soul_vial:*>,
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
	<additions:greedycraft-flux_singularity>,
	<additions:greedycraft-mana_singularity>,
	<additions:greedycraft-experience_singularity>,
	<additions:greedycraft-creative_controller>,
	<additions:greedycraft-matter_singularity>,
	<additions:greedycraft-anti_entropy_matter>,
	<minecraft:diamond_sword>.withTag({ench: [{lvl: 10 as short}]}),
	<minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 10 as short}]}),
	<minecraft:diamond_helmet>.withTag({ench: [{lvl: 10 as short}]}),
	<minecraft:diamond_chestplate>.withTag({ench: [{lvl: 10 as short}]}),
	<minecraft:diamond_leggings>.withTag({ench: [{lvl: 10 as short}]}),
	<minecraft:diamond_boots>.withTag({ench: [{lvl: 10 as short}]})
], true);

stageInfinity.addLiquid(<liquid:infinity_metal>);

stageHardmode.addLiquid(<liquid:osmiridium>);
stageHardmode.addLiquid(<liquid:osgloglas>);
stageAwakened.addLiquid(<liquid:terra_alloy>);

stageFusionMatrix.addLiquid(<liquid:draconium>);

stageAbyssalConquerer.addIngredients([
	<ore:netherStar>,
	<ore:skullWitherSkeleton>
], true);

stageWitherSlayer.addIngredients([
	<additions:greedycraft-bravery_certificate>,
	<minecraft:beacon>,
	<openmodularturrets:turret_base:2>,
	<enderio:block_reinforced_obsidian>,
	<mysticalagriculture:witherproof_block>,
	<mysticalagriculture:witherproof_glass>,
	<additions:greedycraft-ender_charm>
], true);

stageAbyssalConquerer.addMob("minecraft:wither");

stageNoviceWizard.addIngredients([
	<thaumcraft:infusion_matrix>,
	<thaumcraft:matrix_speed>,
	<thaumcraft:matrix_cost>,
	<thaumcraft:plate:2>,
	<thaumcraft:stabilizer>,
	<thaumcraft:ingot>
], false);

stageSkilledWizard.addIngredients([
	<astralsorcery:blockstarlightinfuser>,
	<astralsorcery:blockattunementaltar>,
	<astralsorcery:blockaltar:3>,
	<astralsorcery:blockprism>,
	<astralsorcery:itemshiftingstar>,
	<astralsorcery:itemcraftingcomponent:4>,
	<additions:greedycraft-arcane_crystal_ball>
], true);

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
	<prefab:item_basic_structure>.withTag({ForgeCaps: {"prefab:structuresconfiguration": {configuration: {wareHouseFacing: "north", structureEnumName: "EnderGateway"}}}, id: "prefab:item_basic_structure", Count: 1 as byte, Damage: 0 as short}),
	<ore:endstone>,
	<ore:cropChorusfruit>
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
stageWitherSlayer.addOreReplacement(<minecraft:beacon:*>, <additions:greedycraft-unknown_block>, false);
stageHardmode.addOreReplacement(<additions:greedycraft-titanium_ore>, <minecraft:end_stone>, false);
stageHardmode.addOreReplacement(<additions:greedycraft-cryonium_ore>, <minecraft:stone>, false);
stageNether.addOreReplacement(<minecraft:quartz_ore>, <minecraft:netherrack>, false);
stageNether.addOreReplacement(<thaumcraft:ore_quartz>, <minecraft:stone>, false);
stageNether.addOreReplacement(<netherendingores:ore_other_1>, <minecraft:stone>, false);
stageHardmode.addOreReplacement(<additions:greedycraft-cytosinite_ore>, <biomesoplenty:mud>, false);

stageSkilledEngineer.addIngredients([
	<ore:ingotIridium>,
	<ore:nuggetIridium>,
	<ore:blockIridium>,
	<ore:oreIridium>,
	<ore:ingotPlatinum>,
	<ore:nuggetPlatinum>,
	<ore:orePlatinum>,
	<solarflux:solar_panel_5>,
	<solarflux:solar_panel_6>,
	<solarflux:solar_panel_7>,
	<ore:blockPlatinum>,
	<rftools:builder>
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
	<solarflux:solar_panel_infinity>,
	<solarflux:solar_panel_neutronium>,
	<cyclicmagic:spikes_diamond>,
	<extrautils2:spike_diamond>
], true);

stageDisabled.addIngredients([
	<botania:blackholetalisman>,
	<bountifulbaubles:trinketbrokenheart>
], true);

stageChallenger1.addIngredients([
	<ore:seedsTier2>,
	<ore:essencePrudentium>,
	<ore:ingotPrudentium>,
	<tinymobfarm:stone_farm>
], true);

stageChallenger2.addIngredients([
	<ore:seedsTier3>,
	<ore:essenceIntermedium>,
	<ore:ingotIntermedium>,
	<tinymobfarm:iron_farm>
], true);

stageChallenger3.addIngredients([
	<ore:seedsTier4>,
	<ore:essenceSuperium>,
	<ore:ingotSuperium>,
	<tinymobfarm:gold_farm>
], true);

stageChallenger4.addIngredients([
	<ore:seedsTier5>,
	<ore:essenceSupremium>,
	<ore:ingotSupremium>,
	<tinymobfarm:diamond_farm>
], true);

stageChallenger5.addIngredients([
	<ore:seedsTier6>,
	<ore:essenceInsanium>,
	<ore:ingotInsanium>,
	<tinymobfarm:emerald_farm>
], true);

stageChallenger6.addIngredients([
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
stageHardmode.addModId(["avaritia", "draconicevolution", "extrabotany", "eternalsingularity", "projecte", "projectex", "taiga"]);

stageNether.addModId(["aether_legacy", "cyclicmagic"]);

stageNoviceEngineer.addModId(["enderio"]);

stageDisabled.addRecipeRegex("^mysticalagriculture:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(sickle)|(fishing_rod)|(scythe))$");
stageHardmode.addRecipeRegex("^twilightforest:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$");
stageHardmode.addRecipeRegex("^tofucraft:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$");
stageDisabled.addRecipeRegex("^abyssalcraft:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(plate)|(legs)|(helm))$");
stageDisabled.addRecipeRegex("^enderio:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$");
stageDisabled.addRecipeRegex("^thermalfoundation:tool.fishing_rod_(.*)$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes24[3456789]$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes25.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes26.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes27.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes28.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes29.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes30.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes31.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes32.$");
stageDisabled.addRecipeRegex("^actuallyadditions:recipes33[01234567]$");
stageDisabled.addRecipeRegex("^thermalfoundation:((tool)|(armor))(.*)$");
stageDisabled.addRecipeRegex("^redstonearsenal:((tool)|(armor))(.*)$");
stageDisabled.addRecipeRegex("^redstonerepository:((tool)|(armor))(.*)$");

stageInfinity.addIngredientOverride(<ore:ingotInfinity>, false);
stageInfinity.addIngredientOverride(<ore:blockInfinity>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_sword>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_pickaxe>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_shovel>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_axe>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_hoe>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_helmet>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_chestplate>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_pants>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_boots>, false);
stageInfinity.addIngredientOverride(<avaritia:infinity_bow>, false);

stageAwakened.addIngredientOverride(<draconicevolution:chaos_shard>, false);
stageChaoticDominator.addIngredientOverride(<draconicevolution:chaotic_core>, false);

stageDisabled.addIngredientOverride(<cyclicmagic:cyclic_wand_build>, false);
stageDisabled.addIngredientOverride(<draconicevolution:wyvern_pick>, false);
stageDisabled.addIngredientOverride(<draconicevolution:wyvern_sword>, false);
stageMasterEngineer.addIngredientOverride(<enderio:block_killer_joe>, false);
stageMasterEngineer.addIngredientOverride(<cyclicmagic:block_user>, false);
stageMasterEngineer.addIngredientOverride(<ore:alloyUltimate>, false);
stageMasterEngineer.addIngredientOverride(<ore:circuitUltimate>, false);
stageFusionMatrix.addIngredientOverride(<draconicevolution:wyvern_core>, false);

stageAwakened.addIngredientOverride(<cyclicmagic:glowing_chorus>, false);

stageDescendantOfTheSun.addIngredientOverride(<draconicevolution:awakened_core>, false);

stageFusionMatrix.addIngredientOverride(<ore:dustDraconium>, false);

stageWitherSlayer.addIngredientOverride(<enderio:block_reinforced_obsidian>, false);

stageWyvern.addIngredientOverride(<avaritia:neutron_collector>, false);
stageAwakened.addIngredientOverride(<avaritia:neutronium_compressor>, false);


ZenStager.buildAll();

mods.ItemStages.removeItemStage(<cyclicmagic:slingshot_weapon>);

mods.ItemStages.removeItemStage(<avaritia:infinity_sword>);
mods.ItemStages.removeItemStage(<avaritia:resource:6>);
mods.ItemStages.removeItemStage(<avaritia:block_resource:1>);
mods.ItemStages.addItemStage("wielder_of_infinity", <avaritia:infinity_sword>);
mods.ItemStages.addItemStage("wielder_of_infinity", <ore:ingotInfinity>);
mods.ItemStages.addItemStage("wielder_of_infinity", <ore:blockInfinity>);

mods.ItemStages.removeItemStage(<draconicevolution:chaos_shard>);
mods.ItemStages.removeItemStage(<draconicevolution:chaotic_core>);
mods.ItemStages.addItemStage("awakened", <draconicevolution:chaos_shard>);
mods.ItemStages.addItemStage("chaotic_dominator", <draconicevolution:chaotic_core>);

mods.ItemStages.removeItemStage(<cyclicmagic:cyclic_wand_build>);
mods.ItemStages.addItemStage("disabled", <cyclicmagic:cyclic_wand_build>);

mods.ItemStages.removeItemStage(<draconicevolution:wyvern_pick>);
mods.ItemStages.addItemStage("disabled", <draconicevolution:wyvern_pick>);

mods.ItemStages.removeItemStage(<draconicevolution:awakened_core>);
mods.ItemStages.addItemStage("descendant_of_the_sun", <draconicevolution:awakened_core>);

mods.ItemStages.removeItemStage(<draconicevolution:wyvern_sword>);
mods.ItemStages.addItemStage("disabled", <draconicevolution:wyvern_sword>);

mods.ItemStages.removeItemStage(<avaritia:resource:5>);
mods.ItemStages.addItemStage("chaotic", <avaritia:resource:5>);

mods.ItemStages.removeItemStage(<enderio:block_killer_joe>);
mods.ItemStages.addItemStage("master_engineer", <enderio:block_killer_joe>);

mods.ItemStages.removeItemStage(<cyclicmagic:block_user>);
mods.ItemStages.addItemStage("master_engineer", <cyclicmagic:block_user>);

mods.ItemStages.removeItemStage(<ore:alloyUltimate>);
mods.ItemStages.addItemStage("master_engineer", <ore:alloyUltimate>);
mods.ItemStages.removeItemStage(<ore:circuitUltimate>);
mods.ItemStages.addItemStage("master_engineer", <ore:circuitUltimate>);

mods.ItemStages.removeItemStage(<ore:dustDraconium>);
mods.ItemStages.addItemStage("fusion_matrix", <ore:dustDraconium>);

mods.ItemStages.removeItemStage(<enderio:block_reinforced_obsidian>);
mods.ItemStages.addItemStage("wither_slayer", <enderio:block_reinforced_obsidian>);

mods.ItemStages.removeItemStage(<cyclicmagic:glowing_chorus>);
mods.ItemStages.addItemStage("awakened", <cyclicmagic:glowing_chorus>);

mods.ItemStages.removeItemStage(<draconicevolution:wyvern_core>);
mods.ItemStages.addItemStage("fusion_matrix", <draconicevolution:wyvern_core>);

mods.ItemStages.removeItemStage(<cyclicmagic:inventory_food>);
mods.ItemStages.removeItemStage(<cyclicmagic:crafting_food>);
mods.ItemStages.removeItemStage(<extrabotany:candybag>);
mods.ItemStages.removeItemStage(<extrabotany:candy:*>);
mods.ItemStages.removeItemStage(<ore:rock>);
mods.ItemStages.removeItemStage(<taiga:basalt_block>);
mods.ItemStages.removeItemStage(<avaritia:neutronium_compressor>);
mods.ItemStages.removeItemStage(<avaritia:neutron_collector>);
mods.ItemStages.addItemStage("wyvern", <avaritia:neutron_collector>);
mods.ItemStages.addItemStage("awakened", <avaritia:neutronium_compressor>);