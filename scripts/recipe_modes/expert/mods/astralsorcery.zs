#priority 20
#disable_search_tree
#packmode expert

mods.astralsorcery.Altar.addConstellationAltarRecipe("philosophers_stone", <projecte:item.pe_philosophers_stone>.withTag({}), 3000, 800, [
            <astralsorcery:itemusabledust>, null, <astralsorcery:itemusabledust>,
            null, <ore:manaPearl>, null,
            <astralsorcery:itemusabledust>, null, <astralsorcery:itemusabledust>,
            <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>,
            <ore:dustBlaze>, <ore:dustBlaze>,
            <ore:dustBlaze>, <ore:dustBlaze>,
            <ore:dustBlaze>, <ore:dustBlaze>,
            <ore:dustBlaze>, <ore:dustBlaze>]);
			
mods.astralsorcery.Altar.addTraitAltarRecipe("arcane_crystal_ball", <additions:greedycraft-arcane_crystal_ball>, 5500, 800, [
<thaumcraft:mechanism_complex>, <draconicevolution:dragon_heart>, <thaumcraft:mechanism_complex>,
<draconicevolution:dragon_heart>, <thaumcraft:salis_mundus>, <draconicevolution:dragon_heart>,
<thaumcraft:mechanism_complex>, <draconicevolution:dragon_heart>, <thaumcraft:mechanism_complex>,
<astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>, <astralsorcery:itemusabledust>,
<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, 
<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
<ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>, <ore:ingotAstralMetal>
], "astralsorcery.constellation.evorsio");

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/tool_exchange");

mods.astralsorcery.Altar.addTraitAltarRecipe("astral_metal", <additions:astral_metal_ingot>, 6000, 400, [
<ore:ingotAstralStarmetal>, <astralsorcery:itemusabledust>, <ore:ingotAstralStarmetal>,
<astralsorcery:itemusabledust>, <ore:ingotFusionMatrix>, <astralsorcery:itemusabledust>,
<ore:ingotAstralStarmetal>, <astralsorcery:itemusabledust>, <ore:ingotAstralStarmetal>,
<astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
null, null, null, null, null, null, null, null, 
<ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>, <ore:dustAstralStarmetal>,
<ore:netherStar>, <ore:netherStar>, <ore:netherStar>, <ore:netherStar>
], "astralsorcery.constellation.aevitas");