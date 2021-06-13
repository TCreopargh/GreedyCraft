/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 90
#no_fix_recipe_book
// Powered by TCreopargh

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

val urn = LootTweaker.getTable("pyramidplunder:urn");

var urnPool = urn.getPool("main");  
var urnPool1 = urn.getPool("treasure");
var urnPool2 = urn.getPool("rare");

urnPool1.removeEntry("minecraft:gold_nugget");

function addItem(item as IItemStack, weight as int, quality as int, minCount as int, maxCount as int) {
    val urn = LootTweaker.getTable("pyramidplunder:urn");
    var pools as LootPool[] = [
        urn.getPool("main"),
        urn.getPool("treasure"),
        urn.getPool("rare")
    ];
    for pool in pools {
        pool.addItemEntry(item, weight, quality, [Functions.setCount(minCount, maxCount)], []);
    }
}

addItem(<additions:greedycraft-reward_ticket_common>, 18, 1, 1, 2);
addItem(<additions:greedycraft-reward_ticket_rare>, 5, 1, 1, 1);
addItem(<additions:greedycraft-reward_ticket_epic>, 1, 1, 1, 1);
addItem(<additions:greedycraft-medkit_super>, 1, 1, 1, 1);
addItem(<additions:greedycraft-medkit_big>, 4, 1, 1, 3);
addItem(<additions:greedycraft-medkit_small>, 20, 1, 1, 6);
addItem(<additions:greedycraft-experience_ingot>, 18, 1, 2, 12);
addItem(<scalinghealth:crystalshard>, 1, 1, 1, 2);
addItem(<scalinghealth:heartdust>, 4, 1, 4, 24);
addItem(<additions:greedycraft-delivery_order>, 8, 1, 1, 1);
addItem(<additions:greedycraft-tower_chest_key>, 10, 1, 1, 1);
addItem(<additions:tcsponsors-sponsor_chest_fragment>, 5, 1, 1, 3);
addItem(<additions:greedycraft-huaji>, 8, 1, 1, 2);
addItem(<bountifulbaubles:potionrecall>, 32, 1, 2, 5);
addItem(<minecraft:gold_nugget>, 20, 1, 5, 12);
addItem(<minecraft:rotten_flesh>, 50, 1, 2, 14);
addItem(<minecraft:bone>, 40, 1, 2, 14);
addItem(<minecraft:web>, 30, 1, 3, 7);
addItem(<minecraft:paper>, 10, 1, 2, 15);
addItem(<thermalfoundation:material:128>, 10, 1, 2, 12);
addItem(<thermalfoundation:material:129>, 10, 1, 2, 12);
addItem(<thermalfoundation:material:163>, 18, 1, 2, 10);
addItem(<thermalfoundation:material:134>, 6, 1, 2, 6);
addItem(<thermalfoundation:material:199>, 8, 1, 2, 8);
addItem(<additions:greedycraft-food_bag>, 2, 1, 1, 1);
addItem(<additions:greedycraft-furniture_crate>, 2, 1, 1, 1);
addItem(<sakura:sakura_diamond>, 2, 1, 3, 8);
addItem(<inventorypets:meta_pet>, 2, 1, 1, 1);
addItem(<additions:greedycraft-purifying_dust>, 3, 1, 10, 40);
addItem(<additions:perfectly_generic_item>, 2, 1, 1, 1);
