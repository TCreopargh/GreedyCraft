/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 20
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;

import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

import scripts.util.lang as LangUtil;

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<additions:greedycraft-forbidden_bible>)
        .setConsumeCatalyst(true)
        .setReagents([])
        .addMob(MobInfo.create()
            .setMob("headcrumbs:human")
            .setCount(1)
            .setOffset(0,4,0)
            .setSpread(1,1,1)
            .setData({HandItems: [{id: "avaritia:infinity_sword", Count: 1 as byte, Damage: 0 as short}, {id: "additions:greedycraft-huaji", Count: 64 as byte, Damage: 0 as short}], HandDropChances: [-10000 as float, 1 as float], CustomName: LangUtil.translate("greedycraft.zensummoning.tcreopargh.name"), Username: "TCreopargh", Health: 1919810, Attributes:[{"Name":"generic.maxHealth","Base": 114514}]})
        )
        .addMob(MobInfo.create()
            .setMob("headcrumbs:human")
            .setCount(12)
            .setOffset(0,4,0)
            .setSpread(7,3,7)
            .setData({"CustomName": "greedycraft.zensummoning.tcreopargh.minion.name", "Username": "TCreopargh","IsBaby": true as bool, "Health": 32767, "Attributes":[{"Name":"generic.maxHealth","Base": 32767}]})
        )
        .setMutator(function (attempt as SummoningAttempt) {
            var pos = attempt.pos;
            var x = pos.x as int;
            var y = pos.y as int;
            var z = pos.z as int;
            var pass1 = true as bool;
            var pass2 = true as bool;
            var world = attempt.world;
            for i in (x - 7) to (x + 8) {
                for j in y to (y + 7) {
                    for k in (z - 7) to (z + 8) {
                        if (!(i == x && j == y && k == z)) {
                            var block as IBlock = world.getBlock(i, j, k);
                            if (block.definition.id != "minecraft:air" && block.definition.id != "minecraft:snow_layer") {
                                pass1 = false;
                                break;
                            }
                        }
                    }
                }
            }
            for i in (x - 7) to (x + 8) {
                for k in (z - 7) to (z + 8) {
                    var j = y - 1;
                    var block as IBlock = world.getBlockState(crafttweaker.util.Position3f.create(i, j, k).asBlockPos()).getBlock();
                    if (block.definition.id == "minecraft:air" || block.definition.id == "minecraft:water" || block.definition.id == "minecraft:lava") {
                        pass2 = false;
                        break;
                    }
                }
            }
            if (attempt.world.getProvider().getDimensionID() != -1) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.tcreopargh.fail.1");
            } else if (!pass1) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.tcreopargh.fail.2");
            } else if (!pass2) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.tcreopargh.fail.3");
            } else {
                attempt.message = LangUtil.translate("greedycraft.zensummoning.tcreopargh.success");
            }
        })
);
