/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 90

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.util.Position3f;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.world.IFacing;
import crafttweaker.command.ICommandSender;
import crafttweaker.event.EntityLivingSpawnEvent;
import crafttweaker.event.EntityLivingExtendedSpawnEvent;
import crafttweaker.event.EntityLivingUpdateEvent;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

static doUpdate as bool[string] = {update: true};

events.onEntityLivingUpdate(function(event as EntityLivingUpdateEvent) {
    
    var living = event.entityLivingBase;

    // Fix entity health
    if(living.getNBT() has ({healthFixed: 1} as IData) && doUpdate["update"] as bool == true) {
        living.health = living.maxHealth;
        doUpdate["update"] = false;
        living.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(20, 127, false, false));
        living.update({healthFixed: 1});
        doUpdate["update"] = true;
    }

    if(living.isPotionActive(<potion:minecraft:regeneration>)) {
        var effect as IPotionEffect = living.getActivePotionEffect(<potion:minecraft:regeneration>);
        if(!effect.doesShowParticles && !effect.isAmbient && effect.amplifier == 127) {
            living.health = living.maxHealth;
        }
    }
});
