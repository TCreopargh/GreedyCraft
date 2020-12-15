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

import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

val killEntities as string[] = [
    "mowziesmobs:barako",
    "mowziesmobs:barakoaya",
    "mowziesmobs:barakoana",
    "mowziesmobs:frostmaw",
    "twilightforest:yeti"
];

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
    event.player.executeCommand("sendwelcomequote " + event.player.name);
    
    if(!event.player.hasGameStage("first_join_message_shown")) {
        event.player.executeCommand("sendfirstjoinmessage " + event.player.name);
        event.player.addGameStage("first_join_message_shown");
    } else {
        event.player.sendChat("§2§o欢迎回来，§e" + event.player.name + "§2§o！");
    }

});

events.onPlayerRespawn(function (event as crafttweaker.event.PlayerRespawnEvent) {
    if(PACKMODE != MODE_CASUAL) {
        for entity in killEntities {
            server.commandManager.executeCommand(server, "/ctrlkill " + entity + " 0");
        }
    }
});

events.onEntityLivingDeath(function (event as crafttweaker.event.EntityLivingDeathEvent) {
    if(event.entityLivingBase instanceof IPlayer) {
        var player as IPlayer = event.entityLivingBase;
        var damageSource as IDamageSource = event.damageSource;
        var deathMsg as string = damageSource.getDeathMessage(player);
        deathMsg = deathMsg.replace(player.name, "§e" + player.name + "§7");
        if(!isNull(damageSource.getTrueSource()) && damageSource.getTrueSource() instanceof IEntityLivingBase) {
            var name as string = damageSource.getTrueSource().definition.name;
            if(damageSource.getTrueSource().hasCustomName) {
                name = damageSource.getTrueSource().customName;
            }
            deathMsg = deathMsg.replace(name, "§c" + name + "§7");
        }
        deathMsg = " §c☠ §7" + deathMsg;
        deathMsg = deathMsg.replace("§r", "§7");

        server.commandManager.executeCommand(server, "/broadcast " + deathMsg);

        var index as int = Math.floor(Math.random() * deathQuotes.length as float) as int;
        if(!(index >= deathQuotes.length || !(index >= 0)) && !player.hasGameStage("hide_death_quotes")) {
            var quote as string = deathQuotes[index];
            quote = quote.replace("%playername%", player.name);
            player.sendChat(quote);
        }
        if(!(Math.random() > DEATH_HUMAN_SPAWN_CHANCE)) {
            var offset = Math.random() - 0.5 as float;
            server.commandManager.executeCommand(server, "/summon headcrumbs:human " + (player.x + offset) + " " + (player.y + 1) + " "+ (player.z + offset) +" {Username:\"" + player.name + "\"}");
            player.sendChat("§5§o你感到周围的时空发生了扭曲...");
        }
    }
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
    var player = event.player;
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
    if(!player.creative && player.isPotionActive(<potion:minecraft:saturation>) && player.getActivePotionEffect(<potion:minecraft:saturation>).duration > 1) {
        var effect as IPotionEffect = player.getActivePotionEffect(<potion:minecraft:saturation>);
        player.removePotionEffect(<potion:minecraft:saturation>);
        player.addPotionEffect(<potion:minecraft:saturation>.makePotionEffect(1, effect.amplifier, effect.isAmbient, effect.doesShowParticles));
    }
    if(player.world.getWorldTime() as long % 20 == 0) {
        if(player.world.getBlock(player.position).definition.id == "minecraft:portal" && !player.hasGameStage("twilight_shield")) {
            server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"你需要取得更多进展才能进入下界！请查看整合包指南手册。\",\"color\":\"dark_purple\"}]");
        }
        if(player.world.getBlock(player.position).definition.id == "minecraft:end_portal" && !player.hasGameStage("ender_charm")) {
            server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"你需要取得更多进展才能进入末地！请查看整合包指南手册。\",\"color\":\"dark_purple\"}]");
        }
    }
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
                server.commandManager.executeCommand(server, "/title " + player.name + " actionbar [\"\",{\"text\":\"警告\",\"color\":\"red\"},{\"text\":\": 深海的压力隔绝了一切氧气，使你无法呼吸。\",\"color\":\"yellow\"}]");
            }
        }
    }
});

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
    if(event.isPlayer) {
        var player as IPlayer = event.player;
        if(!isNull(player) && !player.creative && (event.world.getBiome(event.position).name.contains("Ocean") || event.world.getBiome(event.position).name.contains("Coral Reef")) && event.y < 40.0) {
            var blockState as IBlockState = IBlockState.getBlockState("minecraft:water", [] as string[]);
            event.world.setBlockState(blockState, event.position as IBlockPos);
        }
    }
});

events.onEntityLivingHurt(function(event as crafttweaker.event.EntityLivingHurtEvent) {
    var entity as IEntityLivingBase = event.entityLivingBase;
    if(isNull(entity) || !entity instanceof IPlayer) {
        return;
    }
    var spiderId = <entity:spiderstpo:better_spider>.id;
    var caveSpiderId = <entity:spiderstpo:better_cave_spider>.id;
    if(!isNull(event.damageSource.getTrueSource()) && event.damageSource.getTrueSource() instanceof IEntityLivingBase) {
        if(event.damageSource.getTrueSource().definition.id == spiderId || event.damageSource.getTrueSource().definition.id == caveSpiderId) {
            if(!entity.isPotionActive(<potion:minecraft:slowness>)) {
                entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 0, false, false));
            } else {
                if(Math.random() < 0.66) {
                    var slownessLevel = entity.getActivePotionEffect(<potion:minecraft:slowness>).amplifier;
                    if(slownessLevel < 3) {
                        var increment = 1;
                        if(Math.random() < 0.33) {
                            increment = 2;
                        }
                        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, slownessLevel + increment, false, false));
                    } else {
                        entity.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 4, false, false));
                        if(!isNull(entity.world.getBlock(entity.position)) && entity.world.getBlock(entity.position).definition.id == "minecraft:air") {
                            var blockState as IBlockState = IBlockState.getBlockState(<minecraft:web>.definition.id, [] as string[]);
                            entity.world.setBlockState(blockState, entity.position as IBlockPos);
                        }
                    }
                }
            }
        }
    }
});
