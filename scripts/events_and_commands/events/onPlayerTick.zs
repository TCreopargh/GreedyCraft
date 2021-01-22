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

val advancementMap as string[string] = {
    twilight_forest: "greedycraft:elysia/log1",
    nether: "greedycraft:elysia/log2",
    wither_slayer: "greedycraft:elysia/log3",
    ender_charm: "greedycraft:elysia/log4",
    hardmode: "greedycraft:elysia/log5",
    wyvern: "greedycraft:elysia/log6",
    awakened: "greedycraft:elysia/log7",
    chaotic: "greedycraft:elysia/log8"
} as string[string];

function getHeadBlockPos(player as IPlayer) as IBlockPos {
    var pos as IBlockPos = player.position as IBlockPos;
    return pos.getOffset(IFacing.up(), 1) as IBlockPos;
}

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {

    if(event.phase != "END" || event.side != "SERVER") {
        return;
    }

    var player = event.player;

    // Prevent Night Vision flash
    if(player.isPotionActive(<potion:minecraft:night_vision>) && player.getActivePotionEffect(<potion:minecraft:night_vision>).duration <= 200 && player.getActivePotionEffect(<potion:minecraft:night_vision>).duration > 0) {
        player.removePotionEffect(<potion:minecraft:night_vision>);
    }

    //Check for story advancement
    if(player.world.getWorldTime() as long % 40 == 0) {
        server.commandManager.executeCommand(server, "/advancement grant " + player.name + " only greedycraft:elysia/root");
        for stage in advancementMap {
            if(player.hasGameStage(stage)) {
                var advancement as string = advancementMap[stage] as string;
                server.commandManager.executeCommand(server, "/advancement grant " + player.name + " only " + advancement);
            }
        }
        if(!isNull(player.currentItem) && player.currentItem.definition.id == "patchouli:guide_book" && !isNull(player.currentItem.tag.memberGet("patchouli:book")) && player.currentItem.tag.memberGet("patchouli:book") == "patchouli:the_elysia_project") {
            server.commandManager.executeCommand(server, "/advancement grant " + player.name + " only greedycraft:elysia/book");
        }
    }

    // Prevent saturation overdose
    if(!player.creative && player.isPotionActive(<potion:minecraft:saturation>) && player.getActivePotionEffect(<potion:minecraft:saturation>).duration > 1) {
        var effect as IPotionEffect = player.getActivePotionEffect(<potion:minecraft:saturation>);
        player.removePotionEffect(<potion:minecraft:saturation>);
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(1, effect.amplifier, effect.isAmbient, effect.doesShowParticles));
    }

    // Hint while trying to go to disallowed dimensions
    if(player.world.getWorldTime() as long % 20 == 0) {
        if(player.world.getBlock(player.position).definition.id == "minecraft:portal" && !player.hasGameStage("twilight_shield")) {
            server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"" + game.localize("greedycraft.event.nether.reject.message") + "\",\"color\":\"dark_purple\"}]");
        }
        if(player.world.getBlock(player.position).definition.id == "minecraft:end_portal" && !player.hasGameStage("ender_charm")) {
            server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"" + game.localize("greedycraft.event.end.reject.message") + "\",\"color\":\"dark_purple\"}]");
        }
    }

    // Prevent breathing in ocean with a door
    if(!player.creative && (player.world.getBiome(player.position).name.contains("Ocean") || player.world.getBiome(player.position).name.contains("Coral Reef") || player.world.getBiome(player.position).name.contains("Kelp Forest")) && player.y < 40.0) {
        var checkPoints as Position3f[] = [player.position, player.position, player.position, player.position] as Position3f[];
        var isInOcean = true;
        checkPoints[0].x = checkPoints[0].x + 5.0;
        checkPoints[1].z = checkPoints[1].z + 5.0;
        checkPoints[2].x = checkPoints[2].x - 5.0;
        checkPoints[3].z = checkPoints[3].z - 5.0;
        for checkPoint in checkPoints {
            if(!(player.world.getBiome(checkPoint).name.contains("Ocean") || player.world.getBiome(checkPoint).name.contains("Coral Reef") || player.world.getBiome(checkPoint).name.contains("Kelp Forest"))) {
                isInOcean = false;
                break;
            }
        }
        if(isInOcean && !(player.isPotionActive(<potion:minecraft:water_breathing>) || player.isPotionActive(<potion:potioncore:drown>)) && player.world.getBlock(getHeadBlockPos(player)).definition.id != "minecraft:water") {
            player.air = 0;
            if(player.world.getBlock(getHeadBlockPos(player)).definition.id != "minecraft:air") {
                if(!player.isPotionActive(<potion:minecraft:wither>)) {
                    player.addPotionEffect(<potion:minecraft:wither>.makePotionEffect(100, 1, false, false));
                }
            }
            if(player.world.getWorldTime() as long % 20 == 0) {
                player.addPotionEffect(<potion:minecraft:blindness>.makePotionEffect(50, 0, false, false));
                player.attackEntityFrom(IDamageSource.DROWN(), 10.0);
                server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"" + game.localize("greedycraft.event.deep_sea.warning") + "\",\"color\":\"red\"},{\"text\":\"" + game.localize("greedycraft.event.deep_sea.message") + "\",\"color\":\"yellow\"}]");
            }
        }
    }
});
