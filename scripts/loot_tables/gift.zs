/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 72
#no_fix_recipe_book

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;  

val giftTable = LootTweaker.newTable("loottweaker:gift_loot_table");
var giftTableMainPool = giftTable.addPool("main", 1, 1, 0, 0);
giftTableMainPool.addItemEntryHelper(<minecraft:coal>, 50, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<minecraft:coal:1>, 10, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<minecraft:diamond>, 10, 1, [Functions.setCount(3, 8)], []);
giftTableMainPool.addItemEntryHelper(<minecraft:emerald>, 5, 1, [Functions.setCount(2, 5)], []);
giftTableMainPool.addItemEntryHelper(<minecraft:iron_ingot>, 20, 1, [Functions.setCount(8, 16)], []);
giftTableMainPool.addItemEntryHelper(<minecraft:gold_ingot>, 15, 1, [Functions.setCount(5, 10)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_common>, 20, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_rare>, 10, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_epic>, 3, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_legendary>, 1, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-sunny_doll>, 5, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-catalyst_star>, 2, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-food_bag>, 12, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-furniture_crate>, 12, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-respawn_anchor>, 2, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-delivery_order>, 20, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-gift> * 2, 2, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-loli_lolipop>, 3, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-huaji>, 5, 1, [Functions.setCount(1, 3)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-bag_of_dyes>, 10, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-skill_reset_scroll>, 2, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-time_fragment>, 12, 1, [Functions.setCount(4, 24)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-plate_of_honor>, 2, 1, [Functions.setCount(1, 1)], []);
giftTableMainPool.addItemEntryHelper(<additions:greedycraft-experience_transporter>, 1, 1, [Functions.setCount(1, 1)], []);
