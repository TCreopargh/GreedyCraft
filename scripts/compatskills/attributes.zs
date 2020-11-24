/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#priority 30

import mods.ctutils.utils.Math;
import crafttweaker.damage.IDamageSource;
import crafttweaker.player.IPlayer;

import mods.attributes.AdaptationTweaker;
import mods.compatskills.TraitCreator;

AdaptationTweaker.addAdaptation(<entity:minecraft:blaze>, <potion:minecraft:strength>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:wolf>, <potion:minecraft:strength>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:ender_dragon>, <potion:minecraft:strength>.makePotionEffect(200, 2, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:magma_cube>, <potion:minecraft:fire_resistance>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:zombie>, <potion:minecraft:resistance>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:zombie_villager>, <potion:minecraft:strength>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:villager_golem>, <potion:minecraft:resistance>.makePotionEffect(300, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:shulker>, <potion:minecraft:resistance>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:husk>, <potion:minecraft:resistance>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:creeper>, <potion:minecraft:speed>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:skeleton>, <potion:potioncore:archery>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:stray>, <potion:potioncore:archery>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:spider>, <potion:potioncore:antidote>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:cave_spider>, <potion:potioncore:antidote>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:spiderstpo:better_spider>, <potion:potioncore:antidote>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:spiderstpo:better_cave_spider>, <potion:potioncore:antidote>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:zombie_pigman>, <potion:minecraft:fire_resistance>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:wither_skeleton>, <potion:potioncore:purity>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:wither>, <potion:potioncore:purity>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:witch>, <potion:minecraft:regeneration>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:bat>, <potion:minecraft:night_vision>.makePotionEffect(1200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:slime>, <potion:minecraft:jump_boost>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:vex>, <potion:minecraft:jump_boost>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:rabbit>, <potion:minecraft:jump_boost>.makePotionEffect(200, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:enderman>, <potion:cyclicmagic:potion.ender>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:endermite>, <potion:cyclicmagic:potion.ender>.makePotionEffect(200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:cow>, <potion:cyclicmagic:potion.saturation>.makePotionEffect(60, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:pig>, <potion:cyclicmagic:potion.saturation>.makePotionEffect(60, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:sheep>, <potion:cyclicmagic:potion.saturation>.makePotionEffect(60, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:chicken>, <potion:cyclicmagic:potion.saturation>.makePotionEffect(60, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:guardian>, <potion:minecraft:water_breathing>.makePotionEffect(600, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:elder_guardian>, <potion:minecraft:water_breathing>.makePotionEffect(1200, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:squid>, <potion:minecraft:water_breathing>.makePotionEffect(600, 0, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:ghast>, <potion:minecraft:strength>.makePotionEffect(600, 1, false, false));
AdaptationTweaker.addAdaptation(<entity:minecraft:llama>, <potion:minecraft:luck>.makePotionEffect(600, 1, false, false));
