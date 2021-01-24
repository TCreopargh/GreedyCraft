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

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
    if(event.isPlayer) {
        var player as IPlayer = event.player;

        // Broken blocks in ocean are filled with water 
        if(!isNull(player) && !player.creative && (event.world.getBiome(event.position).name.contains("Ocean") || event.world.getBiome(event.position).name.contains("Coral Reef")) && event.y < 40.0) {
            var blockState as IBlockState = IBlockState.getBlockState("minecraft:water", [] as string[]);
            event.world.setBlockState(blockState, event.position as IBlockPos);
        }
    }
});
