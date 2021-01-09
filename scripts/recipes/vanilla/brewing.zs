/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 1000

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:dye:0>], <minecraft:potion>.withTag({Potion: "potioncore:blindness"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:blindness"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_blindness"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:blindness"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_blindness"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:shulker_shell>], <minecraft:potion>.withTag({Potion: "potioncore:levitation"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:levitation"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_levitation"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:levitation"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_levitation"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:golden_apple>], <minecraft:potion>.withTag({Potion: "potioncore:health_boost"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:health_boost"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_health_boost"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:health_boost"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_health_boost"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<scalinghealth:heartdust>], <minecraft:potion>.withTag({Potion: "potioncore:love"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<additions:greedycraft-ancient_tome_page>], <minecraft:potion>.withTag({Potion: "potioncore:repair"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:repair"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_repair"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:repair"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_repair"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<cyclicmagic:glowing_chorus>], <minecraft:potion>.withTag({Potion: "potioncore:flight"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:flight"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_flight"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:clock>], <minecraft:potion>.withTag({Potion: "potioncore:extension"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:extension"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_extension"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:extension"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_extension"}));

/*
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:cactus>], <minecraft:potion>.withTag({Potion: "potioncore:recoil"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:recoil"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_recoil"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:recoil"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_recoil"}));
*/

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:ingotIron>], <minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_iron_skin"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:iron_skin"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_iron_skin"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<botania:specialflower>.withTag({type: "puredaisy"})], <minecraft:potion>.withTag({Potion: "potioncore:purity"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:purity"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_purity"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:piston>], <minecraft:potion>.withTag({Potion: "potioncore:reach"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:reach"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_reach"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:reach"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_reach"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:gemDiamond>], <minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_diamond_skin"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:diamond_skin"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_diamond_skin"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:chorus_fruit_popped>], <minecraft:potion>.withTag({Potion: "potioncore:teleport"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:teleport"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_teleport"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:teleport"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:teleport_surface"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<tconevo:part_arcane_focus>], <minecraft:potion>.withTag({Potion: "potioncore:magic_focus"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:magic_focus"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_focus"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:magic_focus"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_magic_focus"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:dirt>], <minecraft:potion>.withTag({Potion: "potioncore:step_up"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:step_up"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_step_up"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:step_up"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_step_up"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:foodSalmonraw>], <minecraft:potion>.withTag({Potion: "potioncore:drown"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:drown"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_drown"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:string>], <minecraft:potion>.withTag({Potion: "potioncore:climb"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:climb"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_climb"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:blockGlass>], <minecraft:potion>.withTag({Potion: "potioncore:vulnerable"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:vulnerable"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_vulnerable"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:vulnerable"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_vulnerable"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:tnt>], <minecraft:potion>.withTag({Potion: "potioncore:explode"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:explode"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_explode"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:explode"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_explode"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:ingotLead>], <minecraft:potion>.withTag({Potion: "potioncore:solid_core"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:solid_core"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_solid_core"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:fire_charge>], <minecraft:potion>.withTag({Potion: "potioncore:fire"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:fire"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_fire"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:ingotDraconium>], <minecraft:potion>.withTag({Potion: "potioncore:lightning"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:blockLead>], <minecraft:potion>.withTag({Potion: "potioncore:weight"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:weight"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_weight"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:weight"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_weight"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<minecraft:fireworks>], <minecraft:potion>.withTag({Potion: "potioncore:launch"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:launch"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_launch"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<additions:greedycraft-ancient_tome>], <minecraft:potion>.withTag({Potion: "potioncore:revival"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:revival"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_revival"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:revival"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_revival"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:ingotManyullyn>], <minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_magic_shield"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:magic_shield"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_magic_shield"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<ore:leather>], <minecraft:potion>.withTag({Potion: "potioncore:archery"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:archery"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_archery"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:archery"}), [<ore:dustRedstone>], <minecraft:potion>.withTag({Potion: "potioncore:long_archery"}));

brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), [<cyclicmagic:ender_tnt_1>], <minecraft:potion>.withTag({Potion: "potioncore:burst"}));
brewing.addBrew(<minecraft:potion>.withTag({Potion: "potioncore:burst"}), [<ore:dustGlowstone>], <minecraft:potion>.withTag({Potion: "potioncore:strong_burst"}));
