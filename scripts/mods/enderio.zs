#priority 3000
#disable_search_tree

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

mods.enderio.SagMill.addRecipe([<additions:greedycraft-time_fragment>, <additions:greedycraft-time_fragment>, <additions:greedycraft-experience_ingot>], [20 as float, 20 as float, 50 as float], <ore:dungeonLootTier1> as IIngredient, "CHANCE_ONLY", 12000, [10 as float, 10 as float, 10 as float]);
mods.enderio.SagMill.addRecipe([<additions:greedycraft-time_fragment> * 2, <additions:greedycraft-time_fragment>, <additions:greedycraft-time_fragment>, <additions:greedycraft-experience_ingot> * 3], [10 as float, 30 as float, 30 as float, 50 as float], <ore:dungeonLootTier2> as IIngredient, "CHANCE_ONLY", 30000, [25 as float, 25 as float, 25 as float, 25 as float]);
mods.enderio.SagMill.addRecipe([<additions:greedycraft-time_fragment> * 6, <additions:greedycraft-time_fragment> * 4, <additions:greedycraft-time_fragment> * 3, <additions:greedycraft-experience_ingot> * 16], [30 as float, 40 as float, 50 as float, 60 as float], <ore:dungeonLootTier3> as IIngredient, "CHANCE_ONLY", 100000, [100 as float, 100 as float, 100 as float, 100 as float]);

mods.enderio.SagMill.removeRecipe(<minecraft:coal>);