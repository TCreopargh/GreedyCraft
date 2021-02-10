/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 30
#no_fix_recipe_book

import crafttweaker.oredict.IOreDictEntry;

import mods.modularmachinery.RecipeBuilder;

val regName = "organic_producer";
val speed = 20;

var recipeID = 0;

val crops as IOreDictEntry[] = [
    <ore:cropWheat>,
    <ore:cropPotato>,
    <ore:cropCarrot>,
    <ore:cropNetherWart>,
    <ore:cropBeetroot>,
    <ore:cropMelon>,
    <ore:cropPumpkin>,
    <ore:cropBeet>,
    <ore:cropApple>,
    <ore:cropRice>,
    <ore:cropLeek>,
    <ore:cropChilipepper>,
    <ore:cropLemon>,
    <ore:cropSoybean>,
    <ore:cropAlmond>,
    <ore:cropCherry>,
    <ore:cropWalnut>,
    <ore:cropChestnut>,
    <ore:cropPlum>,
    <ore:cropDate>,
    <ore:cropPapaya>,
    <ore:cropPeach>,
    <ore:cropPersimmon>,
    <ore:cropPear>,
    <ore:cropOlive>,
    <ore:cropIronberry>,
    <ore:cropWildberry>,
    <ore:cropGrape>,
    <ore:cropTomato>,
    <ore:cropBean>,
    <ore:cropLettuce>,
    <ore:cropSunflower>,
    <ore:cropChorusfruit>,
    <ore:cropCrabapple>,
    <ore:cropOrange>,
    <ore:cropKumquat>,
    <ore:cropLime>,
    <ore:cropWildCherry>,
    <ore:cropSourCherry>,
    <ore:cropBlackCherry>,
    <ore:cropBlackthorn>,
    <ore:cropCherryPlum>,
    <ore:cropApricot>,
    <ore:cropGrapefruit>,
    <ore:cropSatsuma>,
    <ore:cropBuddhaHand>,
    <ore:cropCitron>,
    <ore:cropFingerLime>,
    <ore:cropKeyLime>,
    <ore:cropManderin>,
    <ore:cropNectarine>,
    <ore:cropPomelo>,
    <ore:cropTangerine>,
    <ore:cropSandPear>,
    <ore:cropHazelnut>,
    <ore:cropButternut>,
    <ore:cropBeechnut>,
    <ore:cropPecan>,
    <ore:cropBanana>,
    <ore:cropRedBanana>,
    <ore:cropPlantain>,
    <ore:cropBrazilNut>,
    <ore:cropFig>,
    <ore:cropAcorn>,
    <ore:cropElderberry>,
    <ore:cropGingkoNut>,
    <ore:cropCoffee>,
    <ore:cropOsangeOrange>,
    <ore:cropClove>,
    <ore:cropPapayimar>,
    <ore:cropBlackcurrant>,
    <ore:cropRedcurrant>,
    <ore:cropBlackberry>,
    <ore:cropRaspberry>,
    <ore:cropBlueberry>,
    <ore:cropCranberry>,
    <ore:cropJuniper>,
    <ore:cropGooseberry>,
    <ore:cropGoldenRaspberry>,
    <ore:cropGoldenraspberry>,
    <ore:cropCoconut>,
    <ore:cropCashew>,
    <ore:cropAvocado>,
    <ore:cropNutmeg>,
    <ore:cropAllspice>,
    <ore:cropChilli>,
    <ore:cropStaranise>,
    <ore:cropStarAnise>,
    <ore:cropMango>,
    <ore:cropStarfruit>,
    <ore:cropCandlenut>,
    <ore:cropCandleberry>,
    <ore:cropCandle>,
    <ore:cropHops>,
    <ore:cropSeaweed>,
    <ore:cropBambooshoot>,
    <ore:cropStraw>,
    <ore:cropMaplesyrup>,
    <ore:cropRadish>,
    <ore:cropCabbage>,
    <ore:cropEggplant>,
    <ore:cropOnion>,
    <ore:cropBuckwheat>,
    <ore:cropGreengrape>,
    <ore:cropVanillabean>,
    <ore:cropPeppercorn>,
    <ore:cropTea>,
    <ore:cropBarley>,
    <ore:cropCotton>,
    <ore:cropMaloberry>,
    <ore:cropBlightberry>,
    <ore:cropDuskberry>,
    <ore:cropSkyberry>,
    <ore:cropStingberry>,
    <ore:cropVine>,
    <ore:cropCorn>,
    <ore:cropCucumber>,
    <ore:cropStrawberry>,
    <ore:cropAsparagus>,
    <ore:cropBroccoli>,
    <ore:cropCauliflower>,
    <ore:cropCelery>,
    <ore:cropGarlic>,
    <ore:cropGinger>,
    <ore:cropOats>,
    <ore:cropParsnip>,
    <ore:cropPeanut>,
    <ore:cropPineapple>,
    <ore:cropRutabaga>,
    <ore:cropRye>,
    <ore:cropScallion>,
    <ore:cropSpiceleaf>,
    <ore:cropSweetpotato>,
    <ore:cropTurnip>,
    <ore:cropWhitemushroom>,
    <ore:cropArtichoke>,
    <ore:cropBellpepper>,
    <ore:cropBrusselsprout>,
    <ore:cropCactusfruit>,
    <ore:cropCantaloupe>,
    <ore:cropKiwi>,
    <ore:cropMustard>,
    <ore:cropOkra>,
    <ore:cropPeas>,
    <ore:cropRhubarb>,
    <ore:cropWintersquash>,
    <ore:cropZucchini>,
    <ore:cropSpinach>,
    <ore:cropCurryleaf>,
    <ore:cropSesame>,
    <ore:cropWaterchestnut>,
    <ore:cropKale>,
    <ore:cropAgave>,
    <ore:cropAmaranth>,
    <ore:cropArrowroot>,
    <ore:cropCassava>,
    <ore:cropChickpea>,
    <ore:cropFlax>,
    <ore:cropHuckleberry>,
    <ore:cropJicama>,
    <ore:cropJute>,
    <ore:cropKenaf>,
    <ore:cropKohlrabi>,
    <ore:cropLentil>,
    <ore:cropMillet>,
    <ore:cropMulberry>,
    <ore:cropQuinoa>,
    <ore:cropSisal>,
    <ore:cropTaro>,
    <ore:cropTomatillo>,
    <ore:cropJuniperberry>,
    <ore:cropCinnamon>,
    <ore:cropDragonfruit>,
    <ore:cropPomegranate>,
    <ore:cropDurian>,
    <ore:cropPistachio>,
    <ore:cropEdibleroot>,
    <ore:cropCanola>,
    <ore:cropCactus>,
    <ore:cropMushroomRed>,
    <ore:cropMushroomBrown>,
    <ore:cropBlueberryEnchanted>,
    <ore:cropEnokimushroom>,
    <ore:cropWheat>,
    <ore:cropPotato>,
    <ore:cropCarrot>,
    <ore:cropNetherWart>,
    <ore:cropBeetroot>,
    <ore:cropMelon>,
    <ore:cropPumpkin>,
    <ore:cropBeet>,
    <ore:cropApple>,
    <ore:cropRice>,
    <ore:cropLeek>,
    <ore:cropChilipepper>,
    <ore:cropLemon>,
    <ore:cropSoybean>,
    <ore:cropAlmond>,
    <ore:cropCherry>,
    <ore:cropWalnut>,
    <ore:cropChestnut>,
    <ore:cropPlum>,
    <ore:cropDate>,
    <ore:cropPapaya>,
    <ore:cropPeach>,
    <ore:cropPersimmon>,
    <ore:cropPear>,
    <ore:cropOlive>,
    <ore:cropIronberry>,
    <ore:cropWildberry>,
    <ore:cropGrape>,
    <ore:cropTomato>,
    <ore:cropBean>,
    <ore:cropLettuce>,
    <ore:cropSunflower>,
    <ore:cropChorusfruit>,
    <ore:cropCrabapple>,
    <ore:cropOrange>,
    <ore:cropKumquat>,
    <ore:cropLime>,
    <ore:cropWildCherry>,
    <ore:cropSourCherry>,
    <ore:cropBlackCherry>,
    <ore:cropBlackthorn>,
    <ore:cropCherryPlum>,
    <ore:cropApricot>,
    <ore:cropGrapefruit>,
    <ore:cropSatsuma>,
    <ore:cropBuddhaHand>,
    <ore:cropCitron>,
    <ore:cropFingerLime>,
    <ore:cropKeyLime>,
    <ore:cropManderin>,
    <ore:cropNectarine>,
    <ore:cropPomelo>,
    <ore:cropTangerine>,
    <ore:cropSandPear>,
    <ore:cropHazelnut>,
    <ore:cropButternut>,
    <ore:cropBeechnut>,
    <ore:cropPecan>,
    <ore:cropBanana>,
    <ore:cropRedBanana>,
    <ore:cropPlantain>,
    <ore:cropBrazilNut>,
    <ore:cropFig>,
    <ore:cropAcorn>,
    <ore:cropElderberry>,
    <ore:cropGingkoNut>,
    <ore:cropCoffee>,
    <ore:cropOsangeOrange>,
    <ore:cropClove>,
    <ore:cropPapayimar>,
    <ore:cropBlackcurrant>,
    <ore:cropRedcurrant>,
    <ore:cropBlackberry>,
    <ore:cropRaspberry>,
    <ore:cropBlueberry>,
    <ore:cropCranberry>,
    <ore:cropJuniper>,
    <ore:cropGooseberry>,
    <ore:cropGoldenRaspberry>,
    <ore:cropGoldenraspberry>,
    <ore:cropCoconut>,
    <ore:cropCashew>,
    <ore:cropAvocado>,
    <ore:cropNutmeg>,
    <ore:cropAllspice>,
    <ore:cropChilli>,
    <ore:cropStaranise>,
    <ore:cropStarAnise>,
    <ore:cropMango>,
    <ore:cropStarfruit>,
    <ore:cropCandlenut>,
    <ore:cropCandleberry>,
    <ore:cropCandle>,
    <ore:cropHops>,
    <ore:cropSeaweed>,
    <ore:cropBambooshoot>,
    <ore:cropStraw>,
    <ore:cropMaplesyrup>,
    <ore:cropRadish>,
    <ore:cropCabbage>,
    <ore:cropEggplant>,
    <ore:cropOnion>,
    <ore:cropBuckwheat>,
    <ore:cropGreengrape>,
    <ore:cropVanillabean>,
    <ore:cropPeppercorn>,
    <ore:cropTea>,
    <ore:cropBarley>,
    <ore:cropCotton>,
    <ore:cropMaloberry>,
    <ore:cropBlightberry>,
    <ore:cropDuskberry>,
    <ore:cropSkyberry>,
    <ore:cropStingberry>,
    <ore:cropVine>,
    <ore:cropCorn>,
    <ore:cropCucumber>,
    <ore:cropStrawberry>,
    <ore:cropAsparagus>,
    <ore:cropBroccoli>,
    <ore:cropCauliflower>,
    <ore:cropCelery>,
    <ore:cropGarlic>,
    <ore:cropGinger>,
    <ore:cropOats>,
    <ore:cropParsnip>,
    <ore:cropPeanut>,
    <ore:cropPineapple>,
    <ore:cropRutabaga>,
    <ore:cropRye>,
    <ore:cropScallion>,
    <ore:cropSpiceleaf>,
    <ore:cropSweetpotato>,
    <ore:cropTurnip>,
    <ore:cropWhitemushroom>,
    <ore:cropArtichoke>,
    <ore:cropBellpepper>,
    <ore:cropBrusselsprout>,
    <ore:cropCactusfruit>,
    <ore:cropCantaloupe>,
    <ore:cropKiwi>,
    <ore:cropMustard>,
    <ore:cropOkra>,
    <ore:cropPeas>,
    <ore:cropRhubarb>,
    <ore:cropWintersquash>,
    <ore:cropZucchini>,
    <ore:cropSpinach>,
    <ore:cropCurryleaf>,
    <ore:cropSesame>,
    <ore:cropWaterchestnut>,
    <ore:cropKale>,
    <ore:cropAgave>,
    <ore:cropAmaranth>,
    <ore:cropArrowroot>,
    <ore:cropCassava>,
    <ore:cropChickpea>,
    <ore:cropFlax>,
    <ore:cropHuckleberry>,
    <ore:cropJicama>,
    <ore:cropJute>,
    <ore:cropKenaf>,
    <ore:cropKohlrabi>,
    <ore:cropLentil>,
    <ore:cropMillet>,
    <ore:cropMulberry>,
    <ore:cropQuinoa>,
    <ore:cropSisal>,
    <ore:cropTaro>,
    <ore:cropTomatillo>,
    <ore:cropJuniperberry>,
    <ore:cropCinnamon>,
    <ore:cropDragonfruit>,
    <ore:cropPomegranate>,
    <ore:cropDurian>,
    <ore:cropPistachio>,
    <ore:cropEdibleroot>,
    <ore:cropCanola>,
    <ore:cropCactus>,
    <ore:cropMushroomRed>,
    <ore:cropMushroomBrown>,
    <ore:cropBlueberryEnchanted>,
    <ore:cropEnokimushroom>
];

val seeds as IOreDictEntry[] = [
    <ore:seedBeetroot>,
    <ore:seedMelon>,
    <ore:seedPumpkin>,
    <ore:seedWheat>,
    <ore:seedBeet>,
    <ore:seedRice>,
    <ore:seedBarley>,
    <ore:seedCorn>,
    <ore:seedRye>,
    <ore:seedRoasted>,
    <ore:seedBuckwheat>,
    <ore:seedOnion>,
    <ore:seedRadish>,
    <ore:seedCabbage>,
    <ore:seedEggplant>,
    <ore:seedTomato>,
    <ore:seedCotton>,
    <ore:seedCucumber>,
    <ore:seedLettuce>,
    <ore:seedStrawberry>,
    <ore:seedCandleberry>,
    <ore:seedAsparagus>,
    <ore:seedBean>,
    <ore:seedBroccoli>,
    <ore:seedCauliflower>,
    <ore:seedCelery>,
    <ore:seedCranberry>,
    <ore:seedGarlic>,
    <ore:seedGinger>,
    <ore:seedLeek>,
    <ore:seedOats>,
    <ore:seedParsnip>,
    <ore:seedPeanut>,
    <ore:seedPineapple>,
    <ore:seedRutabaga>,
    <ore:seedScallion>,
    <ore:seedSoybean>,
    <ore:seedSpiceleaf>,
    <ore:seedSweetpotato>,
    <ore:seedTea>,
    <ore:seedTurnip>,
    <ore:seedWhitemushroom>,
    <ore:seedArtichoke>,
    <ore:seedBellpepper>,
    <ore:seedBlackberry>,
    <ore:seedBlueberry>,
    <ore:seedBrusselsprout>,
    <ore:seedCactusfruit>,
    <ore:seedCantaloupe>,
    <ore:seedChilipepper>,
    <ore:seedCoffee>,
    <ore:seedGrape>,
    <ore:seedKiwi>,
    <ore:seedMustard>,
    <ore:seedOkra>,
    <ore:seedPeas>,
    <ore:seedRaspberry>,
    <ore:seedRhubarb>,
    <ore:seedSeaweed>,
    <ore:seedWintersquash>,
    <ore:seedZucchini>,
    <ore:seedBambooshoot>,
    <ore:seedSpinach>,
    <ore:seedCurryleaf>,
    <ore:seedSesameseed>,
    <ore:seedGigapickle>,
    <ore:seedKale>,
    <ore:seedWaterchestnut>,
    <ore:seedAgave>,
    <ore:seedAmaranth>,
    <ore:seedArrowroot>,
    <ore:seedCassava>,
    <ore:seedChickpea>,
    <ore:seedElderberry>,
    <ore:seedFlax>,
    <ore:seedGreengrape>,
    <ore:seedHuckleberry>,
    <ore:seedJicama>,
    <ore:seedJute>,
    <ore:seedKenaf>,
    <ore:seedKohlrabi>,
    <ore:seedLentil>,
    <ore:seedMillet>,
    <ore:seedMulberry>,
    <ore:seedQuinoa>,
    <ore:seedSisal>,
    <ore:seedTaro>,
    <ore:seedTomatillo>,
    <ore:seedJuniperberry>,
    <ore:seedHops>,
    <ore:seedCanola>,
    <ore:seedBeetroot>,
    <ore:seedMelon>,
    <ore:seedPumpkin>,
    <ore:seedWheat>,
    <ore:seedBeet>,
    <ore:seedRice>,
    <ore:seedBarley>,
    <ore:seedCorn>,
    <ore:seedRye>,
    <ore:seedRoasted>,
    <ore:seedBuckwheat>,
    <ore:seedOnion>,
    <ore:seedRadish>,
    <ore:seedCabbage>,
    <ore:seedEggplant>,
    <ore:seedTomato>,
    <ore:seedCotton>,
    <ore:seedCucumber>,
    <ore:seedLettuce>,
    <ore:seedStrawberry>,
    <ore:seedCandleberry>,
    <ore:seedAsparagus>,
    <ore:seedBean>,
    <ore:seedBroccoli>,
    <ore:seedCauliflower>,
    <ore:seedCelery>,
    <ore:seedCranberry>,
    <ore:seedGarlic>,
    <ore:seedGinger>,
    <ore:seedLeek>,
    <ore:seedOats>,
    <ore:seedParsnip>,
    <ore:seedPeanut>,
    <ore:seedPineapple>,
    <ore:seedRutabaga>,
    <ore:seedScallion>,
    <ore:seedSoybean>,
    <ore:seedSpiceleaf>,
    <ore:seedSweetpotato>,
    <ore:seedTea>,
    <ore:seedTurnip>,
    <ore:seedWhitemushroom>,
    <ore:seedArtichoke>,
    <ore:seedBellpepper>,
    <ore:seedBlackberry>,
    <ore:seedBlueberry>,
    <ore:seedBrusselsprout>,
    <ore:seedCactusfruit>,
    <ore:seedCantaloupe>,
    <ore:seedChilipepper>,
    <ore:seedCoffee>,
    <ore:seedGrape>,
    <ore:seedKiwi>,
    <ore:seedMustard>,
    <ore:seedOkra>,
    <ore:seedPeas>,
    <ore:seedRaspberry>,
    <ore:seedRhubarb>,
    <ore:seedSeaweed>,
    <ore:seedWintersquash>,
    <ore:seedZucchini>,
    <ore:seedBambooshoot>,
    <ore:seedSpinach>,
    <ore:seedCurryleaf>,
    <ore:seedSesameseed>,
    <ore:seedGigapickle>,
    <ore:seedKale>,
    <ore:seedWaterchestnut>,
    <ore:seedAgave>,
    <ore:seedAmaranth>,
    <ore:seedArrowroot>,
    <ore:seedCassava>,
    <ore:seedChickpea>,
    <ore:seedElderberry>,
    <ore:seedFlax>,
    <ore:seedGreengrape>,
    <ore:seedHuckleberry>,
    <ore:seedJicama>,
    <ore:seedJute>,
    <ore:seedKenaf>,
    <ore:seedKohlrabi>,
    <ore:seedLentil>,
    <ore:seedMillet>,
    <ore:seedMulberry>,
    <ore:seedQuinoa>,
    <ore:seedSisal>,
    <ore:seedTaro>,
    <ore:seedTomatillo>,
    <ore:seedJuniperberry>,
    <ore:seedHops>,
    <ore:seedCanola>
];

for crop in crops {
    for item in crop.items {
        RecipeBuilder.newBuilder(regName + "_crop_" + item.name + "_" + recipeID, regName, speed, 0)
        .addItemInput(item)
        .addEnergyPerTickInput(40)
        .addFluidOutput(<liquid:organic_fluid> * 100)
        .addFluidInput(<liquid:water> * 100)
        .build();
        recipeID += 1;
    }
}

for seed in seeds {
    for item in seed.items {
        RecipeBuilder.newBuilder(regName + "_seed_" + item.name + "_" + recipeID, regName, speed, 0)
        .addItemInput(item)
        .addEnergyPerTickInput(30)
        .addFluidOutput(<liquid:organic_fluid> * 60)
        .addFluidInput(<liquid:water> * 60)
        .build();
        recipeID += 1;
    }
}
RecipeBuilder.newBuilder(regName + "_seed_" + "t1", regName, speed, 0)
    .addItemInput(<ore:seedsTier1>)
    .addEnergyPerTickInput(20)
    .addFluidOutput(<liquid:organic_fluid> * 100)
    .addFluidInput(<liquid:water> * 100)
    .build();
RecipeBuilder.newBuilder(regName + "_seed_" + "t2", regName, speed, 0)
    .addItemInput(<ore:seedsTier2>)
    .addEnergyPerTickInput(40)
    .addFluidOutput(<liquid:organic_fluid> * 200)
    .addFluidInput(<liquid:water> * 200)
    .build();
RecipeBuilder.newBuilder(regName + "_seed_" + "t3", regName, speed, 0)
    .addItemInput(<ore:seedsTier3>)
    .addEnergyPerTickInput(60)
    .addFluidOutput(<liquid:organic_fluid> * 300)
    .addFluidInput(<liquid:water> * 300)
    .build();
RecipeBuilder.newBuilder(regName + "_seed_" + "t4", regName, speed, 0)
    .addItemInput(<ore:seedsTier4>)
    .addEnergyPerTickInput(80)
    .addFluidOutput(<liquid:organic_fluid> * 400)
    .addFluidInput(<liquid:water> * 400)
    .build();
RecipeBuilder.newBuilder(regName + "_seed_" + "t5", regName, speed, 0)
    .addItemInput(<ore:seedsTier5>)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:organic_fluid> * 500)
    .addFluidInput(<liquid:water> * 500)
    .build();
RecipeBuilder.newBuilder(regName + "_seed_" + "t6", regName, speed, 0)
    .addItemInput(<ore:seedsTier6>)
    .addEnergyPerTickInput(120)
    .addFluidOutput(<liquid:organic_fluid> * 800)
    .addFluidInput(<liquid:water> * 800)
    .build();
RecipeBuilder.newBuilder(regName + "_sapling", regName, speed, 0)
    .addItemInput(<ore:treeSapling>)
    .addEnergyPerTickInput(20)
    .addFluidOutput(<liquid:organic_fluid> * 20)
    .addFluidInput(<liquid:water> * 20)
    .build();
RecipeBuilder.newBuilder(regName + "_log", regName, speed, 0)
    .addItemInput(<ore:logWood>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 30)
    .addFluidInput(<liquid:water> * 30)
    .build();
RecipeBuilder.newBuilder(regName + "_leaves", regName, speed, 0)
    .addItemInput(<ore:treeLeaves>)
    .addEnergyPerTickInput(5)
    .addFluidOutput(<liquid:organic_fluid> * 5)
    .addFluidInput(<liquid:water> * 5)
    .build();
RecipeBuilder.newBuilder(regName + "_cytosinite_ingot", regName, speed * 9, 0)
    .addItemInput(<ore:ingotCytosinite>)
    .addEnergyPerTickInput(270)
    .addFluidOutput(<liquid:organic_fluid> * 3600)
    .addFluidInput(<liquid:water> * 3600)
    .build();
RecipeBuilder.newBuilder(regName + "_cytosinite_block", regName, speed * 81, 0)
    .addItemInput(<ore:blockCytosinite>)
    .addEnergyPerTickInput(270)
    .addFluidOutput(<liquid:organic_fluid> * 32400)
    .addFluidInput(<liquid:water> * 32400)
    .build();
RecipeBuilder.newBuilder(regName + "_cytosinite_nugget", regName, speed, 0)
    .addItemInput(<ore:nuggetCytosinite>)
    .addEnergyPerTickInput(270)
    .addFluidOutput(<liquid:organic_fluid> * 400)
    .addFluidInput(<liquid:water> * 400)
    .build();
RecipeBuilder.newBuilder(regName + "_fertilizer_1", regName, speed, 0)
    .addItemInput(<mysticalagriculture:fertilized_essence>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 200)
    .addFluidInput(<liquid:water> * 200)
    .build();
RecipeBuilder.newBuilder(regName + "_fertilizer_2", regName, speed, 0)
    .addItemInput(<thermalfoundation:fertilizer>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 100)
    .addFluidInput(<liquid:water> * 100)
    .build();
RecipeBuilder.newBuilder(regName + "_fertilizer_3", regName, speed, 0)
    .addItemInput(<thermalfoundation:fertilizer:1>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 400)
    .addFluidInput(<liquid:water> * 400)
    .build();
RecipeBuilder.newBuilder(regName + "_fertilizer_4", regName, speed, 0)
    .addItemInput(<thermalfoundation:fertilizer:2>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 800)
    .addFluidInput(<liquid:water> * 800)
    .build();
RecipeBuilder.newBuilder(regName + "_fertilizer_5", regName, speed, 0)
    .addItemInput(<mysticalagriculture:mystical_fertilizer>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 320)
    .addFluidInput(<liquid:water> * 320)
    .build();
RecipeBuilder.newBuilder(regName + "_plantfiber", regName, speed, 0)
    .addItemInput(<ore:plantFiber>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 100)
    .addFluidInput(<liquid:water> * 100)
    .build();
RecipeBuilder.newBuilder(regName + "_seed_oil", regName, speed, 0)
    .addFluidInput(<liquid:water> * 50)
    .addFluidInput(<liquid:seed_oil> * 100)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 50)
    .build();
RecipeBuilder.newBuilder(regName + "_resin", regName, speed, 0)
    .addFluidInput(<liquid:water> * 50)
    .addFluidInput(<liquid:resin> * 100)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 50)
    .build();
RecipeBuilder.newBuilder(regName + "_wood_dust", regName, speed, 0)
    .addFluidInput(<liquid:water> * 30)
    .addItemInput(<ore:dustWood>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 30)
    .build();
RecipeBuilder.newBuilder(regName + "_biomass_1", regName, speed, 0)
    .addFluidInput(<liquid:water> * 50)
    .addItemInput(<ore:itemBiomass>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 50)
    .build();
RecipeBuilder.newBuilder(regName + "_biomass_2", regName, speed, 0)
    .addFluidInput(<liquid:water> * 90)
    .addItemInput(<ore:itemBiomassRich>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 90)
    .build();
RecipeBuilder.newBuilder(regName + "_biomass_3", regName, speed, 0)
    .addFluidInput(<liquid:water> * 180)
    .addItemInput(<ore:itemBioblend>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 180)
    .build();
RecipeBuilder.newBuilder(regName + "_biomass_4", regName, speed, 0)
    .addFluidInput(<liquid:water> * 230)
    .addItemInput(<ore:itemBioblendRich>)
    .addEnergyPerTickInput(30)
    .addFluidOutput(<liquid:organic_fluid> * 230)
    .build();
