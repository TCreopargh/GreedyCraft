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

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;
import mods.ctintegration.gamestages.GameStageAddEvent;
import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;

import scripts.util.lang as LangUtil;

events.onGameStageAdd(function(event as GameStageAddEvent) {
    var stages as string[][string][string] = gameStagesLore[LangUtil.getLanguage()];
    var player as IPlayer = event.player;
    if (!(stages has event.gameStage) || player.hasGameStage(event.gameStage) || PACKMODE == MODE_CASUAL || player.creative) {
        return;
    }
    var stageLore as string[][string] = stages[event.gameStage];
    if (!isNull(stageLore)) {
        var data as IData = [];
        var delimiter as IData = {text: "==================================================", color: "blue"};
        var newline as IData = {text: "\n"};
        data += [delimiter, newline, {translate: "greedycraft.event.stage.lore.title"}, newline, {text: event.gameStage, color: "yellow"}, {text: " - ", color: "gray"}] as IData;
        if (stageLore["alias"].length > 0) { 
            data += [{text: stageLore["alias"][0], color: "red", italic: true}];
        }
        data += [newline] as IData;
        for line in stageLore["lore"] {
            data += [{text: line, color: "dark_purple", italic: true}, newline];
        } 
        data += [{translate: "greedycraft.event.stage.lore.unlocked"}, newline];
        for line in stageLore["unlocks"] {
            data += [{text: " ✔ ", color: "dark_green"}, {text: line, color: "green"}, newline];
        }
        var maxDifficulty = 0;
        for stage in stageMap {
            var difficulty = stageMap[stage] as int;
            if ((player.hasGameStage(stage) || stage == event.gameStage) && difficulty > maxDifficulty) {
                maxDifficulty = difficulty;
            }
        }
        if (player.difficulty != maxDifficulty) {
            data += [{translate: "greedycraft.event.stage.lore.difficulty"}, {text: "   "}, {text: "" + Math.round(player.difficulty) as int, color: "green"}, {text: " >> ", color: "yellow"}, {text: "" + maxDifficulty as int + "\n", color: "red"}];
            player.difficulty = maxDifficulty;
        }
        data += [delimiter] as IData;
        player.sendRichTextMessage(ITextComponent.fromData(data));
        player.sendPlaySoundPacket("ui.toast.challenge_complete", "player", player.position3f, 100.0f, 1.0f);
        if(event.gameStage != "super_hardmode") {
            player.give(<contenttweaker:tablet_of_enlightenment>.withTag({stage: event.gameStage, playerName: player.name, playerUUID: player.uuid}));
        }

        /*  Disabled
        if (event.gameStage == "nether") {
            player.addGameStage("roughmobsboss");
        }
        */
    }
});

events.onGameStageRemove(function(event as GameStageRemoveEvent) {
    if (event.gameStage == "iswuss" && event.player.name != "TCreopargh") {
        event.cancel();
    }
});
