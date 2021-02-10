/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 40
#no_fix_recipe_book

import mods.ctutils.utils.Math;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;

import mods.compatskills.TraitCreator;

var bloodlust = TraitCreator.createTrait("bloodlust", 2, 1, "reskillable:attack", 5, "reskillable:attack|14");
bloodlust.name = game.localize("greedycraft.compatskills.traits.bloodlust.name");
bloodlust.description = game.localize("greedycraft.compatskills.traits.bloodlust.description");
bloodlust.changeIcon("greedycraft:skills/bloodlust.png");
bloodlust.setEnabled(true);
bloodlust.onKillMob = function(event as crafttweaker.event.EntityLivingDeathEvent) {
    if(Math.random() as double < 0.2) {
        var damageSource as IDamageSource = event.damageSource;
        if(damageSource.getTrueSource() instanceof IPlayer) {
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
    if(event.entityLivingBase instanceof IPlayer && event.amount >= (3.0 as float)) {
        if(Math.random() as double < 0.1) {
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
    if(Math.random() as double < 0.1) {
        var damageSource as IDamageSource = event.damageSource;
        if(damageSource.getTrueSource() instanceof IPlayer) {
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
    event.newSpeed = ((event.newSpeed * 1.5) as float);
};

var essence_reaper = TraitCreator.createTrait("essence_reaper", 2, 0, "reskillable:farming", 4, "reskillable:farming|12");
essence_reaper.name = game.localize("greedycraft.compatskills.traits.essencereaper.name");
essence_reaper.description = game.localize("greedycraft.compatskills.traits.essencereaper.description");
essence_reaper.changeIcon("greedycraft:skills/essence_reaper.png");
essence_reaper.setEnabled(true);
essence_reaper.onMobDrops = function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    if(Math.random() as double < 0.3) {
        var damageSource as IDamageSource = event.damageSource;
        if(damageSource.getTrueSource() instanceof IPlayer) {
            var amount as int = Math.ceil(Math.random() * 4) as int;
            event.addItem(<mysticalagriculture:crafting> * amount);
        }
    }
};
