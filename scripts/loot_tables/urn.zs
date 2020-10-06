#disable_search_tree
#priority 90
// Powered by TCreopargh

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

val urn = LootTweaker.getTable("pyramidplunder:urn");

var urnPool = urn.getPool("main");  
urnPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_common>, 15, 1, [Functions.setCount(1, 2)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_rare>, 5, 1, [Functions.setCount(1, 1)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-reward_ticket_epic>, 1, 1, [Functions.setCount(1, 1)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-medkit_super>, 1, 1, [Functions.setCount(1, 1)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-medkit_big>, 4, 1, [Functions.setCount(1, 3)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-medkit_small>, 20, 1, [Functions.setCount(1, 6)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-experience_ingot>, 18, 1, [Functions.setCount(2, 12)], []);
urnPool.addItemEntryHelper(<scalinghealth:crystalshard>, 10, 1, [Functions.setCount(1, 2)], []);
urnPool.addItemEntryHelper(<scalinghealth:heartdust>, 14, 1, [Functions.setCount(4, 24)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-delivery_order>, 40, 1, [Functions.setCount(1, 1)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-tower_chest_key>, 10, 1, [Functions.setCount(1, 1)], []);
urnPool.addItemEntryHelper(<additions:tcsponsors-sponsor_chest_fragment>, 5, 1, [Functions.setCount(1, 3)], []);
urnPool.addItemEntryHelper(<additions:greedycraft-huaji>, 8, 1, [Functions.setCount(1, 2)], []);
