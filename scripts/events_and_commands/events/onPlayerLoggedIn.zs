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
import crafttweaker.command.ICommandSender;
import crafttweaker.text.ITextComponent;
import crafttweaker.chat.IChatMessage;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;
import mods.ctintegration.data.DataUtil;
import mods.ctintegration.util.DateUtil;
import mods.ctintegration.date.IDate;  
import mods.zenutils.I18n;   

import scripts.util.lang as LangUtil;
import scripts.util.date as CalendarUtil;
import scripts.util.patreons as PatreonUtil;

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {

    var player as IPlayer = event.player;

    if (player.hasGameStage("truehero") && !player.hasGameStage("iswuss")) {
        player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.true_hero.join", "§e" + player.name));
    } else if (player.hasGameStage("iswuss")) {
        server.broadcastMessage(ITextComponent.fromTranslation("greedycraft.event.in_cheat.broadcast", "§e" + player.name));
        player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.in_cheat.chat"));
        if (player.creative) {
            player.addGameStage("creative");
        }
    } else if (player.creative) {
        if (!player.hasGameStage("truehero")) {
            player.addGameStage("creative");
        server.broadcastMessage(ITextComponent.fromTranslation("greedycraft.event.in_cheat.broadcast", player.name));
            server.commandManager.executeCommand(server, "/gamestage add " + player.name + " iswuss");
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.creative_cheat.chat"));
            server.commandManager.executeCommand(server, "/unlockallstages " + player.name);
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.creative_stage_unlocked"));
        }
    }
    server.commandManager.executeCommand(server, "/sendwelcomequote " + player.name);
    
    var playerName as ITextComponent = ITextComponent.fromData(["", {text: player.name, color: PatreonUtil.getPlayerColor(player)}]);
    var playerNameNormal as ITextComponent = ITextComponent.fromData(["", {text: player.name, color: PatreonUtil.getPlayerColor(player)}]);
    if (PatreonUtil.isPatreon(player)) {
        playerName = ITextComponent.fromData(["", {translate: "greedycraft.event.sponsor.title", color: "green"}, {text: player.name, color: PatreonUtil.getPlayerColor(player)}]);
    }

    //Patreon join notification
    if (player.hasGameStage("truehero")) {
        server.broadcastMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.executor.welcome.0", color: "red"}, {translate: PatreonUtil.getPlayerPrefixKey(player), color: PatreonUtil.getPlayerColor(player)}, {text: " "}, {text: player.name, color: PatreonUtil.getPlayerColor(player)}, {translate: "greedycraft.event.executor.welcome.1", color: "red"}]));
    } else if (PatreonUtil.isPatreon(player)) {
        server.broadcastMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.sponsor.welcome.0", color: "yellow"}, {translate: PatreonUtil.getPlayerPrefixKey(player), color: PatreonUtil.getPlayerColor(player)}, {text: " "}, {text: player.name, color: PatreonUtil.getPlayerColor(player)}, {translate: "greedycraft.event.sponsor.welcome.1", color: "yellow"}]));
    }

    if (!player.hasGameStage("first_join_message_shown")) {
        server.commandManager.executeCommand(server, "/sendfirstjoinmessage " + player.name);
        player.addGameStage("first_join_message_shown");
    } else {
        if (CalendarUtil.isChristmas()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.welcome.christmas0") + playerName + ITextComponent.fromTranslation("greedycraft.event.welcome.christmas1"));
        } else if (CalendarUtil.isHalloween()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.welcome.halloween0") + playerName + ITextComponent.fromTranslation("greedycraft.event.welcome.halloween1"));
        } else if (CalendarUtil.isNewYear()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.welcome.new_year0") + ITextComponent.fromString(DateUtil.now().year) + ITextComponent.fromTranslation("greedycraft.event.welcome.new_year1") + playerName + ITextComponent.fromTranslation("greedycraft.event.welcome.new_year2"));
        } else if (CalendarUtil.isLunarNewYear()) {
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.welcome.lunar_new_year0") + playerName + ITextComponent.fromTranslation("greedycraft.event.welcome.lunar_new_year1"));
        } else {
            player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.welcome.general0") + playerName + ITextComponent.fromTranslation("greedycraft.event.welcome.general1"));
        }
    }
    server.commandManager.executeCommand(server, "/difficulty hard");

    server.commandManager.executeCommand(server, "/advancement revoke " + player.name + " through greedycraft:elysia/root");
});
