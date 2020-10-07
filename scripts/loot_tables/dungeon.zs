#disable_search_tree
#priority 90
// Powered by TCreopargh

import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import loottweaker.LootTweaker;

LootTweaker.getTable("extrabotany:inject/simple_dungeon").getPool("main").removeEntry("extrabotany:bottledflame");

val dungeon = LootTweaker.getTable("minecraft:chests/simple_dungeon");

dungeon.removePool("simpleDungeon");
dungeon.removePool("spectrecoil_number");
var mainPool = dungeon.getPool("main");
mainPool.removeEntry("cyclicmagic:item.cyclic_wand_build");
var dungeonPool1 = dungeon.getPool("pool1");  

dungeon.getPool("bountifulbaubles_dungeon").removeEntry("bountifulbaubles:trinketbrokenheart");
dungeonPool1.addItemEntryHelper(<additions:greedycraft-reward_ticket_common>, 15, 1, [Functions.setCount(1, 2)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-reward_ticket_rare>, 5, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-reward_ticket_epic>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-medkit_super>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-medkit_big>, 4, 1, [Functions.setCount(1, 3)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-medkit_small>, 20, 1, [Functions.setCount(1, 6)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-experience_ingot>, 18, 1, [Functions.setCount(2, 12)], []);
dungeonPool1.addItemEntryHelper(<scalinghealth:crystalshard>, 10, 1, [Functions.setCount(1, 2)], []);
dungeonPool1.addItemEntryHelper(<scalinghealth:heartdust>, 14, 1, [Functions.setCount(4, 24)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-delivery_order>, 4, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-tower_chest_key>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-sunny_doll>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-bag_of_dyes>, 6, 1, [Functions.setCount(1, 3)], []);
dungeonPool1.addItemEntryHelper(<additions:tcsponsors-sponsors_chest>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<additions:tcsponsors-sponsor_chest_fragment>, 3, 1, [Functions.setCount(1, 2)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-true_eye_of_ender>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<abyssalcraft:shadowgem>, 6, 1, [Functions.setCount(1, 1)], []);
dungeonPool1.addItemEntryHelper(<abyssalcraft:shadowshard>, 12, 1, [Functions.setCount(1, 6)], []);
dungeonPool1.addItemEntryHelper(<abyssalcraft:shadowfragment>, 18, 1, [Functions.setCount(1, 20)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-huaji>, 8, 1, [Functions.setCount(1, 2)], []);
dungeonPool1.addItemEntryHelper(<additions:greedycraft-poop>, 8, 1, [Functions.setCount(1, 2)], []);

var dungeonPool2 = dungeon.getPool("pool2");  
dungeonPool2.addItemEntryHelper(<additions:greedycraft-reward_ticket_common>, 12, 1, [Functions.setCount(1, 2)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-reward_ticket_rare>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-reward_ticket_epic>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-medkit_super>, 1, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-medkit_big>, 4, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-medkit_small>, 16, 1, [Functions.setCount(1, 6)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-experience_ingot>, 18, 1, [Functions.setCount(4, 20)], []);
dungeonPool2.addItemEntryHelper(<scalinghealth:crystalshard>, 10, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<scalinghealth:heartdust>, 14, 1, [Functions.setCount(4, 24)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-delivery_order>, 4, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-tower_chest_key>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-sunny_doll>, 2, 1, [Functions.setCount(1, 1)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-bag_of_dyes>, 6, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<additions:tcsponsors-sponsor_chest_fragment>, 2, 1, [Functions.setCount(1, 3)], []);
dungeonPool2.addItemEntryHelper(<additions:greedycraft-huaji>, 4, 1, [Functions.setCount(1, 2)], []);