/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#packmode expert

#priority 90
#no_fix_recipe_book

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
import crafttweaker.event.EntityJoinWorldEvent;
import crafttweaker.entity.AttributeModifier;
import crafttweaker.entity.AttributeInstance;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

static blacklist as string[] = [
    <entity:mowziesmobs:barako>.id,
    <entity:mowziesmobs:frostmaw>.id
];

events.onEntityJoinWorld(function(event as EntityJoinWorldEvent) {

    if (isNull(event.entity) || !(event.entity instanceof IEntityLivingBase)) {
        return;
    }

    var living as IEntityLivingBase = event.entity;

    if (living instanceof IPlayer || isNull(living) || isNull(living.definition)) {
        return;
    }

    if (!(blacklist has living.definition.id)) {
        if (living.isBoss) {
            var uuid as string = "eb5101d8-993d-4e26-ab59-5b1bc70024ee";
            var attribute as AttributeInstance = living.getAttribute("generic.maxHealth");
            if (isNull(attribute.getModifier(uuid))) {
                var modifier as AttributeModifier = AttributeModifier.createModifier("expert_boss_health_boost", 0.5, 1, uuid);
                attribute.applyModifier(modifier);
                living.health = living.maxHealth;
            }
        }
    }
});
