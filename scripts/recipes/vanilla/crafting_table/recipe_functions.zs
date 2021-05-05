/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 4000
#no_fix_recipe_book

//Powered by TCreopargh

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

import scripts.util.lang as LangUtil;

val errorStone = <minecraft:stone>.withTag({display: {Name: LangUtil.translate("greedycraft.misc.bug_stone.name"), Lore: [LangUtil.translate("greedycraft.misc.bug_stone.tooltip.1"), LangUtil.translate("greedycraft.misc.bug_stone.tooltip.2")]}}) as IItemStack;

recipes.addShapeless("nametag_to_human_spawn_egg", <minecraft:spawn_egg>, [<minecraft:name_tag>.marked("nametag"), <minecraft:egg>], 
function(out, ins, cInfo) {
    var name = ins.nametag.displayName;
    return <minecraft:spawn_egg>.withTag({display: {Name: "§e" + name + LangUtil.translate("greedycraft.misc.spawn_egg")}, EntityTag: {Username: name, id: "headcrumbs:human"}});
}, null);
recipes.addShapeless("head_to_human_spawn_egg", <minecraft:spawn_egg>, [<minecraft:skull:3>.marked("head"), <minecraft:egg>], 
function(out, ins, cInfo) {
    var name = "null";
    if (ins.head.tag.asString().contains("SkullOwner:")) {
        var nameData = ins.head.tag.memberGet("SkullOwner") as IData;
        if (nameData.asString().contains("Name:")) {
            nameData = nameData.memberGet("Name") as IData;
        }
        if (!isNull(nameData)) {
            name = nameData.asString();
        }
    }
    return <minecraft:spawn_egg>.withTag({display: {Name: "§e" + name + LangUtil.translate("greedycraft.misc.spawn_egg")}, EntityTag: {Username: name, id: "headcrumbs:human"}});
},null);
recipes.addShapeless("nametag_to_head", <minecraft:skull>, [<minecraft:name_tag>.marked("nametag1"), <minecraft:skull:*>], 
function(out, ins, cInfo) {
    var name = ins.nametag1.displayName;
    return <minecraft:skull:3>.withTag({display: {Name: "§e" + name + LangUtil.translate("greedycraft.misc.head")}, SkullOwner: name});
},null);

recipes.addShaped("dank_null_1", <danknull:dank_null_1>, [
    [null, <danknull:dank_null_panel_1>, null],
    [<danknull:dank_null_panel_1>, <danknull:dank_null_0>.marked("dank"), <danknull:dank_null_panel_1>],
    [null, <danknull:dank_null_panel_1>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_2", <danknull:dank_null_2>, [
    [null, <danknull:dank_null_panel_2>, null],
    [<danknull:dank_null_panel_2>, <danknull:dank_null_1>.marked("dank"), <danknull:dank_null_panel_2>],
    [null, <danknull:dank_null_panel_2>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_3", <danknull:dank_null_3>, [
    [null, <danknull:dank_null_panel_3>, null],
    [<danknull:dank_null_panel_3>, <danknull:dank_null_2>.marked("dank"), <danknull:dank_null_panel_3>],
    [null, <danknull:dank_null_panel_3>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_4", <danknull:dank_null_4>, [
    [null, <danknull:dank_null_panel_4>, null],
    [<danknull:dank_null_panel_4>, <danknull:dank_null_3>.marked("dank"), <danknull:dank_null_panel_4>],
    [null, <danknull:dank_null_panel_4>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_5", <danknull:dank_null_5>, [
    [null, <danknull:dank_null_panel_5>, null],
    [<danknull:dank_null_panel_5>, <danknull:dank_null_4>.marked("dank"), <danknull:dank_null_panel_5>],
    [null, <danknull:dank_null_panel_5>, null]],
function(out, ins, cInfo) {
    return out.withTag(ins.dank.tag);
}, null);

/*
recipes.addShaped("backpack_func_0", <simplybackpacks:commonbackpack>.withTag({inv: {Size: 18, Items: []}, filter: {Size: 16, Items: []}}), [
    [<ore:string>, null, <ore:string>],
    [<ore:leather>, <ore:ingotIron>, <ore:leather>], 
    [<ore:leather>, <ore:chest>, <ore:leather>]
], null, null);

recipes.addShaped("backpack_func_1", <simplybackpacks:uncommonbackpack>, [
    [<ore:string>, <ore:ingotSteel>, <ore:string>],
    [<tconstruct:materials:15>, <ore:blockGold>, <tconstruct:materials:15>], 
    [<tconstruct:materials:15>, <simplybackpacks:commonbackpack>.marked("backpack"), <tconstruct:materials:15>]
], function(out, ins, cInfo) {
    var stack as IItemStack = out.withTag(ins.backpack.tag);
    if(!isNull(ins.backpack.capNBT)) {
        return stack.withCapNBT(ins.backpack.capNBT);
    } else {
        return stack;
    }
}, null);

recipes.addShaped("backpack_func_2", <simplybackpacks:rarebackpack>, [
    [<thaumcraft:fabric>, <ore:ingotStainlessSteel>, <thaumcraft:fabric>],
    [<harvestcraft:hardenedleatheritem>, <ore:blockDiamond>, <harvestcraft:hardenedleatheritem>], 
    [<harvestcraft:hardenedleatheritem>, <simplybackpacks:uncommonbackpack>.marked("backpack"), <harvestcraft:hardenedleatheritem>]
], function(out, ins, cInfo) {
    var stack as IItemStack = out.withTag(ins.backpack.tag);
    if(!isNull(ins.backpack.capNBT)) {
        return stack.withCapNBT(ins.backpack.capNBT);
    } else {
        return stack;
    }
}, null);

recipes.addShaped("backpack_func_3", <simplybackpacks:epicbackpack>, [
    [<ore:stringNylon>, <ore:ingotDurasteel>, <ore:stringNylon>],
    [<ore:clothNylon>, <ore:netherStar>, <ore:clothNylon>], 
    [<ore:clothNylon>, <simplybackpacks:rarebackpack>.marked("backpack"), <ore:clothNylon>]
], function(out, ins, cInfo) {
    var stack as IItemStack = out.withTag(ins.backpack.tag);
    if(!isNull(ins.backpack.capNBT)) {
        return stack.withCapNBT(ins.backpack.capNBT);
    } else {
        return stack;
    }
}, null);
*/

recipes.addShaped("exp_transport_tool", errorStone, [[<ore:toolTiC>.marked("to"), <additions:greedycraft-experience_transporter>, <ore:toolTiC>.marked("from")]], 
function(out, ins, cInfo) {
    if (isNull(ins.from.tag.memberGet("Modifiers") as IData) || isNull(ins.to.tag.memberGet("Modifiers") as IData)) {
        return null;
    }
    var modifiersFrom = ins.from.tag.memberGet("Modifiers") as IData;
    var modifiersTo = ins.to.tag.memberGet("Modifiers") as IData;
    var toolLevel = {} as IData;
    var toolLevelOld = {} as IData;
    var level = -1 as int;
    var oldLevel = -1 as int;
    if (modifiersFrom.asString().contains("toolleveling")) {
        for i in 0 to modifiersFrom.length {
            var current as IData = modifiersFrom[i];
            if ("toolleveling" == current.memberGet("identifier")) {
                toolLevel = current;
                if(toolLevel has "level") {
                    level = toolLevel.memberGet("level") as int;
                }
                break;
            }
        }
    }
    
    if (modifiersTo.asString().contains("toolleveling")) {
        for i in 0 to modifiersTo.length {
            var current as IData = modifiersTo[i];
            if ("toolleveling" == current.memberGet("identifier")) {
                toolLevelOld = current;
                if(toolLevelOld has "level") {
                    oldLevel = toolLevelOld.memberGet("level") as int;
                }
                break;
            }
        }
    }

    var newModifier as IData = [];
    if (!isNull(newModifier) && level >= 0) {
        for i in 0 to modifiersTo.length {
            var current as IData = modifiersTo[i];
            if (isNull(current)) { 
                break;
            }
            if (current.asString().contains("toolleveling")) {
                newModifier = newModifier.update([current.update(toolLevel)] as IData);
                break;
            } else {
                if(!current.asString().contains("extratrait")) {
                    newModifier = newModifier.update([current] as IData);
                }
            }
        }
    }

    var outData as IData = ins.to.tag - "Modifiers";
    outData = outData + ({Modifiers: newModifier}) as IData;

    var modifierData as IData = [];
    var tinkerData as IData = {};
    if((outData has "TinkerData") && (outData.memberGet("TinkerData") has "Modifiers")) {
        tinkerData = outData.memberGet("TinkerData");
        tinkerData = tinkerData - "Modifiers";
        for i in 0 to outData.memberGet("TinkerData").memberGet("Modifiers").length {
            var current as IData = modifiersTo[i];
            if(!(current as string).contains("extratrait")) {
                modifierData = modifierData.update([current] as IData);
            }
        }
        tinkerData = tinkerData.update({Modifiers: modifierData} as IData);
        outData = outData - "TinkerData";
        outData = outData.update({TinkerData: tinkerData} as IData);
    }
    
    var statsTag as IData = outData.memberGet("Stats");
    var freeModifiers as int = statsTag.memberGet("FreeModifiers").asInt();
    var modifierDiff as int = level - oldLevel;
    if(modifierDiff < 0) {
        modifierDiff = 0;
    }
    statsTag = statsTag.update({"FreeModifiers": freeModifiers + modifierDiff});
    outData = outData.update({"Stats": statsTag});

    logger.logInfo("Experience Transfer Performed." + "\nFreeModifiers: " + freeModifiers + "\nStatsTag: " + statsTag as string + "\nTinkerData: " + tinkerData as string + "\nOldLevel: " + oldLevel + "\nNewLevel: " + level + "\nLevelTagOld: " + toolLevelOld as string + "\nLevelTagNew: " + toolLevel as string);

    return ins.to.withTag(outData);
}, null);

recipes.addShaped("exp_transport_armor", errorStone, [[<ore:armorTiC>.marked("to"), <additions:greedycraft-experience_transporter>, <ore:armorTiC>.marked("from")]], 
function(out, ins, cInfo) {
    if (isNull(ins.from.tag.memberGet("Modifiers") as IData) || isNull(ins.to.tag.memberGet("Modifiers") as IData)) {
        return null;
    }
    var modifiersFrom = ins.from.tag.memberGet("Modifiers") as IData;
    var modifiersTo = ins.to.tag.memberGet("Modifiers") as IData;
    var toolLevel = {} as IData;
    var toolLevelOld = {} as IData;
    var level = -1 as int;
    var oldLevel = -1 as int;
    if (modifiersFrom.asString().contains("leveling_armor")) {
        for i in 0 to modifiersFrom.length {
            var current as IData = modifiersFrom[i];
            if ("leveling_armor" == current.memberGet("identifier")) {
                toolLevel = current;
                if(toolLevel has "level") {
                    level = toolLevel.memberGet("level") as int;
                }
                break;
            }
        }
    }
    
    if (modifiersTo.asString().contains("leveling_armor")) {
        for i in 0 to modifiersTo.length {
            var current as IData = modifiersTo[i];
            if ("leveling_armor" == current.memberGet("identifier")) {
                toolLevelOld = current;
                if(toolLevelOld has "level") {
                    oldLevel = toolLevelOld.memberGet("level") as int;
                }
                break;
            }
        }
    }

    var newModifier as IData = [];
    if (!isNull(newModifier) && level >= 0) {
        for i in 0 to modifiersTo.length {
            var current as IData = modifiersTo[i];
            if (isNull(current)) { 
                break;
            }
            if (current.asString().contains("leveling_armor")) {
                newModifier = newModifier.update([current.update(toolLevel)] as IData);
                break;
            } else {
                if(!current.asString().contains("extratrait")) {
                    newModifier = newModifier.update([current] as IData);
                }
            }
        }
    }
    var outData as IData = ins.to.tag - "Modifiers";
    outData = outData + ({Modifiers: newModifier}) as IData;
    
    var modifierData as IData = [];
    var tinkerData as IData = {};
    if((outData has "TinkerData") && (outData.memberGet("TinkerData") has "Modifiers")) {
        tinkerData = outData.memberGet("TinkerData");
        tinkerData = tinkerData - "Modifiers";
        for i in 0 to outData.memberGet("TinkerData").memberGet("Modifiers").length {
            var current as IData = modifiersTo[i];
            if(!(current as string).contains("extratrait")) {
                modifierData = modifierData.update([current] as IData);
            }
        }
        tinkerData = tinkerData.update({Modifiers: modifierData} as IData);
        outData = outData - "TinkerData";
        outData = outData.update({TinkerData: tinkerData} as IData);
    }
    
    var statsTag as IData = outData.memberGet("Stats");
    var freeModifiers as int = statsTag.memberGet("FreeModifiers").asInt();
    var modifierDiff as int = level - oldLevel;
    if(modifierDiff < 0) {
        modifierDiff = 0;
    }
    statsTag = statsTag.update({"FreeModifiers": freeModifiers + modifierDiff});
    outData = outData.update({"Stats": statsTag});

    logger.logInfo("Experience Transfer Performed." + "\nFreeModifiers: " + freeModifiers + "\nStatsTag: " + statsTag as string + "\nTinkerData: " + tinkerData as string + "\nOldLevel: " + oldLevel + "\nNewLevel: " + level + "\nLevelTagOld: " + toolLevelOld as string + "\nLevelTagNew: " + toolLevel as string);
    
    return ins.to.withTag(outData);
}, null);

recipes.addShapeless("etablet_dupe", <contenttweaker:tablet_of_enlightenment>,
    [<contenttweaker:tablet_of_enlightenment>.marked("tablet")],
    function(out, ins, cInfo) {
        return ins.tablet.updateTag({});
    }, null
);
