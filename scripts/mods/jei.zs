/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 500

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

val discriptions as string[IIngredient] = {
    <additions:cryonium_ingot> : "通过在600难度以上击败冰霜巨口或挖掘极寒矿获得。",
    <additions:infernium_ingot> : "在700难度以上击败太阳酋长并使用太阳宝石后，在下界生成",
    <additions:cytosinite_ingot> : "在打败末影龙后可在树木繁茂的生物群系或沼泽的地下泥巴堆里找到这种矿物",
    <additions:aeroite_ingot> : "你可以在天境主世界天空中的云里找到这种矿物",
    <additions:asgardium_ingot> : "你可以在天境的圣石里找到这种矿物",
    <additions:shadowium_ingot> : "你可以在漆黑世界的深处找到这种矿物",
    <additions:greedycraft-experience_ingot> : "这种矿物分布非常广泛但并不常见，你可以在主世界的地下找到它们",
    <additions:titanium_ingot> : "这种矿物非常罕见，你可以在末地找到它",
    <additions:cosmilite_ingot> : "§0这是一种由超多金属合成的合金，需要使用§5寰宇熔炉§0制作！",
    <additions:terra_alloy_ingot> : "这是一种合金，合成表请查询其液体！",
    <additions:aqualite_ingot> : "这种矿物能在深海被淹没的洞穴中偶尔找到。要挖掘此矿物，首先必须获得阶段nether。",
    <additions:greedycraft-cryonium_ore> : "通过在600难度以上击败冰霜巨口或挖掘极寒矿获得。",
    <additions:greedycraft-infernium_ore> : "在700难度以上击败太阳酋长并使用太阳宝石后，在下界生成",
    <additions:greedycraft-cytosinite_ore> : "在打败末影龙后可在树木繁茂的生物群系或沼泽的地下泥巴堆里找到这种矿物",
    <additions:greedycraft-aeroite_ore> : "你可以在天境主世界天空中的云里找到这种矿物",
    <additions:greedycraft-asgardium_ore> : "你可以在天境的圣石里找到这种矿物",
    <additions:greedycraft-shadowium_ore> : "你可以在漆黑世界的深处找到这种矿物",
    <additions:greedycraft-experience_ore> : "这种矿物分布非常广泛但并不常见，你可以在主世界的地下找到它们",
    <additions:greedycraft-titanium_ore> : "这种矿物非常罕见，你可以在末地找到它",
    <additions:greedycraft-aqualite_ore> : "这种矿物能在深海被淹没的洞穴中偶尔找到。要挖掘此矿物，首先必须获得阶段nether。",
    <additions:greedycraft-purifying_dust> : "这种粉尘可以像白雏菊一样净化方块，不过可以一次性净化很大一片。",
    <additions:protonium_ingot> : "使用中子素粒、质能转换核心和紫物质合成，此过程不消耗质能转换核心。",
    <cyclicmagic:heart_food> : "更高级的心之容器。可以使用普通心之容器合成，不过同样具有上限。",
    <scalinghealth:heartcontainer> : "§0心之容器可以提高你的生命值上限。不过有最大使用次数限制。如果达到了限制，你将无法继续使用心之容器，不过可以用这种心之容器合成§4心之容器EX§0，高级心之容器有独立计算的生命值提高上限。"
} as string[IIngredient];

val hides as IIngredient[] = [
    <additions:greedycraft-ocd_certificate>
] as IIngredient[];

for ingredient in hides {
    for item in ingredient.items {
        JEI.hide(item);
    }
}

for ingredient in discriptions {
    for item in ingredient.items {
        var discription = discriptions[ingredient] as string;
        JEI.addDescription(item, discription);
    }
}
