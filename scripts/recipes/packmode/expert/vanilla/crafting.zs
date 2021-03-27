/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 20
#no_fix_recipe_book
#packmode expert

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

val removedRecipes as IIngredient[] = [
    <minecraft:enchanting_table>,
    <draconicevolution:draconic_core>,
    <draconicevolution:crafting_injector>,
    <avaritia:resource>,
    <avaritia:resource:1>,
    <draconicevolution:energy_storage_core>,
    <thermalexpansion:machine:3>,
    <enderio:item_material>,
    <enderio:item_material:51>,
    <additions:greedycraft-blueprint>,
    <additions:greedycraft-twilight_gem>,
    <additions:greedycraft-ender_charm>,
    <actuallyadditions:block_misc:9>,
    <additions:greedycraft-twilight_shield>,
    <additions:greedycraft-blueprint_shuriken>
];

for ingredient in removedRecipes {
    recipes.remove(ingredient);
}

// Shaped

recipes.addShaped("auto_gen_-1702953212", <minecraft:enchanting_table>, [
    [null, <minecraft:book>, null],
    [<ore:blockDiamond>, <ore:ingotAstralStarmetal>, <ore:blockDiamond>],
    [<ore:blockCompressedExperience>, <ore:blockCompressedExperience>, <ore:blockCompressedExperience>]
]);
recipes.addShaped("auto_gen_719311882", <draconicevolution:draconic_core>*4, [
    [<ore:ingotDraconium>, <ore:blockGold>, <ore:ingotDraconium>],
    [<ore:blockDraconium>, <ore:blockDiamond>, <ore:blockDraconium>],
    [<ore:ingotDraconium>, <ore:blockGold>, <ore:ingotDraconium>]
]);
recipes.addShaped("auto_gen_1341025255", <draconicevolution:crafting_injector>, [
    [<draconicevolution:draconic_core>, <draconicevolution:draconic_core>, <draconicevolution:draconic_core>],
    [<ore:blockDiamond>, <ore:blockDraconium>, <ore:blockDiamond>],
    [<ore:blockSteel>, <ore:blockSteel>, <ore:blockSteel>]
]);
recipes.addShaped("auto_gen_-33898533", <avaritia:resource>, [
    [<ore:blockDiamond>, null, <ore:blockDiamond>],
    [null, <ore:netherStar>, null],
    [<ore:blockDiamond>, null, <ore:blockDiamond>]
]);
recipes.addShaped("auto_gen_-170215974", <avaritia:resource:1>, [
    [null, null, null],
    [<avaritia:resource>, <ore:netherStar>, <avaritia:resource>],
    [<avaritia:resource>, <ore:netherStar>, <avaritia:resource>]
]);
recipes.addShaped("auto_gen_1277827604", <draconicevolution:energy_storage_core>, [
    [<ore:ingotWyvernMetal>, <ore:gearWyvernMetal>, <ore:ingotWyvernMetal>],
    [<draconicevolution:draconic_energy_core>, <draconicevolution:awakened_core>, <draconicevolution:draconic_energy_core>],
    [<ore:ingotWyvernMetal>, <ore:gearWyvernMetal>, <ore:ingotWyvernMetal>]
]);
recipes.addShaped("auto_gen_585799077", <thermalexpansion:machine:3>, [
    [<ore:ingotInvar>, <ore:gearLumium>, <ore:ingotInvar>],
    [<ore:ingotInvar>, <thermalexpansion:frame>, <ore:ingotInvar>],
    [<ore:ingotInvar>, <thermalfoundation:material:515>, <ore:ingotInvar>]
]);
recipes.addShaped("auto_gen_-210767557", <enderio:item_material>, [
    [<ore:ingotSteel>, <ore:barsIron>, <ore:ingotSteel>],
    [<ore:barsIron>, <ore:dustBedrock>, <ore:barsIron>],
    [<ore:ingotSteel>, <ore:barsIron>, <ore:ingotSteel>]
]);
recipes.addShaped("auto_gen_1885727681", <enderio:item_material:51>*3, [
    [<enderio:item_material:50>, <ore:dustNetherQuartz>, <ore:dustLapis>],
    [<ore:dustBedrock>, <ore:dustSteel>, <ore:dustBedrock>],
    [<enderio:item_material:49>, <ore:dustNetherQuartz>, <enderio:item_material:48>]
]);
recipes.addShaped("auto_gen_-1971544957", <additions:greedycraft-blueprint>, [
    [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>],
    [<ore:dustLapis>, <ore:paper>, <ore:dustLapis>],
    [<ore:dustLapis>, <ore:dustLapis>, <ore:dustLapis>]
]);
recipes.addShaped("auto_gen_-226107769", <additions:greedycraft-twilight_gem>, [
    [<ore:dustDiamond>, <ore:gemAquamarine>, <ore:dustDiamond>],
    [<thaumcraft:salis_mundus>, <ore:manaDiamond>, <thaumcraft:salis_mundus>],
    [<ore:dustDiamond>, <ore:gemAquamarine>, <ore:dustDiamond>]
]);
recipes.addShaped("auto_gen_-1501549292", <additions:greedycraft-ender_charm>, [
    [<ore:dustEnderium>, <ore:ingotGaia>, <ore:dustEnderium>],
    [<ore:netherStar>, <abyssalcraft:dreadkey>.transformReplace(<abyssalcraft:dreadkey>), <ore:netherStar>],
    [<ore:ingotNetherite>, <ore:blockDurasteel>, <ore:ingotNetherite>]
]);
recipes.addShaped("auto_gen_-47119480", <actuallyadditions:block_misc:9>, [
    [<ore:ingotSteel>, <ore:dustNetherQuartz>, <ore:ingotSteel>],
    [<ore:dustNetherQuartz>, <ore:gemQuartzBlack>, <ore:dustNetherQuartz>],
    [<ore:ingotSteel>, <ore:dustNetherQuartz>, <ore:ingotSteel>]
]);
recipes.addShaped("auto_gen_-1473452503", <additions:greedycraft-twilight_shield>, [
    [<ore:ingotSteeleaf>, <twilightforest:hydra_chop>, <ore:ingotIronwood>],
    [<ore:ingotFiery>, <twilightforest:lamp_of_cinders>.transformReplace(<twilightforest:lamp_of_cinders>), <twilightforest:naga_scale>],
    [<twilightforest:meef_stroganoff>, <ore:carminite>, <twilightforest:alpha_fur>]
]);

// Shapeless

recipes.addShapeless("auto_gen_-1155325776", <additions:greedycraft-blueprint_shuriken>, [<additions:greedycraft-blueprint>, <ore:alloyUltimate>]);
