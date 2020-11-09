/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 40

import mods.ctutils.utils.Math;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;

var bloodlust = mods.compatskills.TraitCreator.createTrait("bloodlust", 2, 1, "reskillable:attack", 5, "reskillable:attack|14");
bloodlust.name = "嗜血";
bloodlust.description = "击杀怪物后有概率获得短暂的生命恢复效果";
bloodlust.changeIcon("greedycraft:skills/bloodlust.png");
bloodlust.setEnabled(true);
bloodlust.onKillMob = function(event as crafttweaker.event.EntityLivingDeathEvent) {
    if(Math.random() as double < 0.3) {
        var damageSource as IDamageSource = event.damageSource;
        if(damageSource.getTrueSource() instanceof IPlayer) {
            var player as IPlayer = damageSource.getTrueSource();
            player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(50, 0, false, false));
        }
    }
};

var fortified = mods.compatskills.TraitCreator.createTrait("fortified", 1, 0, "reskillable:defense", 5, "reskillable:defense|16");
fortified.name = "铜墙铁壁";
fortified.description = "受到大于3点的伤害时有概率获得短暂的抗性提升II效果";
fortified.changeIcon("greedycraft:skills/fortified.png");
fortified.setEnabled(true);
fortified.onHurt = function(event as crafttweaker.event.EntityLivingHurtEvent) {
    if(event.entityLivingBase instanceof IPlayer && event.amount >= (3.0 as float)) {
        if(Math.random() as double < 0.2) {
            var player as IPlayer = event.entityLivingBase;
            player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(50, 1, false, false));
        }
    }
};

var experience_grinder = mods.compatskills.TraitCreator.createTrait("experience_grinder", 3, 0, "reskillable:gathering", 4, "reskillable:gathering|10");
experience_grinder.name = "经验采集";
experience_grinder.description = "击杀怪物时有概率获得数量不等的知识精华锭";
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

var turbo_miner = mods.compatskills.TraitCreator.createTrait("turbo_miner", 1, 0, "reskillable:mining", 4, "reskillable:mining|12");
turbo_miner.name = "涡轮增压挖掘机";
turbo_miner.description = "显著提高挖掘速度";
turbo_miner.changeIcon("greedycraft:skills/turbo_miner.png");
turbo_miner.setEnabled(true);
turbo_miner.getBreakSpeed = function(event as crafttweaker.event.PlayerBreakSpeedEvent) {
    event.newSpeed = ((event.newSpeed * 1.5) as float);
};

var essence_reaper = mods.compatskills.TraitCreator.createTrait("essence_reaper", 2, 0, "reskillable:farming", 4, "reskillable:farming|12");
essence_reaper.name = "精华收割者";
essence_reaper.description = "击杀怪物时有概率获得更多的下级精华";
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
