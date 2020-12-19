/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 30

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.modularmachinery.RecipeBuilder;
import mods.ctutils.utils.Math;
import mods.jei.JEI;

function pow(base as int, exp as int) as long {
    var ret as long = 1 as long;
    for i in 0 to exp {
        ret *= base;
    }
    return ret as long;
}

function addForgeRecipe(regName as string, output as IItemStack, baseSpeed as int, baseEnergy as long, baseIngradients as IItemStack[], catalysts as double[string][IItemStack]) {
    var descriptions as string[] = ["§2要合成" + output.displayName + "§2，你需要在指定的多方块结构中制作，这是一项极为耗时并且费电的工作。除了基本的配方以外，还有一些物品可有可无，它们叫做催化剂，当它们参与合成时会降低合成所需时间与能量消耗。使用多个催化剂时其效果叠加。以下是可用的催化剂列表：", " §7(如果列表显示不全，滑动鼠标滚轮以查看剩余内容)"];
    for catalyst in catalysts {
        descriptions += "§6" + catalyst.displayName + "§7: §5-" + (catalysts[catalyst]["speed"] * 100) as int + "% §2制作时长， §c-" + (catalysts[catalyst]["energy"] * 100) as int + "% §2能量消耗";
    }
    JEI.addDescription(output, descriptions);
    for i in 0 to pow(2, catalysts.length) as int {
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

addForgeRecipe("durasteel_forge", getStack(<additions:durasteel_ingot>, 4), (24000 * FORGE_COST_MULTIPLIER) as int, (10000000 * FORGE_COST_MULTIPLIER) as long, [
    <tconstruct:ingots:2>,
    <additions:stainless_steel_ingot>,
    <additions:asgardium_ingot>,
    <additions:aeroite_ingot>,
    <additions:aqualite_ingot>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.85,
        energy: 0.85
    }, 
    <additions:netherite_ingot> : {
        speed: 0.5,
        energy: 0.5
    }, 
    <additions:crimsonite_ingot> : {
        speed: 0.35,
        energy: 0.35
    }, 
    <enderio:item_alloy_ingot:3> : {
        speed: 0.0,
        energy: 0.25
    }, 
    <defiledlands:ravaging_ingot> : {
        speed: 0.25,
        energy: 0.05
    }, 
    <defiledlands:remorseful_gem> : {
        speed: 0.05,
        energy: 0.25
    }, 
    <minecraft:nether_star> : {
        speed: 0.3,
        energy: 0.3
    }, 
    <botania:manaresource:14> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <plustic:mirioningot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <astralsorcery:itemcraftingcomponent:1> : {
        speed: 0.15,
        energy: 0.15
    }, 
    <abyssalcraft:dreadiumingot> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <redstonerepository:material:1> : {
        speed: 0.33,
        energy: 0.0
    }, 
    <redstonearsenal:material:32> : {
        speed: 0.0,
        energy: 0.33
    }, 
    <threng:material> : {
        speed: 0.25,
        energy: 0.25
    }
} as double[string][IItemStack]);

addForgeRecipe("aeonsteel_forge", getStack(<additions:aeonsteel_ingot>, 4), (48000 * FORGE_COST_MULTIPLIER) as int, (64000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:durasteel_ingot>,
    <tconevo:material>,
    <draconicevolution:draconium_ingot>,
    <enderio:item_alloy_endergy_ingot:3>,
    <avaritia:resource:1>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.75,
        energy: 0.75
    }, 
    <additions:shadowium_ingot> : {
        speed: 0.15,
        energy: 0.15
    }, 
    <additions:astral_metal_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <draconicevolution:draconic_ingot> : {
        speed: 0.15,
        energy: 0.3
    }, 
    <extrabotany:material:1> : {
        speed: 0.35,
        energy: 0.35
    }, 
    <additions:cytosinite_ingot> : {
        speed: 0.1,
        energy: 0.2
    }, 
    <mysticalagradditions:insanium:2> : {
        speed: 0.25,
        energy: 0.05
    }, 
    <thaumcraft:ingot:1> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <thaumadditions:mithminite_ingot> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <abyssalcraft:ethaxiumingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <mekanism:controlcircuit:3> : {
        speed: 0.35,
        energy: 0.35
    }, 
    <plustic:osgloglasingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <projecte:item.pe_matter> : {
        speed: 0.25,
        energy: 0.25
    }
} as double[string][IItemStack]);

addForgeRecipe("chromasteel_forge", getStack(<additions:chromasteel_ingot>, 4), (96000 * FORGE_COST_MULTIPLIER) as int, (256000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:aeonsteel_ingot>,
    <additions:terra_alloy_ingot>,
    <biomesoplenty:terrestrial_artifact>,
    <mekanism:atomicalloy>,
    <tconevo:metal:20>,
    <tconevo:metal>,
    <tconevo:metal:5>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.5,
        energy: 0.5
    }, 
    <additions:protonium_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <additions:electronium_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <avaritia:resource:4> : {
        speed: 0.15,
        energy: 0.3
    }, 
    <extrabotany:material:1> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <additions:greedycraft-sand_of_time> : {
        speed: 0.3,
        energy: 0.0
    }, 
    <mysticalagradditions:insanium:2> : {
        speed: 0.1,
        energy: 0.1
    }, 
    <thaumadditions:mithminite_ingot> : {
        speed: 0.2,
        energy: 0.2
    }, 
    <appliedenergistics2:material:47> : {
        speed: 0.3,
        energy: 0.3
    }, 
    <abyssalcraft:ethaxiumingot> : {
        speed: 0.1,
        energy: 0.1
    }, 
    <additions:greedycraft-aurora_heart> : {
        speed: 0.4,
        energy: 0.4
    }, 
    <projecte:item.pe_matter:1> : {
        speed: 0.3,
        energy: 0.3
    }
} as double[string][IItemStack]);

addForgeRecipe("cosmic_forge", <additions:cosmilite_ingot> * COSMILITE_OUTPUT_COUNT, (192000 * FORGE_COST_MULTIPLIER) as int, (1440000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:chromasteel_ingot> * 4,
    <tconevo:metal:10>,
    <abyssalcraft:ethaxiumingot>,
    <mysticalagradditions:insanium:2>,
    <avaritia:resource:4>,
    <additions:protonium_ingot>,
    <additions:electronium_ingot>,
    <plustic:osgloglasingot>,
    <additions:shadowium_ingot>,
    <additions:astral_metal_ingot>,
    <botania:manaresource:14>,
    <thaumadditions:mithminite_ingot>,
    <additions:netherite_ingot>
] as IItemStack[], {
    <additions:greedycraft-catalyst_star> : {
        speed: 0.25,
        energy: 0.25
    },
    <additions:greedycraft-sand_of_time> : {
        speed: 0.25,
        energy: 0.0
    },
    <additions:greedycraft-ancient_tome> : {
        speed: 0.8,
        energy: 0.8
    },
    <projectex:matter:2> : {
        speed: 0.35,
        energy: 0.35
    },
    <projectex:matter:3> : {
        speed: 0.75,
        energy: 0.75
    }
} as double[string][IItemStack]);

RecipeBuilder.newBuilder("chromasteel_forge_terra_alloy", "chromasteel_forge", 100, 0)
    .addItemInput(<ore:ingotInfernium>)
    .addItemInput(<ore:ingotCryonium>)
    .addItemInput(<ore:ingotCytosinite>)
    .addItemInput(<ore:ingotTitanium>)
    .addEnergyPerTickInput(500)
    .addItemOutput(<additions:terra_alloy_ingot> * 2)
    .build();
