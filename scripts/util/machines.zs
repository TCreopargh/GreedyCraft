/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32000
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;
import mods.jei.JEI;
import mods.zenutils.I18n;

import scripts.util.math as MathUtil;

function addForgeRecipe(regName as string, output as IItemStack, baseSpeed as int, baseEnergy as long, baseIngradients as IItemStack[], catalysts as double[string][IItemStack]) {
    var descriptions as string[] = [I18n.format("greedycraft.machines.forge.tooltip.1", output.displayName), game.localize("greedycraft.machines.forge.tooltip.2")];
    for catalyst in catalysts {
        descriptions += I18n.format("greedycraft.machines.forge.list", [catalyst.displayName, ((catalysts[catalyst]["speed"] * 100) as int) as string, ((catalysts[catalyst]["energy"] * 100) as int) as string] as string[]);
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
        if (i != 0) {
            for j in 0 to binary.length {
                select[catalysts.length - j - 1] = binary[j];
            }
        }
        var speedMultiplier as double = 1.0;
        var energyMultiplier as double = 1.0;
        for j in 0 to catalysts.length {
            if (select[j]) {
                if (!isNull(catalysts.entrySet[j].value["speed"])) {
                    speedMultiplier *= ( 1.0 - catalysts.entrySet[j].value["speed"] as double);
                }
                if (!isNull(catalysts.entrySet[j].value["energy"])) {
                    energyMultiplier *= ( 1.0 - catalysts.entrySet[j].value["energy"] as double);
                }
            }
        }
        var speed as int = Math.floor(baseSpeed as double * speedMultiplier as double) as int;
        if (speed <= 0) {
            speed = 1;
        }
        var energy as long = Math.floor((baseEnergy as double * energyMultiplier as double) / speed as double) as long;
        var builder = RecipeBuilder.newBuilder(regName + "_" + i, regName, speed, (pow(2, catalysts.length) - i) as int);
        builder.addEnergyPerTickInput(energy);
        for ingredient in baseIngradients {
            if (!isNull(ingredient)) {
                builder.addItemInput(ingredient);
            }
        }
        for j in 0 to catalysts.length {
            if (select[j] && !isNull(catalysts.entrySet[j].key)) {
                builder.addItemInput(catalysts.entrySet[j].key);
            }
        }
        builder.addItemOutput(output);
        builder.build();
    }
}

function getStack(stack as IItemStack, baseAmount as int) as IItemStack {
    var amount as int = Math.floor(baseAmount as double * FORGE_OUTPUT_MULTIPLIER as double) as int;
    if (amount <= 0) {
        amount = 1;
    }
    return (stack * amount) as IItemStack;
}
