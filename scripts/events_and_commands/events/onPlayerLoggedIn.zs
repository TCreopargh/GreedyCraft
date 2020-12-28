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

events.onPlayerLoggedIn(function (event as crafttweaker.event.PlayerLoggedInEvent) {
    
    if(event.player.hasGameStage("truehero") && !event.player.hasGameStage("iswuss")) {
        event.player.sendChat("§6§o欢迎回家，真正的英雄§e" + event.player.name + "§6§o！");
    } else if(event.player.hasGameStage("iswuss")) {
        server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"§e" + event.player.name + "§a处于作弊模式。\"}");
        event.player.sendChat("§a§o您当前处于作弊模式。");
        if(event.player.creative) {
            event.player.addGameStage("creative");
        }
    } else if(event.player.creative) {
        if(!event.player.hasGameStage("truehero")) {
            event.player.addGameStage("creative");
            server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"§e" + event.player.name + "§a处于创造模式，作弊模式已为其自动开启。\"}");
            server.commandManager.executeCommand(server, "/gamestage add " + event.player.name + " iswuss");
            event.player.sendChat("§a§o检测到您处于创造模式，作弊模式已自动开启。");
            server.commandManager.executeCommand(server, "/unlockallstages " + event.player.name);
            event.player.sendChat("§d§o由于您以创造模式创建了该存档，所有游戏阶段都已解锁，祝您游戏愉快。");
        }
    }
    server.commandManager.executeCommand(server, "/sendwelcomequote " + event.player.name);
    
    if(!event.player.hasGameStage("first_join_message_shown")) {
        server.commandManager.executeCommand(server, "/sendfirstjoinmessage " + event.player.name);
        event.player.addGameStage("first_join_message_shown");
    } else {
        event.player.sendChat("§2§o欢迎回来，§e" + event.player.name + "§2§o！");
    }
    server.commandManager.executeCommand(server, "/difficulty hard");
});
