/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#packmode expert
#priority 20

import mods.astralsorcery.Altar;

Altar.addConstellationAltarRecipe("philosophers_stone", <projecte:item.pe_philosophers_stone>.withTag({}), 3000, 800, [
            <astralsorcery:itemusabledust>, null, <astralsorcery:itemusabledust>,
            null, <ore:manaPearl>, null,
            <astralsorcery:itemusabledust>, null, <astralsorcery:itemusabledust>,
            <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>,
            <ore:dustBlaze>, <ore:dustBlaze>,
            <ore:dustBlaze>, <ore:dustBlaze>,
            <ore:dustBlaze>, <ore:dustBlaze>,
            <ore:dustBlaze>, <ore:dustBlaze>]);
            
Altar.addTraitAltarRecipe("arcane_crystal_ball", <additions:greedycraft-arcane_crystal_ball>, 5500, 800, [
<thaumcraft:mechanism_complex>, <draconicevolution:dragon_heart>, <thaumcraft:mechanism_complex>,
<draconicevolution:dragon_heart>, <thaumcraft:salis_mundus>, <draconicevolution:dragon_heart>,
<thaumcraft:mechanism_complex>, <draconicevolution:dragon_heart>, <thaumcraft:mechanism_complex>,
<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, 
<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
<ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>
], "astralsorcery.constellation.evorsio");

Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange");

Altar.addTraitAltarRecipe("astral_metal", <additions:astral_metal_ingot> * 2, 6000, 400, [
<ore:ingotAstralStarmetal>, <astralsorcery:itemusabledust>, <ore:ingotAstralStarmetal>,
<astralsorcery:itemusabledust>, <ore:ingotFusionMatrix>, <astralsorcery:itemusabledust>,
<ore:ingotAstralStarmetal>, <astralsorcery:itemusabledust>, <ore:ingotAstralStarmetal>,
<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
null, null, null, null, null, null, null, null, 
<ore:ingotMeteor>, <ore:ingotMeteor>, <ore:ingotMeteor>, <ore:ingotMeteor>,
<ore:fallenStar>, <ore:fallenStar>, <ore:fallenStar>, <ore:fallenStar>
], "astralsorcery.constellation.aevitas");
