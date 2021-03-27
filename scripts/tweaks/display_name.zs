/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 400
#no_fix_recipe_book

import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

import scripts.util.lang as LangUtil;

val names as string[IItemStack] = {
    <mysticalcreations:cake_essence> : "蛋糕精华",
    <mysticalcreations:cake_seeds> : "蛋糕种子",
    <mysticalcreations:witch_essence> : "女巫精华",
    <mysticalcreations:witch_seeds> : "女巫种子",
    <mysticalcreations:witch_chunk> : "女巫灵魂碎片",
    <mysticalcreations:stainless_steel_essence> : "不锈钢精华",
    <mysticalcreations:stainless_steel_seeds> : "不锈钢种子",
    <mysticalcreations:chromium_essence> : "铬精华",
    <mysticalcreations:chromium_seeds> : "铬种子",
    <mysticalcreations:titanium_essence> : "钛金精华",
    <mysticalcreations:titanium_seeds> : "钛金种子",
    <mysticalcreations:fusion_matrix_essence> : "聚合矩阵精华",
    <mysticalcreations:fusion_matrix_seeds> : "聚合矩阵种子",
    <mysticalcreations:meteor_essence> : "陨星精华",
    <mysticalcreations:meteor_seeds> : "陨星种子"
} as string[IItemStack];

if (LangUtil.getLanguage() == "zh_cn") {
    for item in names {
        var name as string = names[item] as string;
        item.displayName = name;
        item.addTooltip("§e" + name);
        JEI.addDescription(item, "该物品的汉化名称是：" + name);
    }
}
