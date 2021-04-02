/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 1000
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.WeightedItemStack;

import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
import mods.ctutils.utils.Math;

function addGroup(groupName as string, chanceToGetUsed as double, armors as WeightedItemStack[string][], stage as string) {
    val armorableEntities as ArmorEntity[] = [
        ArmorHandler.createArmorEntity("minecraft:zombie"),
        ArmorHandler.createArmorEntity("minecraft:skeleton"),
        ArmorHandler.createArmorEntity("minecraft:zombie_pigman"),
        ArmorHandler.createArmorEntity("minecraft:husk"),
        ArmorHandler.createArmorEntity("minecraft:stray"),
        ArmorHandler.createArmorEntity("headcrumbs:human"),
		ArmorHandler.createArmorEntity("pvj:pvj_skeletal_knight")
    ] as ArmorEntity[];
    var group = ArmorHandler.createArmorGroup(groupName, chanceToGetUsed); 
    for entity in armorableEntities {
        group.addEntity(entity);
    }

    for set in armors {
        for slot in set {
            var armor as IItemStack = set[slot].stack as IItemStack;
            var weight as int = Math.round(set[slot].percent) as int;
            group.addArmor(ArmorHandler.createArmorSlot(slot, armor, weight, -10000.0));
        }
    }
    group.addGameStage(stage);
}

addGroup("pre_nether", (0.25 * MOB_ARMOR_MULTIPLIER as double) as double, [{
    head: <minecraft:leather_helmet> % 20,
    chest: <minecraft:leather_chestplate> % 20,
    legs: <minecraft:leather_leggings> % 20,
    feet: <minecraft:leather_boots> % 20,
    mainhand: <minecraft:wooden_sword> % 20
}, {
    mainhand: <minecraft:stone_sword> % 15
}, {
    mainhand: <minecraft:iron_pickaxe> % 15,
    offhand: <minecraft:torch> % 10
}, {
    mainhand: <minecraft:diamond_pickaxe> % 10,
    offhand: <minecraft:torch> % 10
}, {
    head: <minecraft:iron_helmet> % 15,
    chest: <minecraft:iron_chestplate> % 15,
    legs: <minecraft:iron_leggings> % 15,
    feet: <minecraft:iron_boots> % 15,
    mainhand: <minecraft:iron_sword> % 15
}, {
    head: <actuallyadditions:item_helm_crystal_black> % 3,
    chest: <actuallyadditions:item_chest_crystal_black> % 3,
    legs: <actuallyadditions:item_pants_crystal_black> % 3,
    feet: <actuallyadditions:item_boots_crystal_black> % 3,
    mainhand: <actuallyadditions:item_sword_crystal_black> % 2
}, {
    head: <actuallyadditions:item_helm_crystal_white> % 3,
    chest: <actuallyadditions:item_chest_crystal_white> % 3,
    legs: <actuallyadditions:item_pants_crystal_white> % 3,
    feet: <actuallyadditions:item_boots_crystal_white> % 3,
    mainhand: <actuallyadditions:item_sword_crystal_white> % 2
}, {
    head: <actuallyadditions:item_helm_crystal_red> % 3,
    chest: <actuallyadditions:item_chest_crystal_red> % 3,
    legs: <actuallyadditions:item_pants_crystal_red> % 3,
    feet: <actuallyadditions:item_boots_crystal_red> % 3,
    mainhand: <actuallyadditions:item_sword_crystal_red> % 2
}, {
    head: <actuallyadditions:item_helm_crystal_blue> % 3,
    chest: <actuallyadditions:item_chest_crystal_blue> % 3,
    legs: <actuallyadditions:item_pants_crystal_blue> % 3,
    feet: <actuallyadditions:item_boots_crystal_blue> % 3,
    mainhand: <actuallyadditions:item_sword_crystal_blue> % 2
}, {
    head: <minecraft:golden_helmet> % 10,
    chest: <minecraft:golden_chestplate> % 10,
    legs: <minecraft:golden_leggings> % 10,
    feet: <minecraft:golden_boots> % 10,
    mainhand: <minecraft:golden_sword> % 10
}, {
    head: <minecraft:diamond_helmet> % 5,
    chest: <minecraft:diamond_chestplate> % 5,
    legs: <minecraft:diamond_leggings> % 5,
    feet: <minecraft:diamond_boots> % 5,
    mainhand: <minecraft:diamond_sword> % 5
}, {
    head: <actuallyadditions:item_helm_obsidian> % 3,
    chest: <actuallyadditions:item_chest_obsidian> % 3,
    legs: <actuallyadditions:item_pants_obsidian> % 3,
    feet: <actuallyadditions:item_boots_obsidian> % 3,
    mainhand: <actuallyadditions:item_sword_obsidian> % 2
}, {
    head: <minecraft:chainmail_helmet> % 15,
    chest: <minecraft:chainmail_chestplate> % 15,
    legs: <minecraft:chainmail_leggings> % 15,
    feet: <minecraft:chainmail_boots> % 15
}, {
    head: <thermalfoundation:armor.helmet_copper> % 10,
    chest: <thermalfoundation:armor.plate_copper> % 10,
    legs: <thermalfoundation:armor.legs_copper> % 10,
    feet: <thermalfoundation:armor.boots_copper> % 10,
    mainhand: <thermalfoundation:tool.sword_copper> % 5,
    offhand: <thermalfoundation:tool.shield_copper> % 5
}, {
    head: <thermalfoundation:armor.helmet_tin> % 10,
    chest: <thermalfoundation:armor.plate_tin> % 10,
    legs: <thermalfoundation:armor.legs_tin> % 10,
    feet: <thermalfoundation:armor.boots_tin> % 10,
    mainhand: <thermalfoundation:tool.sword_tin> % 5,
    offhand: <thermalfoundation:tool.shield_tin> % 5
}, {
    head: <thermalfoundation:armor.helmet_silver> % 5,
    chest: <thermalfoundation:armor.plate_silver> % 5,
    legs: <thermalfoundation:armor.legs_silver> % 5,
    feet: <thermalfoundation:armor.boots_silver> % 5,
    mainhand: <thermalfoundation:tool.sword_silver> % 5,
    offhand: <thermalfoundation:tool.shield_silver> % 5
}, {
    head: <thermalfoundation:armor.helmet_nickel> % 5,
    chest: <thermalfoundation:armor.plate_nickel> % 5,
    legs: <thermalfoundation:armor.legs_nickel> % 5,
    feet: <thermalfoundation:armor.boots_nickel> % 5,
    mainhand: <thermalfoundation:tool.sword_nickel> % 5,
    offhand: <thermalfoundation:tool.shield_nickel> % 5
}, {
    head: <thermalfoundation:armor.helmet_lead> % 5,
    chest: <thermalfoundation:armor.plate_lead> % 5,
    legs: <thermalfoundation:armor.legs_lead> % 5,
    feet: <thermalfoundation:armor.boots_lead> % 5,
    mainhand: <thermalfoundation:tool.sword_lead> % 5,
    offhand: <thermalfoundation:tool.shield_lead> % 5
}, {
    head: <thermalfoundation:armor.helmet_aluminum> % 5,
    chest: <thermalfoundation:armor.plate_aluminum> % 5,
    legs: <thermalfoundation:armor.legs_aluminum> % 5,
    feet: <thermalfoundation:armor.boots_aluminum> % 5,
    mainhand: <thermalfoundation:tool.sword_aluminum> % 5,
    offhand: <thermalfoundation:tool.shield_aluminum> % 5
}, {
    head: <thermalfoundation:armor.helmet_bronze> % 10,
    chest: <thermalfoundation:armor.plate_bronze> % 10,
    legs: <thermalfoundation:armor.legs_bronze> % 10,
    feet: <thermalfoundation:armor.boots_bronze> % 10,
    mainhand: <thermalfoundation:tool.sword_bronze> % 5,
    offhand: <thermalfoundation:tool.shield_bronze> % 5
}, {
    head: <thermalfoundation:armor.helmet_constantan> % 5,
    chest: <thermalfoundation:armor.plate_constantan> % 5,
    legs: <thermalfoundation:armor.legs_constantan> % 5,
    feet: <thermalfoundation:armor.boots_constantan> % 5,
    mainhand: <thermalfoundation:tool.sword_constantan> % 3,
    offhand: <thermalfoundation:tool.shield_constantan> % 3
}, {
    head: <thermalfoundation:armor.helmet_electrum> % 5,
    chest: <thermalfoundation:armor.plate_electrum> % 5,
    legs: <thermalfoundation:armor.legs_electrum> % 5,
    feet: <thermalfoundation:armor.boots_electrum> % 5,
    mainhand: <thermalfoundation:tool.sword_electrum> % 3,
    offhand: <thermalfoundation:tool.shield_electrum> % 3
}, {
    offhand: <minecraft:shield> % 20
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 3, Durability: 91, HarvestLevel: 0, Attack: 2.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 5, Durability: 91, HarvestLevel: 0, Attack: 2.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["wood", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]}) % 10
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.2f, FreeModifiers: 3, Durability: 160, HarvestLevel: 1, Attack: 4.7f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.2f, FreeModifiers: 5, Durability: 128, HarvestLevel: 1, Attack: 4.7f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["seared", "seared"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -10395295, level: 1}, {identifier: "cheapskate", color: -10395295, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "cheapskate", "toolleveling"]}) % 10
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.0f, FreeModifiers: 3, Durability: 65, HarvestLevel: 1, Attack: 3.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.0f, FreeModifiers: 5, Durability: 52, HarvestLevel: 1, Attack: 3.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["stone", "stone"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -6710887, level: 1}, {identifier: "cheapskate", color: -6710887, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "cheapskate", "toolleveling"]}) % 10
}, {
    mainhand: <minecraft:diamond_sword>.withTag({ench: [{lvl: 1 as short, id: 16}]}) % 3
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.2f, FreeModifiers: 3, Durability: 281, HarvestLevel: 1, Attack: 5.7f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.2f, FreeModifiers: 5, Durability: 224, HarvestLevel: 1, Attack: 5.7f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["seared", "seared", "seared"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -10395295, level: 1}, {identifier: "cheapskate", color: -10395295, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "cheapskate", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 3.5f, FreeModifiers: 3, Durability: 781, HarvestLevel: 3, Attack: 5.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 3.5f, FreeModifiers: 5, Durability: 781, HarvestLevel: 3, Attack: 5.2f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["tofu_gem", "tofu_gem", "tofu_gem"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -2039584, level: 1}, {identifier: "crystal_force", color: -2039584, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "crystal_force", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.5f, FreeModifiers: 3, Durability: 429, HarvestLevel: 1, Attack: 5.0f}, Stats: {AttackSpeedMultiplier: 1.1f, MiningSpeed: 12.5f, FreeModifiers: 5, Durability: 429, HarvestLevel: 1, Attack: 5.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["aluminium", "aluminium", "aluminium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "lightweight", color: -2697246, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["lightweight", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 3, Durability: 125, HarvestLevel: 0, Attack: 3.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 5, Durability: 125, HarvestLevel: 0, Attack: 3.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["wood", "wood", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.625f, FreeModifiers: 3, Durability: 401, HarvestLevel: 1, Attack: 4.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.625f, FreeModifiers: 5, Durability: 401, HarvestLevel: 1, Attack: 4.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["netherrack", "netherrack", "netherrack"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "hellish", color: -4698289, level: 1}, {identifier: "aridiculous", color: -4698289, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["hellish", "aridiculous", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.0375004f, FreeModifiers: 3, Durability: 2074, HarvestLevel: 0, Attack: 2.8f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.0375004f, FreeModifiers: 5, Durability: 2074, HarvestLevel: 0, Attack: 2.8f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["blueslime", "blueslime", "blueslime"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "slimey_blue", color: -9123641, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["slimey_blue", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 0.6375f, FreeModifiers: 3, Durability: 13, HarvestLevel: 0, Attack: 1.05f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 0.6375f, FreeModifiers: 7, Durability: 13, HarvestLevel: 0, Attack: 1.05f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["paper", "paper", "paper"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "writable", color: -1, level: 2, writable2: 1 as byte, writable1: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["writable1", "writable2", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.625f, FreeModifiers: 3, Durability: 219, HarvestLevel: 1, Attack: 4.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.625f, FreeModifiers: 5, Durability: 219, HarvestLevel: 1, Attack: 4.5f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["tin", "tin", "tin"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "crude", color: -6771527, level: 1, crude1: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["crude1", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.5f, FreeModifiers: 3, Durability: 390, HarvestLevel: 1, Attack: 4.5f}, Stats: {AttackSpeedMultiplier: 1.1f, MiningSpeed: 12.5f, FreeModifiers: 5, Durability: 390, HarvestLevel: 1, Attack: 4.5f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["aluminium", "aluminium", "aluminium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "lightweight", color: -2697246, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["lightweight", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:scythe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.625f, FreeModifiers: 3, Durability: 642, HarvestLevel: 1, Attack: 4.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.625f, FreeModifiers: 5, Durability: 642, HarvestLevel: 1, Attack: 4.0f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["livingrock", "livingrock", "livingrock", "livingrock"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "stonebound", color: -2630969, level: 1}, {identifier: "tconevo.sundering", color: -2630969, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["stonebound", "tconevo.sundering", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 13.5f, FreeModifiers: 3, Durability: 1290, HarvestLevel: 1, Attack: 5.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 13.5f, FreeModifiers: 5, Durability: 1290, HarvestLevel: 1, Attack: 5.0f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["alubrass", "alubrass", "alubrass"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "momentum", color: -278483, level: 1}, {identifier: "spartan", color: -278483, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["momentum", "spartan", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 3.5f, FreeModifiers: 3, Durability: 710, HarvestLevel: 3, Attack: 4.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 3.5f, FreeModifiers: 5, Durability: 710, HarvestLevel: 3, Attack: 4.2f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["tofu_gem", "tofu_gem", "tofu_gem"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -2039584, level: 1}, {identifier: "crystal_force", color: -2039584, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "crystal_force", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 3, Durability: 233, HarvestLevel: 0, Attack: 3.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 5, Durability: 233, HarvestLevel: 0, Attack: 3.0f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["polyethylene", "polyethylene", "polyethylene"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "crude", color: -2039584, level: 1, crude1: 1 as byte}, {identifier: "cheap", color: -2039584, level: 1}, {identifier: "tconevo.foot_fleet", color: -2039584, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["crude1", "cheap", "tconevo.foot_fleet", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 3, Durability: 114, HarvestLevel: 0, Attack: 2.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 5, Durability: 114, HarvestLevel: 0, Attack: 2.5f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["wood", "wood", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:kama>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 1.0375f, FreeModifiers: 3, Durability: 31, HarvestLevel: 0, Attack: 0.1f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 1.0375f, FreeModifiers: 7, Durability: 31, HarvestLevel: 0, Attack: 0.1f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["ma.prosperity", "ma.prosperity", "ma.prosperity"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "writable", color: -6044219, level: 2, writable2: 1 as byte, writable1: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["writable1", "writable2", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.5f, FreeModifiers: 3, Durability: 855, HarvestLevel: 1, Attack: 4.0f}, Stats: {AttackSpeedMultiplier: 1.1f, MiningSpeed: 12.5f, FreeModifiers: 5, Durability: 855, HarvestLevel: 1, Attack: 4.0f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["aluminium", "aluminium", "aluminium", "aluminium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "lightweight", color: -2697246, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["lightweight", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:scythe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.3f, FreeModifiers: 3, Durability: 3119, HarvestLevel: 0, Attack: 1.8f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.3f, FreeModifiers: 5, Durability: 3119, HarvestLevel: 0, Attack: 1.8f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["slime", "slime", "slime", "slime"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "slimey_green", color: -8206221, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["slimey_green", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.5f, FreeModifiers: 3, Durability: 470, HarvestLevel: 2, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.5f, FreeModifiers: 5, Durability: 470, HarvestLevel: 2, Attack: 6.0f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["enori_crystal", "enori_crystal", "enori_crystal"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "magnetic", color: -1842205, level: 1, magnetic1: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["magnetic1", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 3.125f, FreeModifiers: 3, Durability: 165, HarvestLevel: 0, Attack: 4.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 3.125f, FreeModifiers: 8, Durability: 165, HarvestLevel: 0, Attack: 4.5f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["livingwood", "livingwood", "livingwood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.modifiable", color: -8824277, level: 3}, {identifier: "ecological", color: -8824277, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.modifiable1", "ecological", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.5f, FreeModifiers: 3, Durability: 588, HarvestLevel: 2, Attack: 5.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.5f, FreeModifiers: 5, Durability: 588, HarvestLevel: 2, Attack: 5.5f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["constantan", "constantan", "constantan"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "freezing", color: -4219041, level: 1}, {identifier: "aridiculous", color: -4219041, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["freezing", "aridiculous", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 16.25f, FreeModifiers: 3, Durability: 191, HarvestLevel: 1, Attack: 5.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 16.25f, FreeModifiers: 5, Durability: 191, HarvestLevel: 1, Attack: 5.5f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["signalum", "signalum", "signalum"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.relentless", color: -2139136, level: 1}, {identifier: "tconevo.aftershock", color: -2139136, level: 3}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.relentless", "tconevo.aftershock1", "toolleveling"]}) % 5
}] as WeightedItemStack[string][], "getting_started");

addGroup("post_nether", (0.2 * MOB_ARMOR_MULTIPLIER as double) as double, [{
    head: <cyclicmagic:emerald_helmet> % 10,
    chest: <cyclicmagic:emerald_chestplate> % 10,
    legs: <cyclicmagic:emerald_leggings> % 10,
    feet: <cyclicmagic:emerald_boots> % 10,
    mainhand: <cyclicmagic:emerald_sword> % 10,
    offhand: <cyclicmagic:emerald_axe> % 10
},  {
    head: <abyssalcraft:ahelmet> % 10,
    chest: <abyssalcraft:aplate> % 10,
    legs: <abyssalcraft:alegs> % 10,
    feet: <abyssalcraft:aboots> % 10,
    mainhand: <abyssalcraft:asword>.withTag({ench: [{lvl: 1 as short, id: 16}]}) % 15
}, {
    head: <abyssalcraft:corhelmet> % 5,
    chest: <abyssalcraft:corplate> % 5,
    legs: <abyssalcraft:corlegs> % 5,
    feet: <abyssalcraft:corboots> % 5,
    mainhand: <abyssalcraft:corsword>.withTag({ench: [{lvl: 1 as short, id: 16}]}) % 5
}, {
    mainhand: <netherex:blazed_amedian_sword> % 5
}, {
    head: <tofucraft:armordiamondhelmet> % 5,
    chest: <tofucraft:armordiamondchestplate> % 5,
    legs: <tofucraft:armordiamondleggins> % 5,
    feet: <tofucraft:armordiamondboots> % 5,
    mainhand: <tofucraft:sworddiamond>.withTag({ench: [{lvl: 2 as short, id: 16}, {lvl: 1 as short, id: 19}]}) % 5
}, {
    head: <thermalfoundation:armor.helmet_steel> % 10,
    chest: <thermalfoundation:armor.plate_steel> % 10,
    legs: <thermalfoundation:armor.legs_steel> % 10,
    feet: <thermalfoundation:armor.boots_steel> % 10,
    mainhand: <thermalfoundation:tool.sword_steel> % 5,
    mainhand: <thermalfoundation:tool.shield_steel> % 5
}, {
    head: <thermalfoundation:armor.helmet_platinum> % 10,
    chest: <thermalfoundation:armor.plate_platinum> % 10,
    legs: <thermalfoundation:armor.legs_platinum> % 10,
    feet: <thermalfoundation:armor.boots_platinum> % 10,
    mainhand: <thermalfoundation:tool.sword_platinum> % 5,
    mainhand: <thermalfoundation:tool.shield_platinum> % 5
}, {
    head: <thermalfoundation:armor.helmet_invar> % 5,
    chest: <thermalfoundation:armor.plate_invar> % 5,
    legs: <thermalfoundation:armor.legs_invar> % 5,
    feet: <thermalfoundation:armor.boots_invar> % 5,
    mainhand: <thermalfoundation:tool.sword_invar> % 3,
    mainhand: <thermalfoundation:tool.shield_invar> % 3
}, {
    head: <actuallyadditions:item_helm_crystal_green> % 3,
    chest: <actuallyadditions:item_chest_crystal_green> % 3,
    legs: <actuallyadditions:item_pants_crystal_green> % 3,
    feet: <actuallyadditions:item_boots_crystal_green> % 3,
    mainhand: <actuallyadditions:item_sword_crystal_green> % 2
}, {
    head: <actuallyadditions:item_helm_crystal_light_blue> % 3,
    chest: <actuallyadditions:item_chest_crystal_light_blue> % 3,
    legs: <actuallyadditions:item_pants_crystal_light_blue> % 3,
    feet: <actuallyadditions:item_boots_crystal_light_blue> % 3,
    mainhand: <actuallyadditions:item_sword_crystal_light_blue> % 2
}, {
    head: <actuallyadditions:item_helm_emerald> % 3,
    chest: <actuallyadditions:item_chest_emerald> % 3,
    legs: <actuallyadditions:item_pants_emerald> % 3,
    feet: <actuallyadditions:item_boots_emerald> % 3,
    mainhand: <actuallyadditions:item_sword_emerald> % 2
}, {
    head: <tcomplement:knightslime_helmet> % 10,
    chest: <tcomplement:knightslime_chestplate> % 10,
    legs: <tcomplement:knightslime_leggings> % 10,
    feet: <tcomplement:knightslime_boots> % 10,
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.25f, FreeModifiers: 3, Durability: 1630, HarvestLevel: 3, Attack: 6.1f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.25f, FreeModifiers: 5, Durability: 1630, HarvestLevel: 3, Attack: 6.1f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["knightslime", "knightslime", "knightslime"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "unnatural", color: -946192, level: 1}, {identifier: "crumbling", color: -946192, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["unnatural", "crumbling", "toolleveling"]}) % 5,
    mainhand: <tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.25f, FreeModifiers: 3, Durability: 3470, HarvestLevel: 3, Attack: 5.1f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.25f, FreeModifiers: 5, Durability: 3470, HarvestLevel: 3, Attack: 5.1f}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {Materials: ["knightslime", "knightslime", "knightslime", "knightslime"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "unnatural", color: -946192, level: 1}, {identifier: "crumbling", color: -946192, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["unnatural", "crumbling", "toolleveling"]}) % 5
}, {
    offhand: <thermalfoundation:tool.shield_diamond> % 20
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 3, Durability: 366, HarvestLevel: 2, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 5, Durability: 366, HarvestLevel: 2, Attack: 6.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["steeleaf", "steeleaf"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "twilit", color: -11368646, level: 1}, {identifier: "synergy", color: -11368646, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["twilit", "synergy", "toolleveling"]}) % 20
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.775f, FreeModifiers: 3, Durability: 990, HarvestLevel: 4, Attack: 8.9f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.775f, FreeModifiers: 5, Durability: 990, HarvestLevel: 4, Attack: 8.9f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["manyullyn", "manyullyn"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "coldblooded", color: -6202120, level: 1}, {identifier: "insatiable", color: -6202120, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["coldblooded", "insatiable", "toolleveling"]}) % 10
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 13.2f, FreeModifiers: 3, Durability: 1200, HarvestLevel: 3, Attack: 6.8f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 13.2f, FreeModifiers: 5, Durability: 1200, HarvestLevel: 3, Attack: 6.8f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["chromium", "chromium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "dense", color: -14235942, level: 1}, {identifier: "heavy", color: -14235942, level: 1}, {identifier: "poisonous", color: -14235942, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["dense", "heavy", "poisonous", "toolleveling"]}) % 10
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 3, Durability: 256, HarvestLevel: 0, Attack: 4.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 5, Durability: 256, HarvestLevel: 0, Attack: 4.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["polyethylene", "polyethylene", "polyethylene"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -2039584, level: 1}, {identifier: "crude", color: -2039584, level: 1, crude1: 1 as byte}, {identifier: "tconevo.foot_fleet", color: -2039584, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "crude1", "tconevo.foot_fleet", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 3, Durability: 2345, HarvestLevel: 4, Attack: 8.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 5, Durability: 2345, HarvestLevel: 4, Attack: 8.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["emerald_plustic", "emerald_plustic", "emerald_plustic"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "terrafirma", color: -11141291, level: 1, terrafirma1: 1 as byte}, {identifier: "elemental", color: -11141291, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["terrafirma1", "elemental", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 15.0f, FreeModifiers: 3, Durability: 1768, HarvestLevel: 4, Attack: 5.1f}, Stats: {AttackSpeedMultiplier: 1.1f, MiningSpeed: 15.0f, FreeModifiers: 5, Durability: 1768, HarvestLevel: 4, Attack: 5.1f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["cobalt", "cobalt", "cobalt"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "lightweight", color: -14122284, level: 1}, {identifier: "momentum", color: -14122284, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["lightweight", "momentum", "toolleveling"]}) % 5
}, {
    mainhand: <plustic:katana>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.3625f, FreeModifiers: 3, Durability: 451, HarvestLevel: 1, Attack: 3.5f}, PlusTiC_Counter: 0.0f, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.3625f, FreeModifiers: 5, Durability: 451, HarvestLevel: 1, Attack: 5.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["bone", "bone", "bone", "bone"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "fractured", color: -1186113, level: 1}, {identifier: "splintering", color: -1186113, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["fractured", "splintering", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 3, Durability: 1290, HarvestLevel: 1, Attack: 9.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 5, Durability: 1290, HarvestLevel: 1, Attack: 9.5f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["silver", "silver", "silver", "silver"], Modifiers: ["beheading_cleaver", "toolleveling"]}, Modifiers: [{identifier: "holy", color: -3019530, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["holy", "toolleveling"]}) % 5
}, {
    mainhand: <plustic:katana>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.4f, FreeModifiers: 3, Durability: 8113, HarvestLevel: 4, Attack: 9.7f}, PlusTiC_Counter: 0.0f, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.4f, FreeModifiers: 5, Durability: 8113, HarvestLevel: 4, Attack: 9.7f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["sakura_diamond", "sakura_diamond", "sakura_diamond", "sakura_diamond"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "crystal_force", color: -32597, level: 1}, {identifier: "pinky", color: -32597, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["crystal_force", "pinky", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:rapier>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 17.5f, FreeModifiers: 3, Durability: 512, HarvestLevel: 3, Attack: 7.7f}, Stats: {AttackSpeedMultiplier: 1.1f, MiningSpeed: 17.5f, FreeModifiers: 5, Durability: 512, HarvestLevel: 3, Attack: 7.7f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["aeroite", "aeroite", "aeroite"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "launching", color: -16718337, level: 1}, {identifier: "antigrav", color: -16718337, level: 1}, {identifier: "lightweight", color: -16718337, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["launching", "antigrav", "lightweight", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:frypan>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.5f, FreeModifiers: 3, Durability: 941, HarvestLevel: 4, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 12.5f, FreeModifiers: 5, Durability: 941, HarvestLevel: 4, Attack: 6.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["abyssalnite", "abyssalnite"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "dreadpurity", color: -11920247, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["dreadpurity", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:frypan>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 17.0f, FreeModifiers: 3, Durability: 3680, HarvestLevel: 3, Attack: 7.6f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 17.0f, FreeModifiers: 5, Durability: 3680, HarvestLevel: 3, Attack: 7.6f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["manganese_steel", "manganese_steel"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "dense", color: -12232092, level: 1}, {identifier: "reliable", color: -12232092, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["dense", "reliable", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.875f, FreeModifiers: 3, Durability: 402, HarvestLevel: 1, Attack: 6.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.875f, FreeModifiers: 5, Durability: 402, HarvestLevel: 1, Attack: 6.2f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["prismarine", "prismarine", "prismarine"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "aquadynamic", color: -8462660, level: 1}, {identifier: "jagged", color: -8462660, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["aquadynamic", "jagged", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 3, Durability: 677, HarvestLevel: 1, Attack: 5.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 5, Durability: 677, HarvestLevel: 1, Attack: 5.5f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["silver", "silver", "silver"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "holy", color: -3019530, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["holy", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:scythe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 3, Durability: 1247, HarvestLevel: 2, Attack: 4.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 6.25f, FreeModifiers: 5, Durability: 1247, HarvestLevel: 2, Attack: 4.0f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["umbrium", "umbrium", "umbrium", "umbrium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "defiled", color: -5956916, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["defiled", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:excavator>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.125f, FreeModifiers: 3, Durability: 1611, HarvestLevel: 2, Attack: 5.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.125f, FreeModifiers: 5, Durability: 1611, HarvestLevel: 2, Attack: 5.5f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["invar", "invar", "invar", "invar"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "duritos", color: -7101283, level: 1}, {identifier: "stiff", color: -7101283, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["duritos", "stiff", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 3, Durability: 4595, HarvestLevel: 4, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 5, Durability: 4595, HarvestLevel: 4, Attack: 6.0f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["knightmetal", "knightmetal", "knightmetal", "knightmetal"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "twilit", color: -3873106, level: 1}, {identifier: "stalwart", color: -3873106, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["twilit", "stalwart", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:kama>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.75f, FreeModifiers: 3, Durability: 990, HarvestLevel: 2, Attack: 4.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.75f, FreeModifiers: 5, Durability: 990, HarvestLevel: 2, Attack: 4.5f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["pigiron", "pigiron", "pigiron"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tasty", color: -1073509, level: 1}, {identifier: "baconlicious", color: -1073509, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tasty", "baconlicious", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 3, Durability: 1035, HarvestLevel: 2, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 5, Durability: 1035, HarvestLevel: 2, Attack: 6.0f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["osmium", "osmium", "osmium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "stiff", color: -5653044, level: 1}, {identifier: "dense", color: -5653044, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["stiff", "dense", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 11.25f, FreeModifiers: 3, Durability: 332, HarvestLevel: 1, Attack: 5.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 11.25f, FreeModifiers: 5, Durability: 332, HarvestLevel: 1, Attack: 5.5f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["lumium", "lumium", "lumium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.opportunist", color: -2235507, level: 1}, {identifier: "tconevo.luminiferous", color: -2235507, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.opportunist", "tconevo.luminiferous", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:shovel>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 11.25f, FreeModifiers: 3, Durability: 1980, HarvestLevel: 4, Attack: 6.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 11.25f, FreeModifiers: 5, Durability: 1980, HarvestLevel: 4, Attack: 6.5f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["platinum", "platinum", "platinum"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.deadly_precision", color: -10366477, level: 1}, {identifier: "coldblooded", color: -10366477, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.deadly_precision", "coldblooded", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 14.5f, FreeModifiers: 3, Durability: 3591, HarvestLevel: 3, Attack: 6.7f}, Stats: {AttackSpeedMultiplier: 1.1f, MiningSpeed: 14.5f, FreeModifiers: 5, Durability: 3591, HarvestLevel: 3, Attack: 6.7f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["diamond", "diamond", "diamond"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "duritos", color: -15138817, level: 1}, {identifier: "crystal_force", color: -15138817, level: 1}, {identifier: "lightweight", color: -15138817, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["duritos", "crystal_force", "lightweight", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 3, Durability: 3916, HarvestLevel: 3, Attack: 10.799999f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 5, Durability: 3916, HarvestLevel: 3, Attack: 10.799999f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["diamantine_crystal", "diamantine_crystal", "diamantine_crystal", "diamantine_crystal"], Modifiers: ["beheading_cleaver", "toolleveling"]}, Modifiers: [{identifier: "tconevo.aftershock", color: -7617026, level: 3}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.aftershock1", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.75f, FreeModifiers: 3, Durability: 1224, HarvestLevel: 3, Attack: 6.9f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 5.75f, FreeModifiers: 5, Durability: 1224, HarvestLevel: 3, Attack: 6.9f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["ruby", "ruby", "ruby"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "raging", color: -43691, level: 1}, {identifier: "bloodymary", color: -43691, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["raging", "bloodymary", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:mattock>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, HarvestLevelAxe: 2, MiningSpeed: 7.5f, FreeModifiers: 3, HarvestLevelShovel: 2, Durability: 270, HarvestLevel: 2, Attack: 7.5f}, Stats: {AttackSpeedMultiplier: 1.1f, HarvestLevelAxe: 2, MiningSpeed: 7.5f, FreeModifiers: 5, HarvestLevelShovel: 2, Durability: 270, HarvestLevel: 2, Attack: 7.5f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["certus_quartz", "certus_quartz", "certus_quartz"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "lightweight", color: -3743233, level: 1}, {identifier: "crystal_force", color: -3743233, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["lightweight", "crystal_force", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 3, Durability: 2153, HarvestLevel: 3, Attack: 7.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 5, Durability: 2153, HarvestLevel: 3, Attack: 7.0f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["diamantine_crystal", "diamantine_crystal", "diamantine_crystal"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.aftershock", color: -7617026, level: 3}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.aftershock1", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 3, Durability: 2345, HarvestLevel: 4, Attack: 8.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 5, Durability: 2345, HarvestLevel: 4, Attack: 8.0f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["emerald_plustic", "emerald_plustic", "emerald_plustic"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "terrafirma", color: -11141291, level: 1, terrafirma1: 1 as byte}, {identifier: "elemental", color: -11141291, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["terrafirma1", "elemental", "toolleveling"]}) % 5
}] as WeightedItemStack[string][], "nether");

addGroup("post_hardmode", (0.2 * MOB_ARMOR_MULTIPLIER as double) as double, [{
    head: <abyssalcraft:dreadiumhelmet> % 10,
    chest: <abyssalcraft:dreadiumplate> % 10,
    legs: <abyssalcraft:dreadiumlegs> % 10,
    feet: <abyssalcraft:dreadiumboots> % 10,
    mainhand: <abyssalcraft:dreadiumsword>.withTag({ench: [{lvl: 2 as short, id: 16}]}) % 15
}, {
    head: <tcomplement:manyullyn_helmet> % 10,
    chest: <tcomplement:manyullyn_chestplate> % 10,
    legs: <tcomplement:manyullyn_leggings> % 10,
    feet: <tcomplement:manyullyn_boots> % 10,
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.775f, FreeModifiers: 3, Durability: 1130, HarvestLevel: 4, Attack: 9.9f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.775f, FreeModifiers: 5, Durability: 1130, HarvestLevel: 4, Attack: 9.9f}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["manyullyn", "manyullyn", "manyullyn"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "coldblooded", color: -6202120, level: 1}, {identifier: "insatiable", color: -6202120, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["coldblooded", "insatiable", "toolleveling"]}) % 5
}, {
    head: <abyssalcraft:ethaxiumhelmet> % 5,
    chest: <abyssalcraft:ethaxiumplate> % 5,
    legs: <abyssalcraft:ethaxiumlegs> % 5,
    feet: <abyssalcraft:ethaxiumboots> % 5,
    mainhand: <abyssalcraft:ethaxiumsword>.withTag({ench: [{lvl: 3 as short, id: 16}, {lvl: 1 as short, id: 19}]}) % 5
}, {
    head: <cyclicmagic:purple_helmet> % 10,
    chest: <cyclicmagic:purple_chestplate> % 10,
    legs: <cyclicmagic:purple_leggings> % 10,
    feet: <cyclicmagic:purple_boots> % 10,
    mainhand: <abyssalcraft:ethaxiumsword>.withTag({ench: [{lvl: 3 as short, id: 16}, {lvl: 1 as short, id: 19}]}) % 5
}, {
    head: <twilightforest:yeti_helmet>.withTag({ench: [{lvl: 2 as short, id: 0}]}) % 5,
    chest: <twilightforest:yeti_chestplate>.withTag({ench: [{lvl: 2 as short, id: 0}]}) % 5,
    legs: <twilightforest:yeti_leggings>.withTag({ench: [{lvl: 2 as short, id: 0}]}) % 5,
    feet: <twilightforest:yeti_boots>.withTag({ench: [{lvl: 2 as short, id: 0}, {lvl: 4 as short, id: 2}]}) % 5,
    mainhand: <twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20}, {lvl: 2 as short, id: 19}]})
}, {
    offhand: <thermalfoundation:tool.shield_platinum> % 20
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 20.0f, FreeModifiers: 3, Durability: 8960, HarvestLevel: 4, Attack: 8.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 20.0f, FreeModifiers: 5, Durability: 8960, HarvestLevel: 4, Attack: 8.5f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["stainless_steel", "stainless_steel"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "anticorrosion", color: -9079435, level: 1}, {identifier: "fortified", color: -9079435, level: 1}, {identifier: "reliable", color: -9079435, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["anticorrosion", "fortified", "reliable", "toolleveling"]}) % 20
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 27.8125f, FreeModifiers: 3, Durability: 11478, HarvestLevel: 5, Attack: 11.8f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 27.8125f, FreeModifiers: 5, Durability: 11478, HarvestLevel: 5, Attack: 11.8f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["ma.supremium", "ma.supremium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "prosperous", color: -3932160, level: 1}, {identifier: "duritos", color: -3932160, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["prosperous", "duritos", "toolleveling"]}) % 10
}, {
    offhand: <tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.5f, FreeModifiers: 3, Durability: 1693, HarvestLevel: 5, Attack: 12.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.5f, FreeModifiers: 5, Durability: 1693, HarvestLevel: 5, Attack: 12.2f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["gaia", "gaia"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.mortal_wounds", color: -32597, level: 1}, {identifier: "tconevo.gaia_wrath", color: -32597, level: 1}, {identifier: "tconevo.mana_infused", color: -32597, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.mortal_wounds", "tconevo.gaia_wrath", "tconevo.mana_infused", "toolleveling"]}) % 10
}, {
    mainhand: <tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 3, Durability: 1976, HarvestLevel: 3, Attack: 10.799999f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.75f, FreeModifiers: 5, Durability: 1976, HarvestLevel: 3, Attack: 10.799999f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["steel", "steel", "steel", "steel"], Modifiers: ["beheading_cleaver", "toolleveling"]}, Modifiers: [{identifier: "stiff", color: -5789785, level: 1}, {identifier: "sharp", color: -5789785, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["stiff", "sharp", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:rapier>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.6f, FreeModifiers: 3, Durability: 627, HarvestLevel: 4, Attack: 9.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.2225685f, FreeModifiers: 5, Durability: 613, HarvestLevel: 4, Attack: 8.934319f}, Special: {decayStatBonus: {identifier: "", color: 0, attack: -0.26568168f, durability: -14, speed: -0.3774342f}, Categories: ["weapon", "tool"], decayStatPool: {identifier: "", color: 16777215, attack: 13.650034f, durability: 285, speed: 12.100028f}}, TinkerData: {Materials: ["yellorium", "yellorium", "yellorium"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.luminiferous", color: -1114303, level: 1}, {identifier: "glimmer", color: -1114303, level: 1}, {identifier: "decay", color: -1114303, level: 1}, {identifier: "bright", color: -1114303, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.luminiferous", "glimmer", "decay", "bright", "toolleveling"]}) % 5
}, {
    mainhand: <plustic:katana>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.25f, FreeModifiers: 3, Durability: 1304, HarvestLevel: 3, Attack: 6.1f}, PlusTiC_Counter: 0.0f, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 7.25f, FreeModifiers: 5, Durability: 1304, HarvestLevel: 3, Attack: 6.1f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["knightslime", "knightslime", "knightslime", "knightslime"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "unnatural", color: -946192, level: 1}, {identifier: "crumbling", color: -946192, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["unnatural", "crumbling", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.0f, FreeModifiers: 3, Durability: 3132, HarvestLevel: 3, Attack: 11.58f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.0f, FreeModifiers: 5, Durability: 3132, HarvestLevel: 3, Attack: 11.58f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["fierymetal", "fierymetal", "fierymetal", "fierymetal"], Modifiers: ["beheading_cleaver", "toolleveling"]}, Modifiers: [{identifier: "twilit", color: -142243, level: 1}, {identifier: "flammable", color: -142243, level: 1}, {identifier: "autosmelt", color: -142243, level: 1}, {identifier: "superheat", color: -142243, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["twilit", "flammable", "autosmelt", "superheat", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:frypan>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 21.8f, FreeModifiers: 3, Durability: 4975, HarvestLevel: 5, Attack: 10.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 21.8f, FreeModifiers: 5, Durability: 4975, HarvestLevel: 5, Attack: 10.2f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["aqualite", "aqualite"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "aquadynamic", color: -10158118, level: 1}, {identifier: "tidal_force", color: -10158118, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["aquadynamic", "tidal_force", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 10.0f, FreeModifiers: 3, Durability: 4050, HarvestLevel: 4, Attack: 6.5f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 10.0f, FreeModifiers: 5, Durability: 4050, HarvestLevel: 4, Attack: 6.5f}, Special: {Categories: ["aoe", "harvest", "weapon", "tool"]}, TinkerData: {Materials: ["valkyrie", "valkyrie", "valkyrie", "valkyrie"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "reach", color: -1118499, level: 1}, {identifier: "gilded", color: -1118499, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["reach", "gilded", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 14.3f, FreeModifiers: 3, Durability: 4660, HarvestLevel: 4, Attack: 9.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 14.3f, FreeModifiers: 5, Durability: 4660, HarvestLevel: 4, Attack: 9.2f}, Special: {Categories: ["aoe", "harvest", "weapon", "tool"]}, TinkerData: {Materials: ["meteor", "meteor", "meteor", "meteor"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "superknockback", color: -3790808, level: 1}, {identifier: "vision", color: -3790808, level: 1}, {identifier: "flammable", color: -3790808, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["superknockback", "vision", "flammable", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 20.0f, FreeModifiers: 3, Durability: 13030, HarvestLevel: 4, Attack: 9.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 20.0f, FreeModifiers: 5, Durability: 13030, HarvestLevel: 4, Attack: 9.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["stainless_steel", "stainless_steel", "stainless_steel"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "anticorrosion", color: -9079435, level: 1}, {identifier: "fortified", color: -9079435, level: 1}, {identifier: "reliable", color: -9079435, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["anticorrosion", "fortified", "reliable", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 3, Durability: 1692, HarvestLevel: 3, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 9.375f, FreeModifiers: 5, Durability: 1692, HarvestLevel: 3, Attack: 6.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["gravitite", "gravitite", "gravitite"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "launching", color: -3385942, level: 1}, {identifier: "antigrav", color: -3385942, level: 1}, {identifier: "gilded", color: -3385942, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["launching", "antigrav", "gilded", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 80.5f, FreeModifiers: 3, Durability: 1520, HarvestLevel: 4, Attack: 10.7f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 80.5f, FreeModifiers: 5, Durability: 1520, HarvestLevel: 4, Attack: 10.7f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["ravaging", "ravaging", "ravaging"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.relentless", color: -15901, level: 1}, {identifier: "pulverizing", color: -15901, level: 1}, {identifier: "crumbling", color: -15901, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.relentless", "pulverizing", "crumbling", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:pickaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 14.6f, FreeModifiers: 3, Durability: 4688, HarvestLevel: 4, Attack: 10.8f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 14.6f, FreeModifiers: 5, Durability: 4688, HarvestLevel: 4, Attack: 10.8f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["starmetal", "starmetal", "starmetal"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.astral", color: -14529617, level: 1}, {identifier: "unnatural", color: -14529617, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.astral", "unnatural", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:mattock>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, HarvestLevelAxe: 5, MiningSpeed: 8.5f, FreeModifiers: 3, HarvestLevelShovel: 5, Durability: 1693, HarvestLevel: 5, Attack: 15.2f}, Stats: {AttackSpeedMultiplier: 1.0f, HarvestLevelAxe: 5, MiningSpeed: 8.5f, FreeModifiers: 5, HarvestLevelShovel: 5, Durability: 1693, HarvestLevel: 5, Attack: 15.2f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["gaia", "gaia", "gaia"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.mortal_wounds", color: -32597, level: 1}, {identifier: "tconevo.mana_infused", color: -32597, level: 1}, {identifier: "tconevo.gaia_wrath", color: -32597, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.mortal_wounds", "tconevo.mana_infused", "tconevo.gaia_wrath", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:kama>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 4.5f, FreeModifiers: 3, Durability: 175, HarvestLevel: 0, Attack: 1.4f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 4.5f, FreeModifiers: 5, Durability: 175, HarvestLevel: 0, Attack: 1.4f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["poop", "poop", "poop"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "poisonous", color: -10665929, level: 1}, {identifier: "poopy", color: -10665929, level: 1}, {identifier: "softy", color: -10665929, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["poisonous", "poopy", "softy", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 18.75f, FreeModifiers: 3, Durability: 13200, HarvestLevel: 5, Attack: 14.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 18.75f, FreeModifiers: 5, Durability: 13200, HarvestLevel: 5, Attack: 14.0f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["dark_matter", "dark_matter", "dark_matter", "dark_matter"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "dense", color: -13684945, level: 1}, {identifier: "heavy", color: -13684945, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["dense", "heavy", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:excavator>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 16.0f, FreeModifiers: 3, Durability: 5894, HarvestLevel: 4, Attack: 8.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 16.0f, FreeModifiers: 5, Durability: 5894, HarvestLevel: 4, Attack: 8.2f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["sentient_metal", "sentient_metal", "sentient_metal", "sentient_metal"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.willful", color: -8462621, level: 1}, {identifier: "tconevo.sentient", color: -8462621, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.willful", "tconevo.sentient", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:lumberaxe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 3, Durability: 898, HarvestLevel: 2, Attack: 6.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 2.5f, FreeModifiers: 5, Durability: 898, HarvestLevel: 2, Attack: 6.0f}, Special: {Categories: ["aoe", "tool", "harvest"]}, TinkerData: {Materials: ["zanite", "zanite", "zanite", "zanite"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "crystal_force", color: -10087971, level: 1}, {identifier: "gilded", color: -10087971, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["crystal_force", "gilded", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:scythe>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.6f, FreeModifiers: 3, Durability: 4144, HarvestLevel: 4, Attack: 7.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 8.6f, FreeModifiers: 5, Durability: 4144, HarvestLevel: 4, Attack: 7.2f}, Special: {Categories: ["aoe", "weapon", "tool", "harvest"]}, TinkerData: {Materials: ["xu_demonic_metal", "xu_demonic_metal", "xu_demonic_metal", "xu_demonic_metal"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "xu_whispering", color: -6079744, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["xu_whispering", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 10.0f, FreeModifiers: 3, Durability: 7500, HarvestLevel: 5, Attack: 14.7f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 10.0f, FreeModifiers: 5, Durability: 7500, HarvestLevel: 5, Attack: 14.7f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["enderium", "enderium", "enderium", "enderium"], Modifiers: ["beheading_cleaver", "toolleveling"]}, Modifiers: [{identifier: "enderference", color: -15835295, level: 1}, {identifier: "tconevo.mortal_wounds", color: -15835295, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["enderference", "tconevo.mortal_wounds", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:rapier>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 80.5f, FreeModifiers: 3, Durability: 1216, HarvestLevel: 4, Attack: 10.2f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 80.5f, FreeModifiers: 5, Durability: 1216, HarvestLevel: 4, Attack: 10.2f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["ravaging", "ravaging", "ravaging"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "tconevo.relentless", color: -15901, level: 1}, {identifier: "pulverizing", color: -15901, level: 1}, {identifier: "crumbling", color: -15901, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["tconevo.relentless", "pulverizing", "crumbling", "toolleveling"]}) % 5
}, {
    mainhand: <tconstruct:frypan>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 10.0f, FreeModifiers: 3, Durability: 2000, HarvestLevel: 4, Attack: 8.0f}, Stats: {AttackSpeedMultiplier: 1.0f, MiningSpeed: 10.0f, FreeModifiers: 5, Durability: 2000, HarvestLevel: 4, Attack: 8.0f}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {Materials: ["perfect", "perfect"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "perfectionist", color: -11751600, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["perfectionist", "toolleveling"]}) % 5
}] as WeightedItemStack[string][], "hardmode");
