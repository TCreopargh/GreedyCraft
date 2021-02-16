/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 90
#no_fix_recipe_book
#packmode expert

#norun

import crafttweaker.event.EntityLivingAttackedEvent;
import crafttweaker.event.EntityLivingExtendedSpawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.damage.IDamageSource;

/*
events.onEntityLivingAttacked(function(event as crafttweaker.event.EntityLivingAttackedEvent) {
    if (event.entityLivingBase instanceof IPlayer) {
        if (!isNull(event.damageSource.immediateSource)) {
            var source as IDamageSource = event.entityLivingBase.lastDamageSource;
            event.entityLivingBase.attackEntityFrom(source, event.amount * 0.25);
        }
    } 
});
*/
/*
events.onCheckSpawn(function(event as crafttweaker.event.EntityLivingExtendedSpawnEvent) {
    if (!event.entityLivingBase instanceof IPlayer) {
        event.entityLivingBase.AIMovementSpeed = event.entityLivingBase.AIMovementSpeed * 1.3;
        event.entityLivingBase.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(20000, 1, false, false));
    }
    event.pass();
});
*/