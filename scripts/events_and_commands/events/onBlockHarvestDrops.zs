/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

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
import crafttweaker.world.IWorld;
import crafttweaker.command.ICommandSender;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.world.IBiome;
import crafttweaker.world.IBiomeType;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

function isOcean(biome as IBiome, world as IWorld) as bool {
    if(world.dimension != 0) {
        return false;
    }
    for oceanBiome in <biomeTypes:OCEAN>.biomes {
        if (biome.name == oceanBiome.name) {
            return true;
        }
    }
    return false;
}

events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    if (event.isPlayer) {
        var player as IPlayer = event.player;

        // Broken blocks in ocean are filled with water 
        if (!isNull(player) && !player.creative && isOcean(event.world.getBiome(event.position), event.world) && event.y < 40.0) {
            var blockState as IBlockState = IBlockState.getBlockState("minecraft:water", [] as string[]);
            event.world.setBlockState(blockState, event.position as IBlockPos);
        }
    }
});
