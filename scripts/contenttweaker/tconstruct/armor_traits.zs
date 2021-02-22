/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker

#modloaded tconstruct
#modloaded conarm

#priority 2601
#no_fix_recipe_book

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.conarm.ArmorTraitBuilder;
import mods.contenttweaker.conarm.ArmorTrait;
import mods.contenttweaker.conarm.ArmorTraitDataRepresentation;
import mods.conarm.utils.IArmorModifications;
import mods.zenutils.I18n;

val warmTrait = ArmorTraitBuilder.create("warm");
warmTrait.color = Color.fromHex("2196f3").getIntColor();
warmTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.warmTrait.name");
warmTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.warmTrait.desc");
warmTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var reduction = 0.0 as float;
    if (!isNull(player) && player.world.getBiome(player.position).isSnowyBiome) {
        reduction += 0.05 as float;
        if (player.world.raining) {
            reduction += 0.025 as float;
        }
    }
    return newDamage * (1.0 as float - reduction as float) as float;
};
warmTrait.register();

val fortifiedTrait = ArmorTraitBuilder.create("fortified");
fortifiedTrait.color = Color.fromHex("bbbbbb").getIntColor();
fortifiedTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.fortifiedTrait.name");
fortifiedTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.fortifiedTrait.desc");
fortifiedTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (source.isProjectile()) {
        return (newDamage * 0.85 as float) as float;
    }
    return newDamage;
};
fortifiedTrait.register();

val infernoTrait = ArmorTraitBuilder.create("inferno");
infernoTrait.color = Color.fromHex("ff5722").getIntColor();
infernoTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.infernoTrait.name");
infernoTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.infernoTrait.desc");
infernoTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
        var attacker as IEntity = source.getTrueSource();
        if (Math.random() < 0.2) {
            attacker.setFire(8);
        }
    }
    return newDamage;
};
infernoTrait.register();

val cryonicTrait = ArmorTraitBuilder.create("cryonic");
cryonicTrait.color = Color.fromHex("00e5ff").getIntColor();
cryonicTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.cryonicTrait.name");
cryonicTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.cryonicTrait.desc");
cryonicTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
        var attacker as IEntityLivingBase = source.getTrueSource();
        if (Math.random() < 0.2) {
            attacker.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 2, false, false));
        }
    }
    return newDamage;
};
cryonicTrait.register();

val knowledgefulTrait = ArmorTraitBuilder.create("knowledgeful");
knowledgefulTrait.color = Color.fromHex("76ff03").getIntColor();
knowledgefulTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.knowledgefulTrait.name");
knowledgefulTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.knowledgefulTrait.desc");
knowledgefulTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var reduction = 0.0 as float;
    if (!isNull(player)) {
        reduction = (player.xp / 300) as float * 0.36 as float;
    }
    return newDamage * (1.0 - 0.25 as float * reduction as float) as float;
};
knowledgefulTrait.register();

val visionTrait = ArmorTraitBuilder.create("vision");
visionTrait.color = Color.fromHex("ffeb3b").getIntColor();
visionTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.visionTrait.name");
visionTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.visionTrait.desc");
visionTrait.onAbility = function(trait, level, world, player) {
    if (!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(330, 2, false, false));
    }
};
visionTrait.register();

val tidalForceTrait = ArmorTraitBuilder.create("tidal_force");
tidalForceTrait.color = Color.fromHex("69f0ae").getIntColor();
tidalForceTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.tidalForceTrait.name");
tidalForceTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.tidalForceTrait.desc");
tidalForceTrait.onAbility = function(trait, level, world, player) {
    if (!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:water_breathing>.makePotionEffect(25, 2, false, false));
    }
};
tidalForceTrait.register();

val spartanTrait = ArmorTraitBuilder.create("spartan");
spartanTrait.color = Color.fromHex("fdd835").getIntColor();
spartanTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.spartanTrait.name");
spartanTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.spartanTrait.desc");
spartanTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var reduction = 0.0 as float;
    if ((player.health as float / player.maxHealth as float) as float < 0.33 as float) {
        reduction = 0.3 as float + (1.0 as float - player.health as float / (player.maxHealth as float * 0.33 as float)) * 0.45 as float;
    }
    return newDamage * (1.0 as float - 0.25 as float * reduction as float) as float;
};
spartanTrait.register();

val crystalTrait = ArmorTraitBuilder.create("crystal_force");
crystalTrait.color = Color.fromHex("18ffff").getIntColor(); 
crystalTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.crystalTrait.name");
crystalTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.crystalTrait.desc");
crystalTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var damagePercent as float = 1.0 as float;
    if (armor.maxDamage != 0) {
        var dmg as float = 0.0 as float + armor.damage as float;
        var maxDmg as float = 0.0 as float + armor.maxDamage as float;
        var durabilityPercent as float = 1.0 as float - (dmg as float / maxDmg as float) as float;
        damagePercent = (1.05 as float - (durabilityPercent as float * 0.12 as float) as float);
    }
    return (newDamage * damagePercent) as float;
};
crystalTrait.register();

val secondLifeTrait = ArmorTraitBuilder.create("second_life");
secondLifeTrait.color = Color.fromHex("4caf50").getIntColor(); 
secondLifeTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.secondLifeTrait.name");
secondLifeTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.secondLifeTrait.desc");
secondLifeTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && damage < player.maxHealth && !source.isDamageAbsolute()) {
        if (damage > player.health && Math.random() < 0.05) {
            evt.cancel();
            player.addPotionEffect(<potion:minecraft:absorption>.makePotionEffect(200, 3, false, false));
            player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(100, 3, false, false));
            player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(45, 4, false, false));
            return 0.0 as float;
        }
    }
    return newDamage;
};
secondLifeTrait.register();

val perfectionistTrait = ArmorTraitBuilder.create("perfectionist");
perfectionistTrait.color = Color.fromHex("00c853").getIntColor(); 
perfectionistTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.perfectionistTrait.name");
perfectionistTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.perfectionistTrait.desc");
perfectionistTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && newDamage > 5.0) {
        return (Math.round(newDamage / 5.0) as float * 5.0 as float) as float;
    }
    return newDamage as float;
};
perfectionistTrait.register();

val gambleTrait = ArmorTraitBuilder.create("gamble");
gambleTrait.color = Color.fromHex("fdd835").getIntColor(); 
gambleTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.gambleTrait.name");
gambleTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.gambleTrait.desc");
gambleTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (Math.random() < 0.05) {
        return newDamage * 2.0 as float;
    }
    if (Math.random() < 0.25) {
        return (newDamage / 2.0 as float) as float;
    }
    return newDamage;
};
gambleTrait.register();

val firstGuardTrait = ArmorTraitBuilder.create("first_guard");
firstGuardTrait.color = Color.fromHex("f44336").getIntColor(); 
firstGuardTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.firstGuardTrait.name");
firstGuardTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.firstGuardTrait.desc");
firstGuardTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && (player.maxHealth - player.health) as float < 1.0 as float) {
        return (newDamage * 0.84 as float) as float;
    }
    return newDamage;
};
firstGuardTrait.register();

val levelingdefenseTrait = ArmorTraitBuilder.create("levelingdefense");
levelingdefenseTrait.color = Color.fromHex("7e57c2").getIntColor(); 
levelingdefenseTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.levelingdefenseTrait.name");
levelingdefenseTrait.addItem(<ore:plateHonor>);
levelingdefenseTrait.maxLevel = 1;
levelingdefenseTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.levelingdefenseTrait.desc");
levelingdefenseTrait.extraInfo = function(thisTrait, item, tag) {
    if (isNull(tag) || isNull(tag.memberGet("Modifiers"))) {
        return [] as string[];
    }
    var modifiers = tag.memberGet("Modifiers") as IData;
    var armorLevel = {} as IData;
    if (modifiers.asString().contains("leveling_armor")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if (current.asString().contains("leveling_armor")) {
                armorLevel = current;
                break;
            }
        }
    }
    var multiplier as float = 0.0 as float;
    if (!isNull(armorLevel.memberGet("level"))) {
        var level = armorLevel.memberGet("level").asInt() as int;
        multiplier += 0.025f * level as float;
        if (multiplier > 0.5 as float) {
            multiplier = 0.5 as float + (multiplier as float - 1.0 as float) / 4.0 as float;
        }
    }
    multiplier *= 0.25 as float;
    var percentage as int = Math.round((1.0 as float - (1.0 as float / (multiplier + 1.0 as float))) * 100.0 as float) as int;
    var desc as string[] = [I18n.format("greedycraft.armor_trait.tooltip.damage_reduction", "" + percentage)];
    return desc;
};
levelingdefenseTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var modifiers = armor.tag.memberGet("Modifiers") as IData;
    var armorLevel = {} as IData;
    if (modifiers.asString().contains("leveling_armor")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if (current.asString().contains("leveling_armor")) {
                armorLevel = current;
                break;
            }
        }
    }
    var multiplier as float = 0.0 as float;
    if (!isNull(armorLevel.memberGet("level"))) {
        var level = armorLevel.memberGet("level").asInt() as int;
        while(level > 0) {
            level -= 1;
            multiplier += 0.05 as float;
        }
        if (multiplier > 1.0 as float) {
            multiplier = 1.0 as float + (multiplier - 1.0 as float) / 4.0 as float;
        }
    }
    multiplier *= 0.25f;
    return (newDamage / (multiplier + 1.0)) as float;
};
levelingdefenseTrait.register();

val luckyTrait = ArmorTraitBuilder.create("lucky");
luckyTrait.color = Color.fromHex("00e676").getIntColor(); 
luckyTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.luckyTrait.name");
luckyTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.luckyTrait.desc");
luckyTrait.onAbility = function(trait, level, world, player) {
    if (!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(25, 0, false, false));
    }
};
luckyTrait.register();

val purifyingTrait = ArmorTraitBuilder.create("purifying");
purifyingTrait.color = Color.fromHex("eeeeee").getIntColor(); 
purifyingTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.purifyingTrait.name");
purifyingTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.purifyingTrait.desc");
purifyingTrait.onAbility = function(trait, level, world, player) {
    if (!isNull(player)) {
        if (player.isPotionActive(<potion:minecraft:wither>)) {
            player.removePotionEffect(<potion:minecraft:wither>);
        }
    }
};
purifyingTrait.register();

val milkyTrait = ArmorTraitBuilder.create("milky");
milkyTrait.color = Color.fromHex("ffffff").getIntColor(); 
milkyTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.milkyTrait.name");
milkyTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.milkyTrait.desc");
milkyTrait.onAbility = function(trait, level, world, player) {
    if (!isNull(player)) {
        if (world.getWorldTime() as long % 18000 == 0) {
            player.clearActivePotions();
        }
    }
};
milkyTrait.register();

val poopTrait = ArmorTraitBuilder.create("poopy");
poopTrait.color = Color.fromHex("6d4c41").getIntColor(); 
poopTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.poopTrait.name");
poopTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.poopTrait.desc");
poopTrait.onAbility = function(trait, level, world, player) {
    if (!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(25, 0, false, false));
    }
};
poopTrait.register();

val trueDefenseTrait = ArmorTraitBuilder.create("true_defense");
trueDefenseTrait.color = Color.fromHex("33ffff").getIntColor(); 
trueDefenseTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.trueDefenseTrait.name");
trueDefenseTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.trueDefenseTrait.desc");
trueDefenseTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && source.isDamageAbsolute()) {
        return (newDamage as float * 0.9 as float) as float;
    }
    return newDamage as float;
};
trueDefenseTrait.register();

val holdGroundTrait = ArmorTraitBuilder.create("hold_ground");
holdGroundTrait.color = Color.fromHex("f44336").getIntColor(); 
holdGroundTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.holdGroundTrait.name");
holdGroundTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.holdGroundTrait.desc");
holdGroundTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && player.isSneaking) {
        return (newDamage as float * 0.92 as float) as float;
    }
    return newDamage as float;
};
holdGroundTrait.onKnockback = function(trait, armor, player, evt) {
    if (!isNull(player) && player.isSneaking) {
        evt.cancel();
    }
};
holdGroundTrait.register();

val motionTrait = ArmorTraitBuilder.create("motion");
motionTrait.color = Color.fromHex("ffee58").getIntColor(); 
motionTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.motionTrait.name");
motionTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.motionTrait.desc");
motionTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && player.isSprinting) {
        return (newDamage as float * 0.93 as float) as float;
    }
    return newDamage as float;
};
motionTrait.onKnockback = function(trait, armor, player, evt) {
    if (!isNull(player) && player.isSprinting) {
        evt.strength = (evt.strength * 1.4) as float;
    }
};
motionTrait.register();

val kungfuTrait = ArmorTraitBuilder.create("kungfu");
kungfuTrait.color = Color.fromHex("ffc107").getIntColor(); 
kungfuTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.kungfuTrait.name");
kungfuTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.kungfuTrait.desc");
kungfuTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player) && !isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
        var attacker as IEntityLivingBase = source.getTrueSource();
        if (attacker.isChild) {
            return (newDamage * 1.125 as float) as float;
        }
    }
    if (!isNull(player) && !source.isDamageAbsolute()) {
        if (Math.random() < 0.04) {
            player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(100, 3, false, false));
            evt.cancel();
            return 0.0 as float;
        }
    }
    return newDamage as float;
};
kungfuTrait.register();

val thronyTrait = ArmorTraitBuilder.create("throny");
thronyTrait.color = Color.fromHex("4caf50").getIntColor(); 
thronyTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.thronyTrait.name");
thronyTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.thronyTrait.desc");
thronyTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player)) {
        if (!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            var newSource as IDamageSource = IDamageSource.createThornsDamage(player);
            var dmg as float = damage * 0.025f;
            if (dmg > 10.0f) {
                dmg = 10.0f;
            }
            attacker.attackEntityFrom(newSource, dmg);
        }
    }
    return newDamage as float;
};
thronyTrait.register();

val enduranceTrait = ArmorTraitBuilder.create("endurance");
enduranceTrait.color = Color.fromHex("3f51b5").getIntColor(); 
enduranceTrait.localizedName = game.localize("greedycraft.tconstruct.armor_trait.enduranceTrait.name");
enduranceTrait.localizedDescription = game.localize("greedycraft.tconstruct.armor_trait.enduranceTrait.desc");
enduranceTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if (!isNull(player)) {
        if (newDamage < (player.maxHealth * 0.05f) as float) {
            return newDamage * 0.8f as float;
        }
    }
    return newDamage as float;
};
enduranceTrait.register();
