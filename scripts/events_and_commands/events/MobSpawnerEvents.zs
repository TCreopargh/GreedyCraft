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
import crafttweaker.event.BlockBreakEvent;
import crafttweaker.text.ITextComponent;
import crafttweaker.event.BlockHarvestDropsEvent;

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

import scripts.util.lang as LangUtil;

function getKillCount(block as IBlock) as int {
    var mobSpawned as int = 0;
    if (!isNull(block.data) && (block.data has "ForgeCaps") && (block.data.memberGet("ForgeCaps") has "spawnercontrol:controllable_spawner_cap") && (block.data.memberGet("ForgeCaps").memberGet("spawnercontrol:controllable_spawner_cap") has "SpawnedMobsCount")) {
        mobSpawned = block.data.memberGet("ForgeCaps").memberGet("spawnercontrol:controllable_spawner_cap").memberGet("SpawnedMobsCount") as int;
    }
    return mobSpawned;
}

events.onBlockBreak(function(event as BlockBreakEvent) {
    if (!event.canceled && event.isPlayer && !event.player.creative) {
        var player as IPlayer = event.player;
        var block as IBlock = event.world.getBlock(event.position);
        if (event.block.definition.id == "minecraft:mob_spawner") {
            var mobSpawned as int = getKillCount(block);
            var breakChance as double = 0.2;
            if (mobSpawned > 0) {
                breakChance += 0.1 * mobSpawned;
            }
            var quoteList as string[] = mobSpawnerQuotes[LangUtil.getLanguage()];
            var successQuoteList as string[] = mobSpawnerSuccessQuotes[LangUtil.getLanguage()];
            if (Math.random() < breakChance) {
                var index as int = Math.floor(Math.random() * successQuoteList.length as float) as int;
                if (index < successQuoteList.length && index >= 0) {
                    var msg as string = successQuoteList[index];
                    player.sendRichTextMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.mob_spawner.name", color: "blue"}, {text: ": ", color: "white"}, {text: msg, color: "green"}]));
                }
                var mobEffectiveSpawned as int = mobSpawned;
                if (mobEffectiveSpawned > 20) {
                    mobEffectiveSpawned = 20;
                }
                var bonusXP as int = mobEffectiveSpawned * 2 + (Math.random() * (mobEffectiveSpawned * 5) as double) as int;
                var difficultyBonusPercent as int = (event.player.difficulty * 2.0) as int;
                var totalXP as int = Math.ceil(bonusXP as double * (difficultyBonusPercent as double / 100.0 + 1.0)) as int;
                event.experience += totalXP;
                player.sendRichTextMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.mob_spawner.kills", color: "red"}, {text: "" + mobSpawned, color: "yellow"}, {text: "    "}, {translate: "greedycraft.event.mob_spawner.kill_bonus", color: "green"}, {text: "" + totalXP + "XP ", color: "yellow"}, {text: "(+" + difficultyBonusPercent + "% ", color: "aqua"}, {translate: "greedycraft.event.mob_spawner.difficulty_bonus", color: "aqua"}, {text: ")", color: "aqua"}]));
            } else {
                event.cancel();
                var index as int = Math.floor(Math.random() * quoteList.length as float) as int;
                if (index < quoteList.length && index >= 0) {
                    var msg as string = quoteList[index];
                    player.sendRichTextMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.mob_spawner.name", color: "blue"}, {text: ": ", color: "white"}, {text: msg, color: "white"}]));
                }
                player.sendRichTextMessage(ITextComponent.fromData(["", {translate: "greedycraft.event.mob_spawner.kills", color: "red"}, {text: "" + mobSpawned, color: "yellow"}, {text: "    "}, {translate: "greedycraft.event.mob_spawner.chance", color: "green"}, {text: "" + Math.floor(breakChance * 100) as int + "%", color: "yellow"}]));
                if (!player.isPotionActive(<potion:minecraft:mining_fatigue>)) {
                    player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(200, 1, false, false));
                } else {
                    var level = player.getActivePotionEffect(<potion:minecraft:mining_fatigue>).amplifier;
                    var increment = 0;
                    if (level < 4) {
                        player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(200, level + 1, false, false));
                    } else {
                        player.addPotionEffect(<potion:minecraft:mining_fatigue>.makePotionEffect(200, 5, false, false));
                    }
                }
            }
        }
    }
});

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
    if (event.block.definition.id == "minecraft:mob_spawner" && event.isPlayer) {
        event.addItem(<additions:greedycraft-time_fragment>);
        event.addItem(<additions:greedycraft-time_fragment> % 33);
    }
});
