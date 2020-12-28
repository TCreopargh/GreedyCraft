/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32000

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;
import mods.jei.JEI;

import scripts.util.math as MathUtil;

function addForgeRecipe(regName as string, output as IItemStack, baseSpeed as int, baseEnergy as long, baseIngradients as IItemStack[], catalysts as double[string][IItemStack]) {
    var descriptions as string[] = ["§2要合成" + output.displayName + "§2，你需要在指定的多方块结构中制作，这是一项极为耗时并且费电的工作。除了基本的配方以外，还有一些物品可有可无，它们叫做催化剂，当它们参与合成时会降低合成所需时间与能量消耗。使用多个催化剂时其效果叠加。以下是可用的催化剂列表：", " §7(如果列表显示不全，滑动鼠标滚轮以查看剩余内容)"];
    for catalyst in catalysts {
        descriptions += "§6" + catalyst.displayName + "§7: §5-" + (catalysts[catalyst]["speed"] * 100) as int + "% §2制作时长， §c-" + (catalysts[catalyst]["energy"] * 100) as int + "% §2能量消耗";
    }
    JEI.addDescription(output, descriptions);
    for i in 0 to MathUtil.pow(2, catalysts.length) as int {
        // print("Adding recipe for " + regName + " #" + i);
        var select = [] as bool[];
        for i in 0 to catalysts.length {
            select += false;
        }
        var binary = [] as bool[];
        var num = i;
        while(num > 0) {
            binary += num % 2 != 0;
            num = num / 2;
        }
        if(i != 0) {
            for j in 0 to binary.length {
                select[catalysts.length - j - 1] = binary[j];
            }
        }
        var speedMultiplier as double = 1.0;
        var energyMultiplier as double = 1.0;
        for j in 0 to catalysts.length {
            if(select[j]) {
                if(!isNull(catalysts.entrySet[j].value["speed"])) {
                    speedMultiplier *= ( 1.0 - catalysts.entrySet[j].value["speed"] as double);
                }
                if(!isNull(catalysts.entrySet[j].value["energy"])) {
                    energyMultiplier *= ( 1.0 - catalysts.entrySet[j].value["energy"] as double);
                }
            }
        }
        var speed as int = Math.floor(baseSpeed as double * speedMultiplier as double) as int;
        if(speed <= 0) {
            speed = 1;
        }
        var energy as long = Math.floor((baseEnergy as double * energyMultiplier as double) / speed as double) as long;
        var builder = RecipeBuilder.newBuilder(regName + "_" + i, regName, speed, (pow(2, catalysts.length) - i) as int);
        builder.addEnergyPerTickInput(energy);
        for ingredient in baseIngradients {
            if(!isNull(ingredient)) {
                builder.addItemInput(ingredient);
            }
        }
        for j in 0 to catalysts.length {
            if(select[j] && !isNull(catalysts.entrySet[j].key)) {
                builder.addItemInput(catalysts.entrySet[j].key);
            }
        }
        builder.addItemOutput(output);
        builder.build();
    }
}

function getStack(stack as IItemStack, baseAmount as int) as IItemStack {
    var amount as int = Math.floor(baseAmount as double * FORGE_OUTPUT_MULTIPLIER as double) as int;
    if(amount <= 0) {
        amount = 1;
    }
    return (stack * amount) as IItemStack;
}
