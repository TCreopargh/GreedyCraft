/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 20

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<additions:greedycraft-beast_hand>)
        .setConsumeCatalyst(true)
        .setReagents([])
        .addMob(MobInfo.create()
            .setMob("mowziesmobs:frostmaw")
            .setCount(1)
            .setOffset(0,4,0)
            .setSpread(1,1,1)
            .setData({"Health": FROSTMAW_HP, "Attributes":[{"Name":"generic.maxHealth","Base": FROSTMAW_HP}]})
        )
        .addMob(MobInfo.create()
            .setMob("twilightforest:yeti")
            .setCount(FROSTMAW_MINION_COUNT)
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
						if(!(i == x && j == y && k == z)) {
							var block as IBlock = world.getBlock(i, j, k);
							if(block.definition.id != "minecraft:air" && block.definition.id != "minecraft:snow_layer") {
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
					if(block.definition.id == "minecraft:air" || block.definition.id == "minecraft:water" || block.definition.id == "minecraft:lava") {
						pass2 = false;
						break;
					}
				}
			}
			if(!pass1) {
				attempt.success = false;
				attempt.message = "§c召唤失败。周围的地形不够开阔。\n§c你需要周围有至少15*15格的平坦开阔空间。\n§c高草等可以穿过的方块同样也会影响召唤。\n§6可以尝试使用Prefab的§e结构部件§6搭建平台。";
			} else if(!pass2) {
				attempt.success = false;
				attempt.message = "§c召唤失败。周围的地板不够平整。\n§c你需要周围有至少15*15格的平坦开阔空间。\n§cc这条消息表明祭坛上方有足够的空气，但是祭坛所处的平台大小不够或有缺口。\n§6可以尝试使用Prefab的§e结构部件§6搭建平台。";
			} else if(!world.getBiome(pos).isSnowyBiome) {
				attempt.success = false;
				attempt.message = "§c冰霜巨口不愿回应你的召唤，你所在的地点太热了。它只在寒冷的生物群系下雪时出没！";
			} else if(!world.raining) {
				attempt.success = false;
				attempt.message = "§c冰霜巨口不愿回应你的召唤，现在的天气过于晴朗。它只在寒冷的生物群系下雪时出没！";
			} else if(attempt.world.getProvider().getDimensionID() != 0) {
                attempt.success = false;
                attempt.message = "§c你只能在主世界召唤冰霜巨口！";
            } else {
				attempt.message = "§b冰霜巨口 §5§o已苏醒！";
			}
        })
);
