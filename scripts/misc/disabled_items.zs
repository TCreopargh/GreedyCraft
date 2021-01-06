/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 50

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.zenstages.ZenStager;
import mods.zenstages.Stage;
import mods.ItemStages;
import mods.jei.JEI;

import scripts.util.recipes as RecipeUtil;

val disabledItems as IIngredient[] = [
   <botania:blackholetalisman>,
    <extrautils2:wateringcan:*>,
    <bountifulbaubles:trinketbrokenheart:*>,
    <actuallyadditions:block_greenhouse_glass>,
    <extrautils2:lawsword:*>,
    <extrautils2:lawsword:*>.withTag({ench:[]}),
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
    <twilightforest:uncrafting_table>,
    <cyclicmagic:spikes_diamond>,
	<extrautils2:spike_diamond>,
    <thaumadditions:thaumic_lectern>,
    <cyclicmagic:cyclic_wand_build:*>,
    <draconicevolution:wyvern_sword:*>,
    <draconicevolution:wyvern_sword:*>,
    <draconicevolution:wyvern_shovel:*>,
    <draconicevolution:wyvern_bow:*>,
    <draconicevolution:wyvern_axe:*>,
    <draconicevolution:wyvern_pick:*>,
    <draconicevolution:wyvern_helm:*>,
    <draconicevolution:wyvern_chest:*>,
    <draconicevolution:wyvern_legs:*>,
    <draconicevolution:wyvern_boots:*>,
    <draconicevolution:draconic_sword:*>,
    <draconicevolution:draconic_shovel:*>,
    <draconicevolution:draconic_bow:*>,
    <draconicevolution:draconic_axe:*>,
    <draconicevolution:draconic_pick:*>,
    <draconicevolution:draconic_helm:*>,
    <draconicevolution:draconic_chest:*>,
    <draconicevolution:draconic_legs:*>,
    <draconicevolution:draconic_boots:*>,
    <draconicadditions:chaotic_helm:*>,
    <draconicadditions:chaotic_chest:*>,
    <draconicadditions:chaotic_legs:*>,
    <draconicadditions:chaotic_boots:*>,
    <draconicevolution:wyvern_sword:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_shovel:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_bow:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_axe:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_pick:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_helm:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_chest:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_legs:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:wyvern_boots:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_sword:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_shovel:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_bow:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_axe:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_pick:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_helm:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_chest:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_legs:*>.withTag({DEUpgrades: {}}),
    <draconicevolution:draconic_boots:*>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_helm:*>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_chest:*>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_legs:*>.withTag({DEUpgrades: {}}),
    <draconicadditions:chaotic_boots:*>.withTag({DEUpgrades: {}}),
    <cyclicmagic:sprinkler>,
    <cyclicmagic:bundled_pipe>,
    <enderio:block_powered_spawner>,
    <enderio:item_broken_spawner>,
    <bloodmagic:bound_pickaxe:*>,
    <bloodmagic:bound_axe:*>,
    <bloodarsenal:bound_sickle:*>,
    <bloodmagic:bound_shovel:*>,
    <bloodmagic:bound_sword:*>,
    <bloodmagic:living_armour_helmet:*>,
    <bloodmagic:living_armour_chest:*>,
    <bloodmagic:living_armour_chest:*>.withTag({}),
    <bloodmagic:living_armour_leggings:*>,
    <bloodmagic:living_armour_boots:*>,
    <cyclicmagic:magnet_anti_block>,
    <bloodmagic:bound_sword:*>.withTag({activated: 0 as byte}),
    <bloodmagic:bound_sword:*>.withTag({activated: 1 as byte}),
    <bloodmagic:bound_sword:*>,
    <bloodmagic:bound_pickaxe:*>.withTag({activated: 0 as byte}),
    <bloodmagic:bound_pickaxe:*>.withTag({activated: 1 as byte}),
    <bloodmagic:bound_pickaxe:*>,
    <bloodmagic:bound_axe:*>.withTag({activated: 0 as byte}),
    <bloodmagic:bound_axe:*>.withTag({activated: 1 as byte}),
    <bloodmagic:bound_axe:*>,
    <bloodmagic:bound_shovel:*>.withTag({activated: 0 as byte}),
    <bloodmagic:bound_shovel:*>.withTag({activated: 1 as byte}),
    <bloodmagic:bound_shovel:*>,
    <animus:kama_bound:*>,
    <cyclicmagic:tool_push:*>,
    <cyclicmagic:tool_push:*>.withTag({}),
    <darkutils:trap_tile:6>,
    <thermalexpansion:augment:401>,
    <appliedenergistics2:nether_quartz_pickaxe:*>,
    <appliedenergistics2:certus_quartz_pickaxe:*>,
    <candymod:cotton_candy_pickaxe:*>,
    <betternether:cincinnasite_pickaxe_diamond:*>,
    <bloodarsenal:stasis_pickaxe:*>,
    <enderio:item_stellar_alloy_pickaxe:*>,
    <enderio:item_stellar_alloy_sword:*>,
    <enderio:item_stellar_alloy_leggings:*>,
    <enderio:item_stellar_alloy_chestplate:*>,
    <enderio:item_stellar_alloy_helmet:*>,
    <enderio:item_stellar_alloy_boots:*>,
    <enderio:item_end_steel_shield:*>,
    <enderio:item_dark_steel_shield:*>,
    <enderio:item_dark_steel_helmet:*>,
    <enderio:item_dark_steel_chestplate:*>,
    <enderio:item_dark_steel_leggings:*>,
    <enderio:item_dark_steel_boots:*>,
    <enderio:item_dark_steel_pickaxe:*>,
    <enderio:item_dark_steel_sword:*>,
    <enderio:item_dark_steel_axe:*>,
    <enderio:item_dark_steel_bow:*>,
    <enderio:item_dark_steel_shears:*>,
    <enderio:item_dark_steel_crook:*>,
    <enderio:item_dark_steel_hand:*>,
    <enderio:item_end_steel_sword:*>,
    <enderio:item_end_steel_pickaxe:*>,
    <enderio:item_end_steel_axe:*>,
    <enderio:item_end_steel_bow:*>,
    <enderio:item_end_steel_helmet:*>,
    <enderio:item_end_steel_chestplate:*>,
    <enderio:item_end_steel_leggings:*>,
    <enderio:item_end_steel_boots:*>,
    <enderio:item_dark_steel_sword:*>,
    <candymod:cotton_candy_sword:*>,
    <appliedenergistics2:certus_quartz_sword:*>,
    <appliedenergistics2:nether_quartz_sword:*>,
    <thaumcraft:thaumium_sword:*>,
    <thaumcraft:void_sword:*>,
    <natura:netherquartz_sword:*>,
    <natura:fusewood_sword:*>,
    <natura:darkwood_sword:*>,
    <natura:bloodwood_sword:*>,
    <thaumcraft:void_axe:*>,
    <thaumcraft:thaumium_axe:*>,
    <sakura:sakura_axe:*>,
    <sakura:sakura_pickaxe:*>,
    <natura:netherquartz_axe:*>,
    <natura:darkwood_axe:*>,
    <natura:fusewood_axe:*>,
    <natura:bloodwood_axe:*>,
    <natura:ghostwood_axe:*>,
    <cyclicmagic:crystal_axe:*>,
    <extrautils2:fireaxe:*>,
    <bloodarsenal:stasis_axe:*>,
    <betternether:cincinnasite_axe_diamond:*>,
    <appliedenergistics2:nether_quartz_axe:*>,
    <appliedenergistics2:certus_quartz_axe:*>,
    <tofucraft:sworddiamond:*>,
    <tofucraft:swordmetal:*>,
    <tofucraft:swordsolid:*>,
    <tofucraft:swordmomen:*>,
    <tofucraft:swordkinu:*>,
    <cyclicmagic:crystal_sword:*>,
    <cyclicmagic:sword_ender:*>,
    <cyclicmagic:sword_weakness:*>,
    <cyclicmagic:sword_slowness:*>,
    <cyclicmagic:sandstone_sword:*>,
    <natura:ghostwood_sword:*>,
    <sakura:sakura_shovel:*>,
    <thaumcraft:thaumium_shovel:*>,
    <thaumcraft:void_shovel:*>,
    <natura:netherquartz_shovel:*>,
    <natura:fusewood_shovel:*>,
    <natura:darkwood_shovel:*>,
    <natura:bloodwood_shovel:*>,
    <natura:ghostwood_shovel:*>,
    <forestry:bronze_shovel:*>,
    <appliedenergistics2:certus_quartz_hoe:*>,
    <appliedenergistics2:nether_quartz_hoe:*>,
    <sakura:sakura_hoe:*>,
    <cyclicmagic:sandstone_hoe:*>,
    <cyclicmagic:netherbrick_hoe:*>,
    <cyclicmagic:crystal_hoe:*>,
    <bloodarsenal:stasis_shovel:*>,
    <candymod:cotton_candy_shovel:*>,
    <draconicevolution:draconic_spawner>,
    <enderio:item_material:9>,
    <enderio:item_material:10>,
    <inventorypets:solstice_sword>,
    <inventorypets:solstice_helmet>,
    <inventorypets:solstice_chestplate>,
    <inventorypets:solstice_leggings>,
    <inventorypets:solstice_boots>,
    <inventorypets:solstice_sword>.withTag({ench: [{lvl: 3 as short, id: 34}, {lvl: 2 as short, id: 16}, {lvl: 2 as short, id: 17}]}),
    <inventorypets:solstice_helmet>.withTag({ench: [{lvl: 4 as short, id: 34}, {lvl: 3 as short, id: 5}, {lvl: 1 as short, id: 6}]}),
    <inventorypets:solstice_chestplate>.withTag({ench: [{lvl: 4 as short, id: 1}, {lvl: 4 as short, id: 4}, {lvl: 3 as short, id: 7}]}),
    <inventorypets:solstice_leggings>.withTag({ench: [{lvl: 4 as short, id: 34}, {lvl: 4 as short, id: 3}, {lvl: 4 as short, id: 0}]}),
    <inventorypets:solstice_boots>.withTag({ench: [{lvl: 4 as short, id: 34}, {lvl: 4 as short, id: 1}, {lvl: 4 as short, id: 2}]}),
    <extrabotany:goblinslayerhelm>,
    <extrabotany:goblinslayerchest>,
    <extrabotany:goblinslayerlegs>,
    <extrabotany:goblinslayerboots>,
    <extrabotany:goblinslayerhelm>.withTag({isday: 0 as byte}),
    <extrabotany:goblinslayerchest>.withTag({isday: 0 as byte}),
    <extrabotany:goblinslayerlegs>.withTag({isday: 0 as byte}),
    <extrabotany:goblinslayerboots>.withTag({isday: 0 as byte}),
    <cyclicmagic:auto_crafter>,
    <cyclicmagic:auto_packager>,
    <extrautils2:chunkloader>,
    <treasure2:angels_ring>,
    <treasure2:bracelet_of_wonder>,
    <treasure2:ring_of_fortitude>,
    <botania:unholycloak>,
    <botania:balancecloak>,
    <botania:holycloak>
] as IIngredient[];

val disabledRecipeRegex as string[] = [
    "^mysticalagriculture:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(sickle)|(fishing_rod)|(scythe))$",
    "^twilightforest:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$",
    "^tofucraft:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(leggins)|(chestplate)|(helmet))$",
    "^defiledlands:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$",
    "^abyssalcraft:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(plate)|(legs)|(helm)|(pick))$",
    "^netherex:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(plate)|(legs)|(helm)|(pick))$",
    "^candymod:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))_(.*)$",
    "^aether_legacy:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$",
    "^betternether:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$",
    "^tcomplement:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$",
    "^bloodarsenal:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick))$",
    "^botania:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick)|(chest))$",
    "^extrabotany:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet)|(legs)|(helm)|(pick)|(chest))$",
    "^enderio:(.*)((pickaxe)|(paxel)|(bow)|(hoe)|(sword)|(axe)|(shovel)|(boots)|(leggings)|(chestplate)|(helmet))$",
    "^thermalfoundation:tool.fishing_rod_(.*)$",
    "^jaopca:block_crystalcluster(.*)$",
    "^actuallyadditions:recipes24[3456789]$",
    "^actuallyadditions:recipes2[56789].$",
    "^actuallyadditions:recipes3[012].$",
    "^actuallyadditions:recipes33[01234567]$",
    "^thermalfoundation:((tool)|(armor))(.*)$",
    "^redstonearsenal:((tool)|(armor))(.*)$",
    "^redstonerepository:((tool)|(armor))(.*)$"
];

val outputBlacklist as IItemStack[] = [
    <twilightforest:giant_pickaxe>,
    <twilightforest:giant_sword>
];

for ingredient in disabledItems {
    ItemStages.removeItemStage(ingredient);
    ItemStages.addItemStage("disabled", ingredient);
    ItemStages.setUnfamiliarName("§4已禁用的物品", ingredient);
    for item in ingredient.items {
        RecipeUtil.remove(item);
        JEI.removeAndHide(item);
        item.addTooltip("§c已禁用");
    }
}

for recipe in recipes.all {
    for regex in disabledRecipeRegex {
        if(recipe.fullResourceDomain.matches(regex)) {
            var isBlacklisted as bool = false;
            for item in outputBlacklist {
                if(recipe.output.definition.id == item.definition.id && recipe.output.metadata == item.metadata) {
                    isBlacklisted = true;
                    break;
                }
            }
            if(!isBlacklisted) {
                RecipeUtil.remove(recipe.output);
                JEI.removeAndHide(recipe.output);
                recipe.output.addTooltip("§c已禁用");
                // Disabled this to fix the problem of zombies holding question marks
                // ItemStages.removeItemStage(recipe.output);
                // ItemStages.addItemStage("disabled", recipe.output);
                // ItemStages.setUnfamiliarName("§4已禁用的物品", ingredient);
                break;
            }
        }
    }
}