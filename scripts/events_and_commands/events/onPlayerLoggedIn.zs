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
import mods.ctintegration.net.Connection;
import mods.ctintegration.data.DataUtil;
import mods.ctintegration.util.DateUtil;
import mods.ctintegration.date.IDate;   
import mods.ctintegration.thread.Thread;   

import scripts.util.date as CalendarUtil;
import scripts.util.patreons as PatreonUtil;

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
    if(player.hasGameStage("truehero")) {
        server.commandManager.executeCommand(server, "/broadcast " + "§9>§d>§6> §d§ka§r §c裁决者§6" + player.name + "§c加入了游戏！§d§ka§r §6<§d<§9<");
    } else if(PatreonUtil.isPatreon(player.name)) {
        server.commandManager.executeCommand(server, "/broadcast " + "§e>§a>§b> §d§ka§r §6赞助者§d" + player.name + "§6加入了游戏！§d§ka§r §b<§a<§e<");
    }

    if(!player.hasGameStage("first_join_message_shown")) {
        server.commandManager.executeCommand(server, "/sendfirstjoinmessage " + player.name);
        player.addGameStage("first_join_message_shown");
    } else {
        var playerName as string = "§e" + player.name + "§r";
        if(PatreonUtil.isPatreon(player.name)) {
            playerName = "尊贵的§d" + player.name + "§r";
        }
        if(CalendarUtil.isChristmas()) {
            player.sendChat("§2§o圣诞快乐，" + player.name + "§2§o！");
        } else if(CalendarUtil.isHalloween()) {
            player.sendChat("§6§o万圣节快乐，" + player.name + "§6§o！");
        } else if(CalendarUtil.isNewYear()) {
            player.sendChat("§9§o" + DateUtil.now().year + "新年快乐，" + player.name + "§9§o！");
        } else if(CalendarUtil.isLunarNewYear()) {
            player.sendChat("§c§o新年快乐，" + player.name + "§c§o！");
        } else {
            player.sendChat("§a§o欢迎回来，§e" + player.name + "§a§o！");
        }
    }
    server.commandManager.executeCommand(server, "/difficulty hard");

    //Check for updates 
    Thread.create(function() {
        if(server.getCurrentPlayerCount() > 1) {
            return;
        }
        var connection as Connection = Connection.openUrl("http://json.tcreopargh.xyz/version.json");
        if(isNull(connection)) {
            player.sendChat("§c整合包更新检查失败！");
            return;
        }
        var jsonString as string = connection.readToString();
        if(isNull(jsonString)) {
            player.sendChat("§c整合包更新检查失败！");
            return;
        }
        var data = DataUtil.fromJson(jsonString);
        if(!isNull(data.memberGet("version_name")) && !isNull(data.memberGet("version_code"))) {
            var latestVersion = data.memberGet("version_name");
            var latestVersionCode = data.memberGet("version_code");
            if(latestVersionCode > versionCode) {
                server.commandManager.executeCommand(server, "/tellraw " + player.name + ' ["",{"text":"§d==============================\\n' + 
                "§9贪婪整合包有更新可用！\\n" +
                "§c当前版本: §e§l" + versionName + "§r §6(" + versionCode + ")\\n" + 
                '§b最新版本: §a§l' + latestVersion + '§r §2(' + latestVersionCode + ')\\n"},{"text":"§e§n更新地址","clickEvent":{"action":"open_url","value":"https://greedycraft.tcreopargh.xyz/"}},{"text":"\\n§d=============================="}]');
            }
        }
    }).start();
});
