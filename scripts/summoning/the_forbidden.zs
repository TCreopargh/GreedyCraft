#disable_search_tree
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
        .setCatalyst(<additions:greedycraft-forbidden_bible>)
        .setConsumeCatalyst(true)
        .setReagents([])
        .addMob(MobInfo.create()
            .setMob("headcrumbs:human")
            .setCount(1)
            .setOffset(0,4,0)
            .setSpread(1,1,1)
            .setData({HandItems: [{id: "avaritia:infinity_sword", Count: 1 as byte, Damage: 0 as short}, {id: "additions:greedycraft-huaji", Count: 64 as byte, Damage: 0 as short}], HandDropChances: [0 as float, 1 as float], CustomName: "TCreopargh的冤魂", Username: "TCreopargh", Health: 1919810, Attributes:[{"Name":"generic.maxHealth","Base": 1919810}]})
        )
        .addMob(MobInfo.create()
            .setMob("headcrumbs:human")
            .setCount(12)
            .setOffset(0,4,0)
            .setSpread(7,3,7)
			.setData({"CustomName": "TCreopargh的侍从", "Username": "TCreopargh","IsBaby": true as bool, "Health": 32767, "Attributes":[{"Name":"generic.maxHealth","Base": 32767}]})
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
			if(attempt.world.getProvider().getDimensionID() != -1) {
                attempt.success = false;
                attempt.message = "§c你只能在下界召唤§c§kT C r e o p a r g h§r§c。";
            } else if(!pass1) {
				attempt.success = false;
				attempt.message = "§c无法召唤§c§kT C r e o p a r g h§r§c。周围的地形不够开阔。";
			} else if(!pass2) {
				attempt.success = false;
				attempt.message = "§c无法召唤§c§kT C r e o p a r g h§r§c。周围的地形不够平坦。";
			} else {
				attempt.message = "§cTCreopargh §5§o已苏醒！";
			}
        })
);
