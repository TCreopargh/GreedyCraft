/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker

#modloaded tconstruct

#priority 2602

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import crafttweaker.world.IBlockPos;

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;
import mods.zenutils.I18n;

val poopTrait = TraitBuilder.create("poopy");
poopTrait.color = Color.fromHex("5d4037").getIntColor(); 
poopTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.poopTrait.name");
poopTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.poopTrait.desc");
poopTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        if(!(Math.random() as double > 0.005)) {
            var player as IPlayer = attacker;
            server.commandManager.executeCommand(server, "/give " + player.name + " additions:greedycraft-poop");
        }
    }
};
poopTrait.register();

val pinkyTrait = TraitBuilder.create("pinky");
pinkyTrait.color = Color.fromHex("ff80ab").getIntColor(); 
pinkyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.pinkyTrait.name");
pinkyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.pinkyTrait.desc");
pinkyTrait.onBlockHarvestDrops = function(trait, tool, event) {
    if(!event.silkTouch && event.block.definition.id == "minecraft:diamond_ore") {
        if(Math.random() as double < 0.2) {
            event.addItem(<item:sakura:sakura_diamond>);
        }
    }
};
pinkyTrait.register();

val cotlifestealTrait = TraitBuilder.create("cotlifesteal");
cotlifestealTrait.color = Color.fromHex("ff5252").getIntColor(); 
cotlifestealTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.cotlifestealTrait.name");
cotlifestealTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.cotlifestealTrait.desc");
cotlifestealTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && wasHit && target instanceof IEntityMob && !target.isUndead) {
        if(!(Math.random() as double > 0.33)) {
            var heal as float = damageDealt * 0.1f;
            if(heal > 5.0f) {
                heal = 5.0f;
            }
            attacker.heal(heal);
        }
    }
};
cotlifestealTrait.register();

val superknockpackTrait = TraitBuilder.create("superknockback");
superknockpackTrait.color = Color.fromHex("7e57c2").getIntColor(); 
superknockpackTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.superknockpackTrait.name");
superknockpackTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.superknockpackTrait.desc");
superknockpackTrait.calcCrit = function(trait, tool, attacker, target) {
    if(!(Math.random() > 0.25)) {
        return true;
    }
    return false;
};
superknockpackTrait.calcKnockBack = function(trait, tool, attacker, target, damage, originalKnockBack, newKnockBack, isCritical) {
    if(isCritical) {
        return (newKnockBack * 10.0 + 20.0) as float; 
    }
    return newKnockBack;
};
superknockpackTrait.register();

val gambleTrait = TraitBuilder.create("gamble");
gambleTrait.color = Color.fromHex("ffa000").getIntColor(); 
gambleTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.gambleTrait.name");
gambleTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.gambleTrait.desc");
gambleTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(!(Math.random() as double > 0.15)) {
        return newDamage * 2 as float; 
    }
    if(!(Math.random() as double > 0.3)) {
        return newDamage * 0.5 as float; 
    }
    return newDamage;
};
gambleTrait.register();

val ragingTrait = TraitBuilder.create("raging");
ragingTrait.color = Color.fromHex("e040fb").getIntColor(); 
ragingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.ragingTrait.name");
ragingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.ragingTrait.desc");
ragingTrait.calcCrit = function(trait, tool, attacker, target) {
    return false; 
};
ragingTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(!isCritical) {
        return newDamage * 1.3;
    }
    return  newDamage * 0.75;
};
ragingTrait.register();

val levelingdamageTrait = TraitBuilder.create("levelingdamage");
levelingdamageTrait.color = Color.fromHex("7e57c2").getIntColor(); 
levelingdamageTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.levelingdamageTrait.name");
levelingdamageTrait.addItem(<ore:plateHonor>);
levelingdamageTrait.maxLevel = 3;
levelingdamageTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.levelingdamageTrait.desc");
levelingdamageTrait.extraInfo = function(thisTrait, item, tag) {
    if(isNull(tag) || isNull(tag.memberGet("Modifiers"))) {
        return [] as string[];
    }
    var modifiers = tag.memberGet("Modifiers") as IData;
    var toolLevel = {} as IData;
    if(modifiers.asString().contains("toolleveling")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if(current.asString().contains("toolleveling")) {
                toolLevel = current;
                break;
            }
        }
    }
    var multiplier = 1.0;
    if(!isNull(toolLevel.memberGet("level"))) {
        var level = toolLevel.memberGet("level").asInt() as int;
        while(level > 0) {
            level -= 1;
            multiplier += 0.05;
        }
        if(multiplier > 2.0) {
            multiplier = 2.0 + (multiplier - 2.0) / 4;
        }
    }
    var data as TraitDataRepresentation = thisTrait.getData(item);
    var level = 0;
    if(!isNull(data)) {
        level = data.level;
    }
    multiplier = (multiplier - 1.0 as float) * (level / 3) + 1.0 as float;
    var percentage as int = Math.round((multiplier - 1.0) * 100) as int;
    return [I18n.format("greedycraft.tool_trait.tooltip.damage_increase", "" + percentage)] as string[];
};
levelingdamageTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var modifiers = tool.tag.memberGet("Modifiers") as IData;
    var toolLevel = {} as IData;
    if(modifiers.asString().contains("toolleveling")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if(current.asString().contains("toolleveling")) {
                toolLevel = current;
                break;
            }
        }
    }
    var multiplier = 1.0;
    if(!isNull(toolLevel.memberGet("level"))) {
        var level = toolLevel.memberGet("level").asInt() as int;
        while(level > 0) {
            level -= 1;
            multiplier += 0.05;
        }
        if(multiplier > 2.0) {
            multiplier = 2.0 + (multiplier - 2.0) / 4;
        }
    }    
    var data as TraitDataRepresentation = trait.getData(tool);
    var level = 0;
    if(!isNull(data)) {
        level = data.level;
    }
    multiplier = (multiplier - 1.0 as float) * (level / 3) + 1.0 as float;
    return newDamage * multiplier as float;
};
levelingdamageTrait.register();

val thunderingTrait = TraitBuilder.create("lightning");
thunderingTrait.color = Color.fromHex("ffee58").getIntColor(); 
thunderingTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.thunderingTrait.name");
thunderingTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.thunderingTrait.desc");
thunderingTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && wasHit && target instanceof IEntityMob) {
        if(!(Math.random() as double > 0.04)) {
            target.world.addWeatherEffect(target.world.createLightningBolt(target.x, target.y, target.z, false));
        }
    }
};
thunderingTrait.register();

val visionTrait = TraitBuilder.create("vision");
visionTrait.color = Color.fromHex("ffeb3b").getIntColor(); 
visionTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.visionTrait.name");
visionTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.visionTrait.desc");
visionTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if(owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if(isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(330, 0, false, false));
        } 
        /*
        else {
            if(!isNull(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>)) && (!(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).duration > 250)) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).isAmbient) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).doesShowParticles)) {
                ownerBase.removePotionEffect(<potion:minecraft:night_vision>);
            }
        }
        */
    }
};
visionTrait.register();

val fortifiedTrait = TraitBuilder.create("fortified");
fortifiedTrait.color = Color.fromHex("bdbdbd").getIntColor(); 
fortifiedTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.fortifiedTrait.name");
fortifiedTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.fortifiedTrait.desc");
fortifiedTrait.onBlock = function(trait, tool, player, event) {
    if(!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(99, 1, false, false));
    }
};
fortifiedTrait.register();

val reliableTrait = TraitBuilder.create("reliable");
reliableTrait.color = Color.fromHex("78909c").getIntColor(); 
reliableTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.reliableTrait.name");
reliableTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.reliableTrait.desc");
reliableTrait.onToolDamage = function(trait, tool, unmodifiedAmount, newAmount, holder) {
    if(holder.health > (holder.maxHealth * 0.9 as float)) {
        if(!(Math.random() > 0.25)) {
            return newAmount;
        } else {
            return 0;
        }
    } else {
        return newAmount * 2;
    }
};
reliableTrait.register();

val sacrificialTrait = TraitBuilder.create("sacrificial");
sacrificialTrait.color = Color.fromHex("c62828").getIntColor(); 
sacrificialTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.sacrificialTrait.name");
sacrificialTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.sacrificialTrait.desc");
sacrificialTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var sacrifice as float = attacker.maxHealth * 0.15 as float;
    var source as IDamageSource = crafttweaker.damage.IDamageSource.OUT_OF_WORLD();
    source.setDamageIsAbsolute();
    attacker.attackEntityFrom(source, sacrifice);
    return newDamage + sacrifice * 6 as float; 
};
sacrificialTrait.register();

val halloweenTrait = TraitBuilder.create("halloween");
halloweenTrait.color = Color.fromHex("fb8c00").getIntColor(); 
halloweenTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.halloweenTrait.name");
halloweenTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.halloweenTrait.desc");
halloweenTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        if(!(Math.random() as double > 0.01)) {
            var player as IPlayer = attacker;
            server.commandManager.executeCommand(server, "/give " + player.name + " extrabotany:candybag");
        }
    }
};
halloweenTrait.register();

val milkyTrait = TraitBuilder.create("milky");
milkyTrait.color = Color.fromHex("ffffff").getIntColor(); 
milkyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.milkyTrait.name");
milkyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.milkyTrait.desc");
milkyTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if(!isNull(owner) && owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if(world.getWorldTime() as long % 12000 == 0) {
            ownerBase.clearActivePotions();
        }
    }
};
milkyTrait.register();

val giantslayerTrait = TraitBuilder.create("giantslayer");
giantslayerTrait.color = Color.fromHex("ffb74d").getIntColor(); 
giantslayerTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.giantslayerTrait.name");
giantslayerTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.giantslayerTrait.desc");
giantslayerTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var multiplier = 0.05 * (target.health / attacker.maxHealth) as float;
    if(multiplier < 1.0) {
        multiplier = 1.0;
    }
    if(multiplier > 2.5) { 
        multiplier = 2.5;
    }
    return newDamage * multiplier as float;
};
giantslayerTrait.register();

val crystalTrait = TraitBuilder.create("crystal_force");
crystalTrait.color = Color.fromHex("18ffff").getIntColor(); 
crystalTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.crystalTrait.name");
crystalTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.crystalTrait.desc");
crystalTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(tool.maxDamage != 0) {
        var dmg as float = 0.0 as float + tool.damage as float;
        var maxDmg as float = 0.0 as float + tool.maxDamage as float;
        var durabilityPercent as float = 1.0 as float - (dmg as float / maxDmg as float) as float;
        var multiplier as float = 0.8 as float + (durabilityPercent as float * 0.5 as float) as float;
        return newDamage as float * multiplier as float;
    }
    return newDamage;
};
crystalTrait.register();

val spartanTrait = TraitBuilder.create("spartan");
spartanTrait.color = Color.fromHex("e53935").getIntColor(); 
spartanTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.spartanTrait.name");
spartanTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.spartanTrait.desc");
spartanTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if((attacker.health as float / attacker.maxHealth as float) as float < 0.33 as float) {
        var multiplier as float = 1.5 as float + (1.0 as float - (attacker.health as float / (attacker.maxHealth as float * 0.33) as float)) * 1.0 as float;
        return newDamage as float * multiplier as float;
    }
    return newDamage;
};
spartanTrait.register();

val knowledgefulTrait = TraitBuilder.create("knowledgeful");
knowledgefulTrait.color = Color.fromHex("76ff03").getIntColor(); 
knowledgefulTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.knowledgefulTrait.name");
knowledgefulTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.knowledgefulTrait.desc");
knowledgefulTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(attacker instanceof IPlayer) {
        var player as IPlayer = attacker;
        var xpLevel = player.xp;
        if(xpLevel > 300) {
            xpLevel = 300;
        }
        return newDamage as float * (1.0 as float + xpLevel as float * 0.002 as float) as float;
    }
    return newDamage;
};
knowledgefulTrait.register();

val matterTrait1 = TraitBuilder.create("matter_condensing1");
matterTrait1.color = Color.fromHex("691b9a").getIntColor(); 
matterTrait1.localizedName = game.localize("greedycraft.tconstruct.tool_trait.matterTrait1.name");
matterTrait1.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.matterTrait1.desc");
matterTrait1.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        var player as IPlayer = attacker;
        player.personalEMC = (player.personalEMC as long + (Math.floor(damageDealt * 0.1) as long)) as long;
    }
};
matterTrait1.register();

val matterTrait2 = TraitBuilder.create("matter_condensing2");
matterTrait2.color = Color.fromHex("691b9a").getIntColor(); 
matterTrait2.localizedName = game.localize("greedycraft.tconstruct.tool_trait.matterTrait2.name");
matterTrait2.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.matterTrait2.desc");
matterTrait2.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        var player as IPlayer = attacker;
        player.personalEMC = (player.personalEMC as long + (Math.floor(damageDealt * 0.25) as long)) as long;
    }
};
matterTrait2.register();

val perfectionist = TraitBuilder.create("perfectionist");
perfectionist.color = Color.fromHex("4caf50").getIntColor(); 
perfectionist.localizedName = game.localize("greedycraft.tconstruct.tool_trait.perfectionist.name");
perfectionist.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.perfectionist.desc");
perfectionist.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    return (Math.round(newDamage as float / 10 as float) as float * 10 as float) as float;
};
perfectionist.register();

val tidal_force = TraitBuilder.create("tidal_force");
tidal_force.color = Color.fromHex("64ffda").getIntColor(); 
tidal_force.localizedName = game.localize("greedycraft.tconstruct.tool_trait.tidal_force.name");
tidal_force.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.tidal_force.desc");
tidal_force.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if(owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if(isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:water_breathing>.makePotionEffect(50, 0, false, false));
        }
    }
};
tidal_force.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(attacker.isInWater || (attacker.wet)) {
        return newDamage * 1.33;
    } else {
        return newDamage;
    }
};
tidal_force.register();

val holdGroundTrait = TraitBuilder.create("hold_ground");
holdGroundTrait.color = Color.fromHex("f44336").getIntColor(); 
holdGroundTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.holdGroundTrait.name");
holdGroundTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.holdGroundTrait.desc");
holdGroundTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(attacker.isSneaking) {
        return newDamage * 1.25;
    } else {
        return newDamage;
    }
};
holdGroundTrait.onBlock = function(trait, tool, player, event) {
    if(!isNull(player) && player.isSneaking) {
        player.addPotionEffect(<potion:minecraft:strength>.makePotionEffect(125, 1, false, false));
    }
};
holdGroundTrait.register();

val motionTrait = TraitBuilder.create("motion");
motionTrait.color = Color.fromHex("ffee58").getIntColor(); 
motionTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.motionTrait.name");
motionTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.motionTrait.desc");
motionTrait.onPlayerHurt = function(trait, tool, player, attacker, event) {
    if(!isNull(player) && player.isSprinting) {
        event.amount = event.amount * 1.5 as float;
    }
};
motionTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(attacker.isSprinting) {
        return newDamage * 1.33;
    } else {
        return newDamage;
    }
};
motionTrait.calcKnockBack = function(trait, tool, attacker, target, damage, originalKnockBack, newKnockBack, isCritical) {
    if(attacker.isSprinting) {
        return (newKnockBack * 2.5) as float; 
    }
    return newKnockBack;
};
motionTrait.register();

val executionerTrait = TraitBuilder.create("executioner");
executionerTrait.color = Color.fromHex("e53935").getIntColor(); 
executionerTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.executionerTrait.name");
executionerTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.executionerTrait.desc");
executionerTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if(isNull(target) || !target instanceof IEntityLivingBase || !attacker instanceof IPlayer || damage < 0.1) {
        return;
    }
    var player as IPlayer = attacker;
    var threshold as float = 0.2f;
    if(target.isBoss) {
        threshold = 0.1f;
    }
    if((target.health as float / target.maxHealth as float) as float < threshold) {
        var source as IDamageSource = IDamageSource.createPlayerDamage(player);
        source.setDamageIsAbsolute();
        target.attackEntityFrom(source, 2147483647.0f);
    }
};
executionerTrait.register();

val penetrationTrait = TraitBuilder.create("penetration");
penetrationTrait.color = Color.fromHex("2979ff").getIntColor(); 
penetrationTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.penetrationTrait.name");
penetrationTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.penetrationTrait.desc");
penetrationTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(target.totalArmorValue > 0) {
        var multiplier as float = (target.totalArmorValue as float * 0.02 as float) as float;
        if(multiplier > 1.0f) {
            multiplier = 1.0f;
        }
        return (newDamage * (1.0f + multiplier) as float) as float;
    } else {
        return newDamage;
    }
};
penetrationTrait.register();

val thronyTrait = TraitBuilder.create("throny");
thronyTrait.color = Color.fromHex("4caf50").getIntColor(); 
thronyTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.thronyTrait.name");
thronyTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.thronyTrait.desc");
thronyTrait.onBlock = function(trait, tool, player, event) {
    if(!isNull(player)) {
        var source as IDamageSource = event.damageSource;
        if(!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            var source as IDamageSource = IDamageSource.createThornsDamage(player);
            var dmg as float = player.maxHealth * 0.2;
            attacker.attackEntityFrom(source, dmg);
        }
    }
};
thronyTrait.register();

val nightBaneTrait = TraitBuilder.create("bane_of_night");
nightBaneTrait.color = Color.fromHex("fff176").getIntColor(); 
nightBaneTrait.localizedName = game.localize("greedycraft.tconstruct.tool_trait.nightBaneTrait.name");
nightBaneTrait.localizedDescription = game.localize("greedycraft.tconstruct.tool_trait.nightBaneTrait.desc");
nightBaneTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var lightLevel as int = attacker.world.getBlockLight(attacker.position3f as IBlockPos);
    lightLevel -= 7;
    if(lightLevel < 0) {
        lightLevel = 0;
    }
    return newDamage * (1.0f + 0.025f * lightLevel) as float;
};
nightBaneTrait.register();
