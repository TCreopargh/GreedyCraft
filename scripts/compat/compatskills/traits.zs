/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 40
#no_fix_recipe_book

import mods.ctutils.utils.Math;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

import mods.compatskills.TraitCreator;

static buildingGadgets as IItemStack[] = [
    <buildinggadgets:buildingtool>,
    <buildinggadgets:exchangertool>,
    <buildinggadgets:copypastetool>
];

var bloodlust = TraitCreator.createTrait("bloodlust", 2, 1, "reskillable:attack", 5, "reskillable:attack|14");
bloodlust.name = game.localize("greedycraft.compatskills.traits.bloodlust.name");
bloodlust.description = game.localize("greedycraft.compatskills.traits.bloodlust.description");
bloodlust.changeIcon("greedycraft:skills/bloodlust.png");
bloodlust.setEnabled(true);
bloodlust.onKillMob = function(event as crafttweaker.event.EntityLivingDeathEvent) {
    if (Math.random() < 0.2) {
        var damageSource as IDamageSource = event.damageSource;
        if (damageSource.getTrueSource() instanceof IPlayer) {
            var player as IPlayer = damageSource.getTrueSource();
            player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(50, 0, false, false));
        }
    }
};

var fortified = TraitCreator.createTrait("fortified", 1, 0, "reskillable:defense", 5, "reskillable:defense|16");
fortified.name = game.localize("greedycraft.compatskills.traits.fortified.name");
fortified.description = game.localize("greedycraft.compatskills.traits.fortified.description");
fortified.changeIcon("greedycraft:skills/fortified.png");
fortified.setEnabled(true);
fortified.onHurt = function(event as crafttweaker.event.EntityLivingHurtEvent) {
    if (event.entityLivingBase instanceof IPlayer && event.amount >= (3.0f)) {
        if (Math.random() < 0.1) {
            var player as IPlayer = event.entityLivingBase;
            player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(50, 1, false, false));
        }
    }
};

var experience_grinder = TraitCreator.createTrait("experience_grinder", 3, 0, "reskillable:gathering", 4, "reskillable:gathering|10");
experience_grinder.name = game.localize("greedycraft.compatskills.traits.experiencegrinder.name");
experience_grinder.description = game.localize("greedycraft.compatskills.traits.experiencegrinder.description");
experience_grinder.changeIcon("greedycraft:skills/experience_grinder.png");
experience_grinder.setEnabled(true);
experience_grinder.onMobDrops = function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    if (Math.random() < 0.1) {
        var damageSource as IDamageSource = event.damageSource;
        if (!isNull(damageSource.getTrueSource()) && damageSource.getTrueSource() instanceof IPlayer) {
            var amount as int = Math.ceil(Math.random() * 2) as int;
            event.addItem(<additions:greedycraft-experience_ingot> * amount);
        }
    }
};

var turbo_miner = TraitCreator.createTrait("turbo_miner", 1, 0, "reskillable:mining", 4, "reskillable:mining|12");
turbo_miner.name = game.localize("greedycraft.compatskills.traits.turbominer.name");
turbo_miner.description = game.localize("greedycraft.compatskills.traits.turbominer.description");
turbo_miner.changeIcon("greedycraft:skills/turbo_miner.png");
turbo_miner.setEnabled(true);
turbo_miner.getBreakSpeed = function(event as crafttweaker.event.PlayerBreakSpeedEvent) {
    event.newSpeed = ((event.newSpeed * 1.5f) as float);
};

var essence_reaper = TraitCreator.createTrait("essence_reaper", 2, 0, "reskillable:farming", 4, "reskillable:farming|12");
essence_reaper.name = game.localize("greedycraft.compatskills.traits.essencereaper.name");
essence_reaper.description = game.localize("greedycraft.compatskills.traits.essencereaper.description");
essence_reaper.changeIcon("greedycraft:skills/essence_reaper.png");
essence_reaper.setEnabled(true);
essence_reaper.onMobDrops = function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    if (Math.random() < 0.3) {
        var damageSource as IDamageSource = event.damageSource;
        if (damageSource.getTrueSource() instanceof IPlayer) {
            var amount as int = Math.ceil(Math.random() * 4) as int;
            event.addItem(<mysticalagriculture:crafting> * amount);
        }
    }
};

var magic_brew = TraitCreator.createTrait("magic_brew", 0, 3, "reskillable:magic", 16, "reskillable:magic|32", "reskillable:attack|26");
magic_brew.name = game.localize("greedycraft.compatskills.traits.magic_brew.name");
magic_brew.description = game.localize("greedycraft.compatskills.traits.magic_brew.description");
magic_brew.changeIcon("greedycraft:skills/magic_brew.png");
magic_brew.setEnabled(true);
magic_brew.onPlayerTick = function(event as crafttweaker.event.PlayerTickEvent) {
    var player as IPlayer = event.player;
    if(player.world.getWorldTime() % 10 != 0) {
        return;
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(200, 1, false, false));
    }
    if(Math.random() < 0.00125) {
        player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(200, 1, false, false));
    }
};

var strip_miner = TraitCreator.createTrait("strip_miner", 3, 3, "reskillable:mining", 14, "reskillable:mining|30", "reskillable:defense|25");
strip_miner.name = game.localize("greedycraft.compatskills.traits.strip_miner.name");
strip_miner.description = game.localize("greedycraft.compatskills.traits.strip_miner.description");
strip_miner.changeIcon("greedycraft:skills/strip_miner.png");
strip_miner.setEnabled(true);
strip_miner.getBreakSpeed = function(event as crafttweaker.event.PlayerBreakSpeedEvent) {
    if(event.block.definition.id.contains("hardened_stone")) {
        event.newSpeed = ((event.newSpeed * 5.0f) as float);
    }
};

var building_master = TraitCreator.createTrait("building_master", 0, 3, "reskillable:building", 12, "reskillable:agility|16", "reskillable:building|20");
building_master.name = game.localize("greedycraft.compatskills.traits.building_master.name");
building_master.description = game.localize("greedycraft.compatskills.traits.building_master.description");
building_master.changeIcon("greedycraft:skills/building_master.png");
building_master.setEnabled(true);
building_master.onPlayerTick = function(event as crafttweaker.event.PlayerTickEvent) {
    var player as IPlayer = event.player;
    if(player.world.getWorldTime() % 5 != 0) {
        return;
    }
    for gadget in buildingGadgets {
        if((!isNull(player.offHandHeldItem) && player.offHandHeldItem.definition.id == gadget.definition.id) || (!isNull(player.mainHandHeldItem) && player.mainHandHeldItem.definition.id == gadget.definition.id)) {
            player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(50, 1, true, false));
            player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(50, 0, true, false));
            player.addPotionEffect(<potion:potioncore:reach>.makePotionEffect(50, 1, true, false));
            break;
        }
    }
};

var devourer_of_souls = TraitCreator.createTrait("devourer_of_souls", 3, 3, "reskillable:farming", 16, "reskillable:farming|34", "reskillable:gathering|28");
devourer_of_souls.name = game.localize("greedycraft.compatskills.traits.devourer_of_souls.name");
devourer_of_souls.description = game.localize("greedycraft.compatskills.traits.devourer_of_souls.description");
devourer_of_souls.changeIcon("greedycraft:skills/devourer_of_souls.png");
devourer_of_souls.setEnabled(true);
devourer_of_souls.onKillMob = function(event as crafttweaker.event.EntityLivingDeathEvent) {
    var damageSource as IDamageSource = event.damageSource;
    if (!isNull(damageSource.getTrueSource()) && damageSource.getTrueSource() instanceof IPlayer) {
        if(Math.random() < 0.15) {
            var player as IPlayer = damageSource.getTrueSource();
            player.foodStats.addStats(Math.round(Math.random() + 1.0) as int, 0.0f);
        }
    }
};
