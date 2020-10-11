#disable_search_tree
#priority 100
import crafttweaker.game.IGame;
<ore:slime>.add(<defiledlands:foul_slime>);
<ore:stoneMarble>.add(<pvj:marble>);
<ore:workbench>.add(<natura:overworld_workbenches:*>);
<ore:plantFibre>.add(<hooked:microcrafting>);
<ore:string>.add(<hooked:microcrafting:1>);
<ore:dirt>.add(<biomesoplenty:dirt:*>);
<ore:plantCattail>.add(<pvj:cattail:*>);
<ore:ingotFusionMatrix>.add(<tconevo:material>);
<ore:logWood>.add(<treasure2:wither_log>);
<ore:plankWood>.add(<treasure2:wither_planks>);
<ore:blockBasalt>.addAll(<ore:stoneBasalt>);
<ore:stoneBasalt>.add(<taiga:basalt_block>);
<ore:foodChocolate>.add(<actuallyadditions:item_food:9>);
<ore:foodChocolate>.add(<foodexpansion:itemchocolatebar>);
<ore:foodChocolate>.addAll(<ore:foodChocolateBar>);
<ore:foodChocolateBar>.addAll(<ore:foodChocolate>);
<ore:ingotGaia>.addAll(<ore:gaiaIngot>);
<ore:blockTerrasteel>.add(<botania:storage:1>);
<ore:blockElvenElementium>.add(<botania:storage:2>);
<ore:blockOrichalcos>.add(<extrabotany:blockorichalcos>);
<ore:toolTiC>.addItems([
	<plustic:laser_gun>,
	<plustic:katana>,
	<tcomplement:chisel>,
	<tinkersaether:dart>,
	<tinkersaether:dart_shooter>,
	<tconstruct:pickaxe>,
	<tconstruct:shovel>,
	<tconstruct:hatchet>,
	<tconstruct:mattock>,
	<tconstruct:kama>,
	<tconstruct:hammer>,
	<tconstruct:excavator>,
	<tconstruct:lumberaxe>,
	<tconstruct:scythe>,
	<tconstruct:broadsword>,
	<tconstruct:longsword>,
	<tconstruct:rapier>,
	<tconstruct:frypan>,
	<tconstruct:battlesign>,
	<tconstruct:cleaver>,
	<tconstruct:shortbow>,
	<tconstruct:longbow>,
	<tconstruct:crossbow>,
	<tconstruct:shuriken>,
	<tconstruct:arrow>,
	<tconstruct:bolt>,
	<yoyos:yoyo>,
	<tconevo:tool_sceptre>
]);
<ore:armorTiC>.addItems([
	<conarm:helmet>,
	<conarm:chestplate>,
	<conarm:leggings>,
	<conarm:boots>,
	<minecraft:enchanted_book>
]);
<ore:dungeonLootTier1>.addItems([
	<additions:greedycraft-medkit_small>,
	<bountifulbaubles:potionrecall>,
	<additions:greedycraft-bag_of_dyes>,
	<quark:rune:*>,
	<cyclicmagic:apple_emerald>,
	<additions:greedycraft-tower_chest_key>,
	<scalinghealth:crystalshard>,
	<additions:greedycraft-huaji>,
	<extrabotany:material>,
	<cyclicmagic:corrupted_chorus>,
	<additions:tcsponsors-sponsor_chest_fragment>,
	<cyclicmagic:sprout_seed>,
	<cyclicmagic:ender_pearl_reuse>,
	<cyclicmagic:ender_eye_orb>,
	<cyclicmagic:charm_wing>,
	<cyclicmagic:charm_antidote>,
	<cyclicmagic:charm_fire>,
	<cyclicmagic:charm_void>
]);
<ore:dungeonLootTier1>.addAll(<ore:itemPoop>);
<ore:dungeonLootTier1>.addAll(<ore:gemShadow>);
<ore:dungeonLootTier1>.addAll(<ore:record>);
<ore:dungeonLootTier2>.addItems([
	<randomthings:magichood>,
	<openblocks:technicolor_glasses>,
	<additions:greedycraft-delivery_order>,
	<enderio:item_dark_steel_sword>,
	<cyclicmagic:tool_prospector>,
	<cyclicmagic:glove_climb>,
	<enderio:item_conduit_probe>,
	<cyclicmagic:sack_ender>,
	<randomthings:biomecrystal>,
	<enderio:item_dark_steel_boots>,
	<additions:greedycraft-medkit_big>,
	<bountifulbaubles:phantomprism>,
	<additions:greedycraft-sunny_doll>,
	<extrabotany:bottledstar>,
	<bountifulbaubles:trinketmagiclenses>,
	<randomthings:summoningpendulum>,
	<enderio:item_basic_capacitor:4>,
	<enderio:item_basic_capacitor:3>,
	<bountifulbaubles:shieldcobalt>,
	<randomthings:lavacharm>,
	<cyclicmagic:evoker_fang>,
	<cyclicmagic:ender_lightning>,
	<cyclicmagic:tool_auto_torch>,
	<advanced-fishing:blazing_fishing_pole>,
	<bountifulbaubles:amuletcross>,
	<bountifulbaubles:flaregun>,
	<randomthings:slimecube>,
	<cyclicmagic:tool_warp_home>,
	<cyclicmagic:tool_push>,
	<bountifulbaubles:trinketluckyhorseshoe>,
	<extrabotany:bottledpixie>,
	<cyclicmagic:crafting_food>,
	<cyclicmagic:inventory_food>,
	<cyclicmagic:ender_tnt_6>,
	<bountifulbaubles:trinketbezoar>,
	<bountifulbaubles:magicmirror>,
	<bountifulbaubles:amuletsinempty>,
	<bountifulbaubles:trinketobsidianskull>,
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
	<cyclicmagic:ender_dungeon>
]);
<ore:dungeonLootTier3>.addItems([
	<additions:greedycraft-goodie_bag>,
	<additions:greedycraft-true_eye_of_ender>,
	<additions:greedycraft-medkit_super>,
	<additions:greedycraft-experience_transporter>,
	<additions:tcsponsors-sponsors_chest>,
	<cyclicmagic:heart_food>
]);