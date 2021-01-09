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

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {

    var player as IPlayer = event.player;

    if(player.hasGameStage("truehero") && !player.hasGameStage("iswuss")) {
        player.sendChat("§6§o欢迎回家，真正的英雄§e" + player.name + "§6§o！");
    } else if(player.hasGameStage("iswuss")) {
        server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"§e" + player.name + "§a处于作弊模式。\"}");
        player.sendChat("§a§o您当前处于作弊模式。");
        if(player.creative) {
            player.addGameStage("creative");
        }
    } else if(player.creative) {
        if(!player.hasGameStage("truehero")) {
            player.addGameStage("creative");
            server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"§e" + player.name + "§a处于创造模式，作弊模式已为其自动开启。\"}");
            server.commandManager.executeCommand(server, "/gamestage add " + player.name + " iswuss");
            player.sendChat("§a§o检测到您处于创造模式，作弊模式已自动开启。");
            server.commandManager.executeCommand(server, "/unlockallstages " + player.name);
            player.sendChat("§d§o由于您以创造模式创建了该存档，所有游戏阶段都已解锁，祝您游戏愉快。");
        }
    }
    server.commandManager.executeCommand(server, "/sendwelcomequote " + player.name);

    //Patreon join notification
    if(patreonList has player.name) {
        server.commandManager.executeCommand(server, "/broadcast " + "§e>§a>§b> §d§ka§r §6赞助者§d" + player.name + "§6加入了游戏！§d§ka§r §b<§a<§e<");
    }

    if(!player.hasGameStage("first_join_message_shown")) {
        server.commandManager.executeCommand(server, "/sendfirstjoinmessage " + player.name);
        player.addGameStage("first_join_message_shown");
    } else {
        if(patreonList has player.name) {
            player.sendChat("§2§o欢迎回来，尊贵的§d" + player.name + "§2§o！");
        } else {
            player.sendChat("§2§o欢迎回来，§e" + player.name + "§2§o！");
        }
    }
    server.commandManager.executeCommand(server, "/difficulty hard");
});
