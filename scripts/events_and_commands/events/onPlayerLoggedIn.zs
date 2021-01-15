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
import mods.ctintegration.data.DataUtil;
import mods.ctintegration.util.DateUtil;
import mods.ctintegration.date.IDate;     

import scripts.util.date as CalendarUtil;
import scripts.util.patreons as PatreonUtil;

import crafttweaker.chat.IChatMessage;

import mods.zenutils.I18n;

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {

    var player as IPlayer = event.player;

    if(player.hasGameStage("truehero") && !player.hasGameStage("iswuss")) {
        player.sendChat(I18n.format("greedycraft.event.true_hero.join", player.name));
    } else if(player.hasGameStage("iswuss")) {
        server.commandManager.executeCommand(server, "/broadcast " + I18n.format("greedycraft.event.in_cheat.broadcast", player.name));
        player.sendChat(game.localize("greedycraft.event.in_cheat.chat"));
        if(player.creative) {
            player.addGameStage("creative");
        }
    } else if(player.creative) {
        if(!player.hasGameStage("truehero")) {
            player.addGameStage("creative");
            server.commandManager.executeCommand(server, "/broadcast " + I18n.format("greedycraft.event.in_cheat.broadcast", player.name));
            server.commandManager.executeCommand(server, "/gamestage add " + player.name + " iswuss");
            player.sendChat(game.localize("greedycraft.event.creative_cheat.chat"));
            server.commandManager.executeCommand(server, "/unlockallstages " + player.name);
            player.sendChat(game.localize("greedycraft.event.creative_stage_unlocked"));
        }
    }
    server.commandManager.executeCommand(server, "/sendwelcomequote " + player.name);

    //Patreon join notification
    if(player.hasGameStage("truehero")) {
        server.commandManager.executeCommand(server, "/broadcast " + I18n.format("greedycraft.event.executor.welcome", player.name));
    } else if(PatreonUtil.isPatreon(player.name)) {
        server.commandManager.executeCommand(server, "/broadcast " + I18n.format("greedycraft.event.sponsor.welcome", player.name));
    }

    if(!player.hasGameStage("first_join_message_shown")) {
        server.commandManager.executeCommand(server, "/sendfirstjoinmessage " + player.name);
        player.addGameStage("first_join_message_shown");
    } else {
        var playerName as string = "§e" + player.name + "§r";
        if(PatreonUtil.isPatreon(player.name)) {
            playerName = game.localize("greedycraft.event.sponsor.title") + "§d" + player.name + "§r";
        }
        if(CalendarUtil.isChristmas()) {
            player.sendChat(I18n.format("greedycraft.event.welcome.christmas", playerName));
        } else if(CalendarUtil.isHalloween()) {
            player.sendChat(I18n.format("greedycraft.event.welcome.halloween", playerName));
        } else if(CalendarUtil.isNewYear()) {
            player.sendChat(I18n.format("greedycraft.event.welcome.new_year", [DateUtil.now().year, playerName] as string[]));
        } else if(CalendarUtil.isLunarNewYear()) {
            player.sendChat(I18n.format("greedycraft.event.welcome.lunar_new_year", playerName));
        } else {
            player.sendChat(I18n.format("greedycraft.event.welcome.general", playerName));
        }
    }
    server.commandManager.executeCommand(server, "/difficulty hard");
});
