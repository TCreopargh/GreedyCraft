/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker 
#modloaded tconstruct
#priority 2600

import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityLivingBase;
import mods.ctutils.utils.Math;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityMob;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.game.IGame;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;

val poopTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("poopy");
poopTrait.color = Color.fromHex("5d4037").getIntColor(); 
poopTrait.localizedName = "114514";
poopTrait.localizedDescription = (
    "§o兄啊这么臭的工具有用的必要么（恼）§r\n" +
    "§f击打怪物时概率获得...算了不说了，呕。");
poopTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        if(!(Math.random() as double > 0.005)) {
            var player as IPlayer = attacker;
            server.commandManager.executeCommand(server, "/give " + player.name + " additions:greedycraft-poop");
        }
    }
};
poopTrait.register();


val pinkyTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("pinky");
pinkyTrait.color = Color.fromHex("ff80ab").getIntColor(); 
pinkyTrait.localizedName = "粉嫩";
pinkyTrait.localizedDescription = (
    "§o少女心！§r\n" +
    "§f挖掘钻石时有概率获得樱色钻石，有精准采集时无效。");
pinkyTrait.onBlockHarvestDrops = function(trait, tool, event) {
    if(!event.silkTouch && event.block.definition.id == "minecraft:diamond_ore") {
        if(Math.random() as double < 0.2) {
            event.addItem(<item:sakura:sakura_diamond>);
        }
    }
};
pinkyTrait.register();

val cotlifestealTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("cotlifesteal");
cotlifestealTrait.color = Color.fromHex("ff5252").getIntColor(); 
cotlifestealTrait.localizedName = "生命汲取";
cotlifestealTrait.localizedDescription = (
    "§o偷走你的生命！§r\n" +
    "§f攻击敌人时有概率恢复少量生命值，对亡灵生物无效。");
cotlifestealTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && wasHit && target instanceof IEntityMob && !target.isUndead) {
        if(!(Math.random() as double > 0.33)) {
            attacker.heal(Math.ceil(Math.random() * 5.0 as double));
        }
    }
};
cotlifestealTrait.register();

val superknockpackTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("superknockback");
superknockpackTrait.color = Color.fromHex("7e57c2").getIntColor(); 
superknockpackTrait.localizedName = "大力出奇迹";
superknockpackTrait.localizedDescription = (
    "§o你不要过来啊！！！！§r\n" +
    "§f在暴击时将你的敌人击退（准确的来说是击飞）到九霄云外。");
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

val gambleTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("gamble");
gambleTrait.color = Color.fromHex("ffa000").getIntColor(); 
gambleTrait.localizedName = "赌博";
gambleTrait.localizedDescription = (
    "§o这是个看脸的世界！§r\n" +
    "§f你的武器有概率造成10倍伤害，也有更大的概率只造成十分之一的伤害...一切都看脸！");
gambleTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(!(Math.random() as double > 0.05)) {
        return newDamage * 10 as float; 
    }
    if(!(Math.random() as double > 0.25)) {
        return newDamage * 0.1 as float; 
    }
    return newDamage;
};
gambleTrait.register();

val ragingTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("raging");
ragingTrait.color = Color.fromHex("e040fb").getIntColor(); 
ragingTrait.localizedName = "暴怒";
ragingTrait.localizedDescription = (
    "§o暴击是什么？能吃吗？§r\n" +
    "§f不再能暴击，但提高每击造成的伤害。");
ragingTrait.calcCrit = function(trait, tool, attacker, target) {
    return false; 
};
ragingTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    return newDamage * 1.35;
};
ragingTrait.register();

val levelingdamageTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("levelingdamage");
levelingdamageTrait.color = Color.fromHex("7e57c2").getIntColor(); 
levelingdamageTrait.localizedName = "等级伤害";
levelingdamageTrait.addItem(<ore:plateHonor>);
levelingdamageTrait.maxLevel = 1;
levelingdamageTrait.localizedDescription = (
    "§o我要变得更强！§r\n" +
    "§f随着工具等级的提升获得越来越高的攻击力。");
levelingdamageTrait.extraInfo = function(thisTrait, item, tag) {
    var description as string[] = ["随着工具等级的提升提高其攻击力", "攻击力提升上限为100%"];
    return description;
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
            multiplier = 2.0;
        }
    }
    return newDamage * multiplier as float;
};
levelingdamageTrait.register();


val thunderingTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("lightning");
thunderingTrait.color = Color.fromHex("ffee58").getIntColor(); 
thunderingTrait.localizedName = "天劫";
thunderingTrait.localizedDescription = (
    "§o何方道友在此渡劫？§r\n" +
    "§f伤害怪物时有概率引雷。");
thunderingTrait.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && wasHit && target instanceof IEntityMob) {
        if(!(Math.random() as double > 0.05)) {
            server.commandManager.executeCommand(server, "/summon lightning_bolt " + target.x + " " + target.y + " " + target.z);
        }
    }
};
thunderingTrait.register();

val visionTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("vision");
visionTrait.color = Color.fromHex("ffeb3b").getIntColor(); 
visionTrait.localizedName = "视域";
visionTrait.localizedDescription = (
    "§o正道的光，照在了大地上！§r\n" +
    "§f手持该工具时获得夜视效果。");
visionTrait.onUpdate = function(trait, tool, world, owner, itemSlot, isSelected) {
    if(owner instanceof IEntityLivingBase) {
        var ownerBase as IEntityLivingBase = owner;
        if(isSelected) {
            ownerBase.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(250, 0, false, false));
        } else {
            if(!isNull(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>)) && (!(ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).duration > 250)) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).isAmbient) && (!ownerBase.getActivePotionEffect(<potion:minecraft:night_vision>).doesShowParticles)) {
                ownerBase.removePotionEffect(<potion:minecraft:night_vision>);
            }
        }
    }
};
visionTrait.register();

val fortifiedTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("fortified");
fortifiedTrait.color = Color.fromHex("bdbdbd").getIntColor(); 
fortifiedTrait.localizedName = "固若金汤";
fortifiedTrait.localizedDescription = (
    "§o我们未能击穿敌人的装甲！§r\n" +
    "§f格挡成功时获得抗性提升II效果。");
fortifiedTrait.onBlock = function(trait, tool, player, event) {
    player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(125, 1, false, false));
};
fortifiedTrait.register();

val reliableTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("reliable");
reliableTrait.color = Color.fromHex("78909c").getIntColor(); 
reliableTrait.localizedName = "可靠";
reliableTrait.localizedDescription = (
    "§o用起来真舒服！§r\n" +
    "§f血量大于90%时使用只消耗1/4耐久，否则消耗双倍耐久。");
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

val sacrificialTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("sacrificial");
sacrificialTrait.color = Color.fromHex("c62828").getIntColor(); 
sacrificialTrait.localizedName = "天地同寿";
sacrificialTrait.localizedDescription = (
    "§o不成功，便成仁！§r\n" +
    "§f每次攻击时按比例消耗自身生命值造成巨量伤害。生命值越高，消耗越多，伤害越高。");
sacrificialTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    var sacrifice as float = attacker.maxHealth * 0.1 as float;
    attacker.attackEntityFrom(crafttweaker.damage.IDamageSource.GENERIC(), sacrifice);
    return newDamage + sacrifice * 20.0 as float; 
};
sacrificialTrait.register();

val halloweenTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("halloween");
halloweenTrait.color = Color.fromHex("fb8c00").getIntColor(); 
halloweenTrait.localizedName = "万圣节";
halloweenTrait.localizedDescription = (
    "§o不给糖就让你好看！§r\n" +
    "§f有概率从怪物手里抢到糖袋子！");
halloweenTrait.onHit = function(trait, tool, attacker, target, damage, isCritical) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        if(!(Math.random() as double > 0.01)) {
            var player as IPlayer = attacker;
            server.commandManager.executeCommand(server, "/give " + player.name + " extrabotany:candybag");
        }
    }
};
halloweenTrait.register();

val giantslayerTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("giantslayer");
giantslayerTrait.color = Color.fromHex("ffb74d").getIntColor(); 
giantslayerTrait.localizedName = "巨魔猎手";
giantslayerTrait.localizedDescription = (
    "§o不要屈服于强大的敌人！§r\n" +
    "§f对血量远高于己方的目标造成更高的伤害。");
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

val crystalTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("crystal_force");
crystalTrait.color = Color.fromHex("18ffff").getIntColor(); 
crystalTrait.localizedName = "水晶之力";
crystalTrait.localizedDescription = (
    "§o保养很重要！§r\n" +
    "§f在接近满耐久的情况下造成更高的伤害，但在耐久较低时造成的伤害会降低。");
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

val spartanTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("spartan");
spartanTrait.color = Color.fromHex("e53935").getIntColor(); 
spartanTrait.localizedName = "斯巴达之怒";
spartanTrait.localizedDescription = (
    "§o这里，是，斯巴达！§r\n" +
    "§f在生命垂危时大幅提升攻击伤害。");
spartanTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(!((attacker.health as float / attacker.maxHealth as float) as float > 0.33 as float)) {
        var multiplier as float = 1.75 as float + (1.0 as float - (attacker.health as float / attacker.maxHealth as float * 0.33 as float)) * 1.25 as float;
        return newDamage as float * multiplier as float;
    }
    return newDamage;
};
spartanTrait.register();

val knowledgefulTrait = mods.contenttweaker.tconstruct.TraitBuilder.create("knowledgeful");
knowledgefulTrait.color = Color.fromHex("76ff03").getIntColor(); 
knowledgefulTrait.localizedName = "知识之力";
knowledgefulTrait.localizedDescription = (
    "§o知识就是力量！§r\n" +
    "§f根据攻击者的经验等级提升伤害。每一级提供额外的0.25%伤害，最高800级。");
knowledgefulTrait.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    if(attacker instanceof IPlayer) {
        var player as IPlayer = attacker;
        var xpLevel = player.xp;
        if(xpLevel > 800) {
            xpLevel = 800;
        }
        return newDamage as float * (1.0 as float + xpLevel as float * 0.0025 as float) as float;
    }
    return newDamage;
};
knowledgefulTrait.register();

val matterTrait1 = mods.contenttweaker.tconstruct.TraitBuilder.create("matter_condensing1");
matterTrait1.color = Color.fromHex("691b9a").getIntColor(); 
matterTrait1.localizedName = "物质凝聚";
matterTrait1.localizedDescription = (
    "§o万物皆为物质！§r\n" +
    "§f攻击时有概率获得奇异物质，这是EMC的一种不错的来源。造成的伤害越高，获得的概率越高。");
matterTrait1.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        var chance as double = (damageDealt as double / 120000.0 as double);
        if(chance > 0.025) {
            chance = 0.025;
        }
        if(!(Math.random() as double > chance)) {
            var player as IPlayer = attacker;
            server.commandManager.executeCommand(server, "/give " + player.name + " additions:greedycraft-strange_matter");
        }
    }
};
matterTrait1.register();

val matterTrait2 = mods.contenttweaker.tconstruct.TraitBuilder.create("matter_condensing2");
matterTrait2.color = Color.fromHex("691b9a").getIntColor(); 
matterTrait2.localizedName = "物质凝聚 EX";
matterTrait2.localizedDescription = (
    "§o万物皆为物质！ §d§o§n豪华加强版§r\n" +
    "§f攻击时有概率获得奇异物质，这是EMC的一种不错的来源。造成的伤害越高，获得的概率越高。");
matterTrait2.afterHit = function(trait, tool, attacker, target, damageDealt, wasCritical, wasHit) {
    if(attacker instanceof IPlayer && target instanceof IEntityMob) {
        var chance as double = (damageDealt as double / 50000.0 as double);
        if(chance > 0.05) {
            chance = 0.05;
        }
        if(!(Math.random() as double > chance)) {
            var player as IPlayer = attacker;
            server.commandManager.executeCommand(server, "/give " + player.name + " additions:greedycraft-strange_matter");
        }
    }
};
matterTrait2.register();

val perfectionist = mods.contenttweaker.tconstruct.TraitBuilder.create("perfectionist");
perfectionist.color = Color.fromHex("4caf50").getIntColor(); 
perfectionist.localizedName = "完美主义";
perfectionist.localizedDescription = (
    "§o强迫症的终极救星！§r\n" +
    "§f你的基础伤害会四舍五入到十位数！（计算盔甲减伤前）");
perfectionist.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    return (Math.round(newDamage as float / 10 as float) as float * 10 as float) as float;
};
perfectionist.register();
