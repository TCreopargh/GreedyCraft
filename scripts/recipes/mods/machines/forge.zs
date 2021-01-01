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

import scripts.util.machines as MMUtil;

MMUtil.addForgeRecipe("durasteel_forge", MMUtil.getStack(<additions:durasteel_ingot>, 6), (12000 * FORGE_COST_MULTIPLIER) as int, (10000000 * FORGE_COST_MULTIPLIER) as long, [
    <tconstruct:ingots:2>,
    <additions:stainless_steel_ingot>,
    <additions:asgardium_ingot>,
    <additions:aeroite_ingot>,
    <additions:aqualite_ingot>,
    <twilightforest:fiery_ingot>,
    <nyx:meteor_ingot>
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
        speed: 0.33,
        energy: 0.33
    }, 
    <astralsorcery:itemcraftingcomponent:1> : {
        speed: 0.15,
        energy: 0.15
    }, 
    <abyssalcraft:dreadiumingot> : {
        speed: 0.25,
        energy: 0.25
    },
    <threng:material> : {
        speed: 0.25,
        energy: 0.25
    }, 
    <tconevo:metal:30> : {
        speed: 0.2,
        energy: 0.2
    },
    <additions:greedycraft-time_shard> : {
        speed: 0.25,
        energy: 0.0
    }
} as double[string][IItemStack]);

MMUtil.addForgeRecipe("aeonsteel_forge", MMUtil.getStack(<additions:aeonsteel_ingot>, 6), (24000 * FORGE_COST_MULTIPLIER) as int, (64000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:durasteel_ingot>,
    <tconevo:material>,
    <draconicevolution:draconium_ingot>,
    <enderio:item_alloy_endergy_ingot:3>,
    <additions:cytosinite_ingot>,
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
    <mysticalagradditions:insanium:2> : {
        speed: 0.25,
        energy: 0.05
    }, 
    <thaumcraft:ingot:1> : {
        speed: 0.2,
        energy: 0.2
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
    },
    <plustic:mirioningot> : {
        speed: 0.2,
        energy: 0.2
    },
    <additions:greedycraft-time_shard> : {
        speed: 0.15,
        energy: 0.0
    }
} as double[string][IItemStack]);

MMUtil.addForgeRecipe("chromasteel_forge", MMUtil.getStack(<additions:chromasteel_ingot>, 6), (36000 * FORGE_COST_MULTIPLIER) as int, (240000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
    <additions:aeonsteel_ingot>,
    <additions:terra_alloy_ingot>,
    <plustic:mirioningot>,
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
    },
    <additions:greedycraft-sand_of_time> : {
        speed: 0.4,
        energy: 0.0
    }
} as double[string][IItemStack]);

MMUtil.addForgeRecipe("cosmic_forge", <additions:cosmilite_ingot> * COSMILITE_OUTPUT_COUNT, (60000 * FORGE_COST_MULTIPLIER) as int, (1000000000 as long * FORGE_COST_MULTIPLIER as long) as long, [
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
        speed: 0.3,
        energy: 0.3
    },
    <projectex:matter:3> : {
        speed: 0.7,
        energy: 0.7
    },
    <additions:greedycraft-anti_entropy_matter> : {
        speed: 0.9,
        energy: 0.9
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
