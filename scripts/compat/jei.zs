/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 500
#no_fix_recipe_book

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

JEI.removeAndHide(<appliedenergistics2:facade:*>, false);

val descriptions as string[][IIngredient] = {
    <additions:cryonium_ingot> : [game.localize("greedycraft.jei.additions.cryonium_ingot.desc.0")],
    <additions:infernium_ingot> : [game.localize("greedycraft.jei.additions.infernium_ingot.desc.0")],
    <additions:cytosinite_ingot> : [game.localize("greedycraft.jei.additions.cytosinite_ingot.desc.0")],
    <additions:aeroite_ingot> : [game.localize("greedycraft.jei.additions.aeroite_ingot.desc.0")],
    <additions:asgardium_ingot> : [game.localize("greedycraft.jei.additions.asgardium_ingot.desc.0")],
    <additions:shadowium_ingot> : [game.localize("greedycraft.jei.additions.shadowium_ingot.desc.0")],
    <additions:greedycraft-experience_ingot> : [game.localize("greedycraft.jei.additions.greedycraft_experience_ingot.desc.0")],
    <additions:titanium_ingot> : [game.localize("greedycraft.jei.additions.titanium_ingot.desc.0")],
    <additions:cosmilite_ingot> : [game.localize("greedycraft.jei.additions.cosmilite_ingot.desc.0")],
    <additions:terra_alloy_ingot> : [game.localize("greedycraft.jei.additions.terra_alloy_ingot.desc.0")],
    <additions:aqualite_ingot> : [game.localize("greedycraft.jei.additions.aqualite_ingot.desc.0")],
    <additions:crimsonite_ingot> : [game.localize("greedycraft.jei.additions.crimsonite_ingot.desc.0")],
    <additions:manganese_ingot> : [game.localize("greedycraft.jei.additions.manganese_ingot.desc.0")],
    <additions:greedycraft-cryonium_ore> : [game.localize("greedycraft.jei.additions.greedycraft_cryonium_ore.desc.0")],
    <additions:greedycraft-infernium_ore> : [game.localize("greedycraft.jei.additions.greedycraft_infernium_ore.desc.0")],
    <additions:greedycraft-cytosinite_ore> : [game.localize("greedycraft.jei.additions.greedycraft_cytosinite_ore.desc.0")],
    <additions:greedycraft-aeroite_ore> : [game.localize("greedycraft.jei.additions.greedycraft_aeroite_ore.desc.0")],
    <additions:greedycraft-asgardium_ore> : [game.localize("greedycraft.jei.additions.greedycraft_asgardium_ore.desc.0")],
    <additions:greedycraft-shadowium_ore> : [game.localize("greedycraft.jei.additions.greedycraft_shadowium_ore.desc.0")],
    <additions:greedycraft-experience_ore> : [game.localize("greedycraft.jei.additions.greedycraft_experience_ore.desc.0")],
    <additions:greedycraft-titanium_ore> : [game.localize("greedycraft.jei.additions.greedycraft_titanium_ore.desc.0")],
    <additions:greedycraft-aqualite_ore> : [game.localize("greedycraft.jei.additions.greedycraft_aqualite_ore.desc.0")],
    <additions:greedycraft-manganese_ore> : [game.localize("greedycraft.jei.additions.greedycraft_manganese_ore.desc.0")],
    <additions:greedycraft-purifying_dust> : [game.localize("greedycraft.jei.additions.greedycraft_purifying_dust.desc.0")],
    <additions:protonium_ingot> : [game.localize("greedycraft.jei.additions.protonium_ingot.desc.0")],
    <cyclicmagic:heart_food> : [game.localize("greedycraft.jei.cyclicmagic.heart_food.desc.0")],
    <scalinghealth:heartcontainer> : [game.localize("greedycraft.jei.scalinghealth.heartcontainer.desc.0")],
    <projecte:item.pe_transmutation_tablet> : [game.localize("greedycraft.jei.projecte.item.pe_transmutation_tablet.desc.0")],
    <projectex:arcane_tablet> : [game.localize("greedycraft.jei.projectex.arcane_tablet.desc.0")],
    <additions:greedycraft-matter_block> : [game.localize("greedycraft.jei.additions.greedycraft_matter_block.desc.0")],
    <additions:greedycraft-royal_gel> : [game.localize("greedycraft.jei.additions.greedycraft_royal_gel.desc.0")],
    <defiledlands:essence_destroyer> : [game.localize("greedycraft.jei.defiledlands.essence_destroyer.desc.0")],
    <defiledlands:essence_mourner> : [game.localize("greedycraft.jei.defiledlands.essence_mourner.desc.0")],
    <nyx:meteor_ingot> : [game.localize("greedycraft.jei.nyx.meteor_ingot.desc.0")],
    <additions:netherite_scrap> : [game.localize("greedycraft.jei.additions.greedycraft_netherite_scrap.desc.0")],
    <tofucraft:nigari> : [game.localize("greedycraft.jei.tofucraft.nigari.desc.0")],
    <tofucraft:tofu_food:0> : [game.localize("greedycraft.jei.tofucraft.tofukinu.desc.0")],
    <tofucraft:tofu_food:1> : [game.localize("greedycraft.jei.tofucraft.tofumomen.desc.0")],
    <tofucraft:tofu_food:2> : [game.localize("greedycraft.jei.tofucraft.tofuishi.desc.0")],
    <tofucraft:tofu_material> : [game.localize("greedycraft.jei.tofucraft.tofumetal.desc.0")],
    <tofucraft:blocktofukinu> : [game.localize("greedycraft.jei.tofucraft.tofukinu.desc.0")],
    <tofucraft:blocktofumomen> : [game.localize("greedycraft.jei.tofucraft.tofumomen.desc.0")],
    <tofucraft:blocktofuishi> : [game.localize("greedycraft.jei.tofucraft.tofuishi.desc.0")],
    <tofucraft:blocktofumetal> : [game.localize("greedycraft.jei.tofucraft.tofumetal.desc.0")],
    <botanicadds:gaiasteel_ingot> : [game.localize("greedycraft.jei.botanicadds.gaiasteel_ingot.desc.0")],
    <botanicadds:gaia_plate> : [game.localize("greedycraft.jei.botanicadds.gaia_plate.desc.0")]
};

val hides as IIngredient[] = [
    <additions:greedycraft-ocd_certificate>
] as IIngredient[];

for ingredient in hides {
    for item in ingredient.items {
        JEI.hide(item);
    }
}

for ingredient in descriptions {
    var description = descriptions[ingredient] as string[];
    JEI.addDescription(ingredient, description);
}
