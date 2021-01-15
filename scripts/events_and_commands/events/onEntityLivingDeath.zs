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

import scripts.util.patreons as PatreonUtil;
import scripts.util.lang as LangUtil;

events.onEntityLivingDeath(function (event as crafttweaker.event.EntityLivingDeathEvent) {
    if(event.entityLivingBase instanceof IPlayer) {
        var player as IPlayer = event.entityLivingBase;
        var damageSource as IDamageSource = event.damageSource;

        // Detailed death message
        var deathMsg as string = damageSource.getDeathMessage(player);
        if(PatreonUtil.isPatreon(player.name)) {            
            deathMsg = deathMsg.replace(player.name, "§d" + player.name + "§7");
        } else {
            deathMsg = deathMsg.replace(player.name, "§e" + player.name + "§7");
        }
        if(!isNull(damageSource.getTrueSource()) && damageSource.getTrueSource() instanceof IEntityLivingBase) {
            var name as string = damageSource.getTrueSource().displayName;
            if(damageSource.getTrueSource().hasCustomName) {
                name = damageSource.getTrueSource().customName;
            }
            if(damageSource.getTrueSource() instanceof IPlayer && PatreonUtil.isPatreon(name)) {
                deathMsg = deathMsg.replace(name, "§5" + name + "§7");
            } else {
                deathMsg = deathMsg.replace(name, "§c" + name + "§7");
            }
        }
        deathMsg = " §c☠ §7" + deathMsg;
        deathMsg = deathMsg.replace("§r", "§7");
        deathMsg = deathMsg + " §9@ §7(§3" + Math.floor(player.x) as int + "§7, §3" + Math.floor(player.y) as int + "§7, §3" + Math.floor(player.z) as int + "§7)";
        server.commandManager.executeCommand(server, "/broadcast " + deathMsg);

        // Death quotes
        var deathQuotesArray as string[] = deathQuotes[LangUtil.getLanguage()];
        var index as int = Math.floor(Math.random() * deathQuotesArray.length as float) as int;
        if(!(index >= deathQuotesArray.length || !(index >= 0)) && !player.hasGameStage("hide_death_quotes")) {
            var quote as string = deathQuotesArray[index];
            quote = quote.replace("%playername%", player.name);
            player.sendChat(quote);
        }

        // Spawn human
        if(!(Math.random() > DEATH_HUMAN_SPAWN_CHANCE)) {
            var offset = Math.random() - 0.5 as float;
            server.commandManager.executeCommand(server, "/summon headcrumbs:human " + (player.x + offset) + " " + (player.y + 1) + " "+ (player.z + offset) +" {Username:\"" + player.name + "\"}");
            player.sendChat(game.localize("greedycraft.event.human.spawn"));
        }
    }
});
