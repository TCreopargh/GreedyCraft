/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 30

val regName = "soymilk_producer";
val speed = 10;

mods.modularmachinery.RecipeBuilder.newBuilder(regName + "_normal", regName, speed, 20)
	.addItemInput(<ore:cropSoybean>)
	.addEnergyPerTickInput(30)
	.addFluidOutput(<liquid:soymilk> * 1000)
	.addFluidInput(<liquid:water> * 1000)
	.build();
