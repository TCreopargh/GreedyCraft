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
        .setCatalyst(<additions:greedycraft-sun_totem>)
        .setConsumeCatalyst(true)
        .setReagents([])
        .addMob(MobInfo.create()
            .setMob("mowziesmobs:barako")
            .setCount(1)
            .setOffset(0,4,0)
            .setSpread(1,1,1)
            .setData({HandItems: [{id: "additions:greedycraft-solar_seed", Count: 1 as byte, Damage: 0 as short}, {}], HandDropChances: [1.0f, 0.0f], "Health": BARAKO_HP, "Attributes":[{"Name":"generic.maxHealth","Base": BARAKO_HP}]})
        )
        .addMob(MobInfo.create()
            .setMob("mowziesmobs:barakoaya")
            .setCount(BARAKO_MINION_COUNT)
            .setOffset(0,4,0)
            .setSpread(7,3,7)
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
            if (!pass1) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.barako.fail.1");
            } else if (!pass2) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.barako.fail.2");
            } else if (attempt.world.isRaining()) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.barako.fail.3");
            } else if (!attempt.world.dayTime) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.barako.fail.4");
            } else if (attempt.world.getProvider().getDimensionID() != 0) {
                attempt.success = false;
                attempt.message = LangUtil.translate("greedycraft.zensummoning.barako.fail.5");
            } else { 
                attempt.message = LangUtil.translate("greedycraft.zensummoning.barako.success");
            }
        })
);
