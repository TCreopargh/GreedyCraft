/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 100

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.game.IGame;

val disabled = "§c已禁用";
val flight_disabled = "§c飞行已被禁用";
val dont_place = "§c请谨慎放置";
val de_disabled_wyvern = "§c已禁用，请使用匠魂的飞龙金属材料";
val de_disabled_awakened = "§c已禁用，请使用匠魂的神龙金属材料";
val dont_put_into_ae = "§c请勿放入AE存储中，否则会无法取出且会导致崩溃问题";
val ae_lag = "§c请不要放到AE存储中，否则会导致卡顿";
val refer_to_guide = "§e使用该物品的教程请参考整合包手册";
val blueprint_required = "§e该武器需要做出对应的蓝图后才能制作";
val shadow_mob_1 = "§e如果找不到阴影怪物，你可以制作它的刷怪蛋。";
val shadow_mob_2 = "§6请查阅整合包手册中的杂项--合成配方";
val hardmode_tinkers = "§e需要进入困难模式才能用来制作匠魂装备";
val dont_eat_twice = "§e温馨提示：不要吃第二次";
val bow_speed = "§e温馨提示：拉弓速度数值越低越快";
val tc_book_incorrect = "§e神秘书上的配方不准确，请查询JEI以获得该物品的合成表。";
val sentient_disabled = "§c已禁用，请使用匠魂“感知”材料";
val bound_disabled = "§c已禁用，请使用匠魂“束缚”材料";
val how_to_repair = "§e请使用磨制工具和抛光工具来分别修理武器和盔甲";
val cant_set_spawn = "§c注意：无法设置重生点";
val machinery_upgrade_guide = "§a将其放到多方块机械指定位置上即可应用升级";

val tooltipMap as string[][IIngredient] = {
    <mysticalagriculture:supremium_helmet> : [flight_disabled],
    <mysticalagriculture:supremium_chestplate> : [flight_disabled],
    <mysticalagriculture:supremium_leggings> : [flight_disabled],
    <mysticalagriculture:supremium_boots> : [flight_disabled],
    <minecraft:diamond_pickaxe> : ["§c无法挖掘黑曜石"],
    <minecraft:bedrock> : [dont_place],
    <minecraft:barrier> : [dont_place],
    <projecte:collector_mk1> : [disabled],
    <projecte:collector_mk2> : [disabled],
    <projecte:collector_mk3> : [disabled],
    <projectex:collector:*> : ["§cEMC收集器的合成配方已禁用，可从奖励箱获得"],
    <projectex:relay:*> : [disabled],
    <projectex:compressed_collector:*> : [disabled],
    <projectex:power_flower:*> : [disabled],
    <draconicevolution:wyvern_helm> : [de_disabled_wyvern],
    <draconicevolution:wyvern_legs> : [de_disabled_wyvern],
    <draconicevolution:wyvern_chest> : [de_disabled_wyvern],
    <draconicevolution:wyvern_boots> : [de_disabled_wyvern],
    <draconicevolution:wyvern_axe> : [de_disabled_wyvern],
    <draconicevolution:wyvern_bow> : [de_disabled_wyvern],
    <draconicevolution:wyvern_pick> : [de_disabled_wyvern],
    <draconicevolution:wyvern_shovel> : [de_disabled_wyvern],
    <draconicevolution:wyvern_sword> : [de_disabled_wyvern],
    <draconicevolution:draconic_helm> : [de_disabled_awakened],
    <draconicevolution:draconic_legs> : [de_disabled_awakened],
    <draconicevolution:draconic_chest> : [de_disabled_awakened],
    <draconicevolution:draconic_boots> : [de_disabled_awakened],
    <draconicevolution:draconic_axe> : [de_disabled_awakened],
    <draconicevolution:draconic_bow> : [de_disabled_awakened],
    <draconicevolution:draconic_pick> : [de_disabled_awakened],
    <draconicevolution:draconic_shovel> : [de_disabled_awakened],
    <draconicevolution:draconic_sword> : [de_disabled_awakened],
    <draconicevolution:draconic_hoe> : [de_disabled_awakened],
    <astralsorcery:blockaltar> : ["§e请在§6浮动水晶§e下方放置§6普通工作台§e以合成此物品"],
    <astralsorcery:blockaltar> : ["§e合成时请清除掉周围的水"],
    <akashictome:tome> : ["§e放入工作台以获得最新的百科全书"],
    <bountifulbaubles:trinketbrokenheart> : [disabled],
    <cyclicmagic:cyclic_wand_build> : [disabled],
    <minecraft:diamond> : ["§c无法用于激活暮色传送门"],
    <minecraft:stick> : ["§e点击方块时显示调试信息"],
    <danknull:dank_null_0> : [refer_to_guide],
    <danknull:dank_null_0> : [dont_put_into_ae],
    <danknull:dank_null_1> : [refer_to_guide],
    <danknull:dank_null_1> : [dont_put_into_ae],
    <danknull:dank_null_2> : [refer_to_guide],
    <danknull:dank_null_2> : [dont_put_into_ae],
    <danknull:dank_null_3> : [refer_to_guide],
    <danknull:dank_null_3> : [dont_put_into_ae],
    <danknull:dank_null_4> : [refer_to_guide],
    <danknull:dank_null_4> : [dont_put_into_ae],
    <danknull:dank_null_5> : [refer_to_guide],
    <danknull:dank_null_5> : [dont_put_into_ae],
    <danknull:dank_null_6> : [refer_to_guide],
    <danknull:dank_null_6> : [dont_put_into_ae],
    <aether_legacy:golden_amber> : ["§e使用匠魂紫晶或重力晶斧砍倒金琥珀树获得"],
    <abyssalcraft:gatewaykeydl> : ["§c只有无畏之人才能进入恐惧之门。"],
    <abyssalcraft:gatewaykeyjzh> : ["§c只有击败了巨龙的人才有资格进入奥穆索。"],
    <tinkersaether:valkyrie_block> : ["§e要想得到它，就来天界的神殿中挑战我！"],
    <chancecubes:compact_giant_chance_cube> : ["§c严肃警告：请不要在家附近玩这个"],
    <chancecubes:chance_cube> : ["§c严肃警告：请不要在家附近玩这个"],
    <minecraft:obsidian> : ["§e你需要使用§b暮色之庇护§e才能进入下界"],
    <extrautils2:chunkloader> : ["§e你不需要这个！", "§e按E点左上角的声明区块，点击区块声明后按Shift左键就能使该区块保持加载"],
    <hooked:hook:*> : ["§e装备后，按§bQ§e键发射钩爪§7(默认键位设置下)"],
    <tconstruct:seared:*> : ["§e给我把冶炼炉造的大大的！最好9*9！", "§e不然的话，后期绝对不够用！"],
    <tconstruct:cleaver> : [blueprint_required],
    <plustic:katana> : [blueprint_required],
    <tconstruct:longsword> : [blueprint_required],
    <tconstruct:shuriken> : [blueprint_required],
    <tconstruct:rapier> : [blueprint_required],
    <tconevo:tool_sceptre> : [blueprint_required],
    <thermaldynamics:duct_32:*> : ["§e为了降低对FPS的影响，建议使用不透明的物品管道。"],
    <tconstruct:materials> : ["§e通过烧制红砖制作"],
    <abyssalcraft:shadowgem> : [shadow_mob_1, shadow_mob_2],
    <abyssalcraft:shadowshard> : [shadow_mob_1, shadow_mob_2],
    <abyssalcraft:shadowfragment> : [shadow_mob_1, shadow_mob_2],
    <astralsorcery:itemexchangewand> : [disabled],
    <mekanism:transmitter:*> : ["§cMek的线缆已禁用，建议使用XNet"],
    <cyclicmagic:tool_swap> : [disabled],
    <cyclicmagic:tool_swap_match> : [disabled],
    <ore:ingotInsanium> : [hardmode_tinkers],
    <ore:ingotSupremium> : [hardmode_tinkers],
    <tconstruct:arrow_shaft> : ["§e箭杆铸模请使用任意箭杆和两个金锭合成"],
    <ore:ingotSteel> : ["§e想要钢铁？使用高炉冶炼吧！", "§e炼钢配方请查询熔融钢"],
    <ore:skullPlayer> : [ae_lag],
    <mca:book_death> : [ae_lag],
    <mca:book_romance> : [ae_lag],
    <mca:book_family> : [ae_lag],
    <mca:book_rose_gold> : [ae_lag],
    <mca:book_infection> : [ae_lag],
    <minecraft:written_book> : [ae_lag],
    <ore:ingotNetherite> : ["§e请用匠魂冶炼炉制作这种合金"],
    <cyclicmagic:crafting_food> : [dont_eat_twice],
    <cyclicmagic:inventory_food> : [dont_eat_twice],
    <tconstruct:shortbow> : [bow_speed],
    <tconstruct:longbow> : [bow_speed],
    <tconstruct:crossbow> : [bow_speed],
    <tconstruct:bow_limb> : [bow_speed],
    <modularmachinery:itemblueprint> : ["§e如果遇到问题请查阅整合包手册", "§c机器工作不需要蓝图，蓝图仅供查询配方和结构"],
    <thaumadditions:mithminite_plate> : [tc_book_incorrect],
    <thaumadditions:adaminite_plate> : [tc_book_incorrect],
    <thaumadditions:mithrillium_plate> : [tc_book_incorrect],
    <projectex:collector:5> : ["§e该收集器有配方"],
    <additions:greedycraft-aeroite_ore> : ["§e请用铲子挖掘"],
    <tofucraft:ore_tofudiamond> : ["§e请用铲子挖掘"],
    <minecraft:enchanting_table> : ["§e你需要达到§5魔法12级§e才能使用附魔台！"],
    <twilightforest:uncrafting_table> : ["§e注意：无法拆解物品"],
    <oeintegration:excavatemodifier> : ["§e请在工具锻造台中与工具合成以应用该强化"],
    <bloodmagic:sentient_sword> : [sentient_disabled],
    <bloodmagic:sentient_bow> : [sentient_disabled],
    <bloodmagic:sentient_axe> : [sentient_disabled],
    <bloodmagic:sentient_pickaxe> : [sentient_disabled],
    <bloodmagic:sentient_shovel> : [sentient_disabled],
    <bloodmagic:sentient_shovel> : [sentient_disabled],
    <comforts:sleeping_bag:*> : [cant_set_spawn],
    <comforts:hammock:*> : [cant_set_spawn],
    <theoneprobe:probenote> : ["§c我建议你不要乱玩这张纸，否则你很有可能会把方块信息显示弄没。"],
    <scalinghealth:heartcontainer> : ["§e生命值增加量有上限", "§e如果达到上限请使用§c心之容器 EX"],
    <redstonerepository:ring_mining> : ["§e你不需要该物品，该效果已经自带"],
    <prefab:item_monster_masher> : ["§e注意：不含刷怪笼"],
    <tconstruct:materials:19> : ["§e注意：该强化只有在获得§6hardmode§e游戏阶段以后才能使用"],
    <harvestcraft:hamandpineapplepizzaitem> : ["§e意大利人食用后获得中毒V效果"],
    <bloodmagic:bound_sword> : [bound_disabled],
    <bloodmagic:bound_pickaxe> : [bound_disabled],
    <bloodmagic:bound_axe> : [bound_disabled],
    <bloodmagic:bound_shovel> : [bound_disabled],
    <animus:kama_bound> : [disabled],
    <tconstruct:tooltables:3> : [how_to_repair],
    <tconstruct:toolforge> : [how_to_repair],
    <danknull:danknull_dock> : ["§e空手Shift+右键将无底之箱从扩展坞上取出"],
	<extrautils2:snowglobe:*> : ["§c拿在手上会导致严重掉帧，请注意"],
	<modularmachinery:blockcasing:1> : ["§e1级机械升级方块", machinery_upgrade_guide],
	<modularmachinery:blockcasing:2> : ["§e2级机械升级方块", machinery_upgrade_guide],
	<modularmachinery:blockcasing:3> : ["§e3级机械升级方块", machinery_upgrade_guide],
	<modularmachinery:blockcasing:5> : ["§e4级机械升级方块", machinery_upgrade_guide],
	<enderio:item_material:9> : ["§e请使用热力系列的木齿轮"],
	<enderio:item_material:10> : ["§e4请使用热力系列的石齿轮"],
    <tombmanygraves:death_list> : ["§e拿在手上会有粒子效果指引你到该清单对应的墓碑", "§e按住Shift走上墓碑即可取回死亡时丢失的物品"],
    <thaumadditions:vis_scribing_tools:*> : ["§c会产生卡顿，建议不要使用"]
} as string[][IIngredient];

for ingredient in tooltipMap {
    var tooltips as string[] = tooltipMap[ingredient] as string[];
    for item in ingredient.items {
        for tooltip in tooltips {
            item.addTooltip(tooltip);
        }
    }
}
