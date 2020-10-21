/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 * Powered by TCreopargh.
 * All rights reserved.
 */


#priority 4000

//Powered by TCreopargh

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;

val errorStone = <minecraft:stone>.withTag({display: {Name:"§c错误之石", Lore:["§e如果你得到了这个，证明你发现了一个BUG！", "如果是这种情况，请将其汇报给作者！"]}}) as IItemStack;

recipes.addShapeless("nametag_to_human_spawn_egg", <minecraft:spawn_egg>, [<minecraft:name_tag>.marked("nametag"), <minecraft:egg>], 
function(out, ins, cInfo) {
	var name = ins.nametag.displayName;
	return <minecraft:spawn_egg>.withTag({display: {Name: "§e"+name+"§b的刷怪蛋"}, EntityTag: {Username: name, id: "headcrumbs:human"}});
},null);
recipes.addShapeless("head_to_human_spawn_egg", <minecraft:spawn_egg>, [<minecraft:skull:3>.marked("head"), <minecraft:egg>], 
function(out, ins, cInfo) {
	var name = "null";
	if(ins.head.tag.asString().contains("SkullOwner:")) {
		var nameData = ins.head.tag.memberGet("SkullOwner") as IData;
		if(nameData.asString().contains("Name:")) {
			nameData = nameData.memberGet("Name") as IData;
		}
		if(!isNull(nameData)) {
			name = nameData.asString();
		}
	}
	return <minecraft:spawn_egg>.withTag({display: {Name: "§e"+name+"§b的刷怪蛋"}, EntityTag: {Username: name, id: "headcrumbs:human"}});
},null);
recipes.addShapeless("nametag_to_head", <minecraft:skull>, [<minecraft:name_tag>.marked("nametag1"), <minecraft:skull:*>], 
function(out, ins, cInfo) {
	var name = ins.nametag1.displayName;
	return <minecraft:skull:3>.withTag({display: {Name: "§e"+name+"§b的头"}, SkullOwner: name});
},null);

recipes.addShaped("dank_null_1", <danknull:dank_null_1>, 
[[null, <danknull:dank_null_panel_1>, null],
[<danknull:dank_null_panel_1>, <danknull:dank_null_0>.marked("dank"), <danknull:dank_null_panel_1>],
[null, <danknull:dank_null_panel_1>, null]],
function(out, ins, cInfo) {
	return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_2", <danknull:dank_null_2>, 
[[null, <danknull:dank_null_panel_2>, null],
[<danknull:dank_null_panel_2>, <danknull:dank_null_1>.marked("dank"), <danknull:dank_null_panel_2>],
[null, <danknull:dank_null_panel_2>, null]],
function(out, ins, cInfo) {
	return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_3", <danknull:dank_null_3>, 
[[null, <danknull:dank_null_panel_3>, null],
[<danknull:dank_null_panel_3>, <danknull:dank_null_2>.marked("dank"), <danknull:dank_null_panel_3>],
[null, <danknull:dank_null_panel_3>, null]],
function(out, ins, cInfo) {
	return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_4", <danknull:dank_null_4>, 
[[null, <danknull:dank_null_panel_4>, null],
[<danknull:dank_null_panel_4>, <danknull:dank_null_3>.marked("dank"), <danknull:dank_null_panel_4>],
[null, <danknull:dank_null_panel_4>, null]],
function(out, ins, cInfo) {
	return out.withTag(ins.dank.tag);
}, null);
recipes.addShaped("dank_null_5", <danknull:dank_null_5>, 
[[null, <danknull:dank_null_panel_5>, null],
[<danknull:dank_null_panel_5>, <danknull:dank_null_4>.marked("dank"), <danknull:dank_null_panel_5>],
[null, <danknull:dank_null_panel_5>, null]],
function(out, ins, cInfo) {
	return out.withTag(ins.dank.tag);
}, null);


recipes.addShaped("exp_transport_tool", errorStone, [[<ore:toolTiC>.marked("to"), <additions:greedycraft-experience_transporter>, <ore:toolTiC>.marked("from")]], 
function(out, ins, cInfo) {
	if(isNull(ins.from.tag.memberGet("Modifiers") as IData) || isNull(ins.to.tag.memberGet("Modifiers") as IData)) {
		return null;
	}
	var modifiersFrom = ins.from.tag.memberGet("Modifiers") as IData;
	var modifiersTo = ins.to.tag.memberGet("Modifiers") as IData;
	var toolLevel = {} as IData;
	if(modifiersFrom.asString().contains("toolleveling")) {
		for i in 0 to modifiersFrom.length {
			var current as IData = modifiersFrom[i];
			if(current.asString().contains("toolleveling")) {
				toolLevel = current;
				break;
			}
		}
	}
	var newModifier as IData = [];
	if(!isNull(newModifier)) {
	for i in 0 to modifiersTo.length {
		var current as IData = modifiersTo[i];
		if(isNull(current)) { 
			break;
		}
		if(current.asString().contains("toolleveling")) {
			newModifier = newModifier.update([current + toolLevel] as IData);
			break;
		} else {
			newModifier = newModifier.update([current] as IData);
		}
	}
	}
	var outData as IData = ins.to.tag - "Modifiers";
	outData = outData + ({Modifiers: newModifier}) as IData;
	
	return ins.to.withTag(outData);
}, null);

recipes.addShaped("exp_transport_armor", errorStone, [[<ore:armorTiC>.marked("to"), <additions:greedycraft-experience_transporter>, <ore:armorTiC>.marked("from")]], 
function(out, ins, cInfo) {
	if(isNull(ins.from.tag.memberGet("Modifiers") as IData) || isNull(ins.to.tag.memberGet("Modifiers") as IData)) {
		return null;
	}
	var modifiersFrom = ins.from.tag.memberGet("Modifiers") as IData;
	var modifiersTo = ins.to.tag.memberGet("Modifiers") as IData;
	var toolLevel = {} as IData;
	if(modifiersFrom.asString().contains("leveling_armor")) {
		for i in 0 to modifiersFrom.length {
			var current as IData = modifiersFrom[i];
			if(current.asString().contains("leveling_armor")) {
				toolLevel = current;
				break;
			}
		}
	}
	var newModifier as IData = [];
	if(!isNull(newModifier)) {
	for i in 0 to modifiersTo.length {
		var current as IData = modifiersTo[i];
		if(isNull(current)) { 
			break;
		}
		if(current.asString().contains("leveling_armor")) {
			newModifier = newModifier.update([current + toolLevel] as IData);
			break;
		} else {
			newModifier = newModifier.update([current] as IData);
		}
	}
	}
	var outData as IData = ins.to.tag - "Modifiers";
	outData = outData + ({Modifiers: newModifier}) as IData;
	
	return ins.to.withTag(outData);
}, null);
