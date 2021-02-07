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
import mods.ctintegration.gamestages.GameStageAddEvent;
import mods.ctintegration.gamestages.GameStageRemoveEvent;
import mods.ctintegration.scalinghealth.DifficultyManager;

import scripts.util.lang as LangUtil;

events.onGameStageAdd(function(event as GameStageAddEvent) {
    var stages as string[][string][string] = gameStagesLore[LangUtil.getLanguage()];
    var player as IPlayer = event.player;
    if(!(stages has event.gameStage) || player.hasGameStage(event.gameStage) || PACKMODE == MODE_CASUAL || player.creative) {
        return;
    }
    var stageLore as string[][string] = stages[event.gameStage];
    if(!isNull(stageLore)) {
        var delimiter as string = "§9==================================================";
        var msg as string = delimiter + "\n";
        msg += game.localize("greedycraft.event.stage.lore.title") + "\n";
        msg += "§e " + event.gameStage + " §7- §r§c§o";
        if(stageLore["alias"].length > 0) { 
            msg += stageLore["alias"][0];
        }
        msg += "\n";
        for line in stageLore["lore"] {
            msg += "§5§o " + line + "\n";
        } 
        msg += game.localize("greedycraft.event.stage.lore.unlocked") + "\n";
        for line in stageLore["unlocks"] {
            msg += "§2 ✔ §a" + line + "\n";
        }
        var maxDifficulty = 0;
        for stage in stageMap {
            var difficulty = stageMap[stage] as int;
            if((player.hasGameStage(stage) || stage == event.gameStage) && difficulty > maxDifficulty) {
                maxDifficulty = difficulty;
            }
        }
        if(player.difficulty != maxDifficulty) {
            msg += game.localize("greedycraft.event.stage.lore.difficulty") + "   §a" + Math.round(player.difficulty) as int + " §e>> §c" + maxDifficulty as int + "\n";
            player.difficulty = maxDifficulty;
        }
        msg += delimiter;
        player.sendChat(msg);
        server.commandManager.executeCommand(server, "/playsound ui.toast.challenge_complete player " + player.name + " " + player.x + " " + player.y + " " + player.z + " 100 1");
        
        if(event.gameStage == "nether") {
            player.addGameStage("roughmobsboss");
        }
    }
});

events.onGameStageRemove(function(event as GameStageRemoveEvent) {
    if(event.gameStage == "iswuss" && event.player.name != "TCreopargh") {
        event.cancel();
    }
});
