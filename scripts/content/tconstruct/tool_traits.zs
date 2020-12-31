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

import mods.ctutils.utils.Math;
import mods.contenttweaker.tconstruct.Material;
import mods.contenttweaker.tconstruct.MaterialBuilder;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import mods.contenttweaker.tconstruct.Trait;
import mods.contenttweaker.tconstruct.TraitDataRepresentation;
import mods.contenttweaker.tconstruct.TraitBuilder;

val poopTrait = TraitBuilder.create("poopy");
poopTrait.color = Color.fromHex("5d4037").getIntColor(); 
poopTrait.localizedName = "恶臭";
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

val pinkyTrait = TraitBuilder.create("pinky");
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

val cotlifestealTrait = TraitBuilder.create("cotlifesteal");
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

val superknockpackTrait = TraitBuilder.create("superknockback");
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

val gambleTrait = TraitBuilder.create("gamble");
gambleTrait.color = Color.fromHex("ffa000").getIntColor(); 
gambleTrait.localizedName = "赌博";
gambleTrait.localizedDescription = (
    "§o这是个看脸的世界！§r\n" +
    "§f你的武器有概率造成双倍伤害，也有更大的概率只造成二分之一的伤害...一切都看脸！");
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
ragingTrait.localizedName = "暴怒";
ragingTrait.localizedDescription = (
    "§o暴击是什么？能吃吗？§r\n" +
    "§f不再能暴击，但提高每击造成的伤害。");
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
levelingdamageTrait.localizedName = "等级伤害";
levelingdamageTrait.addItem(<ore:plateHonor>);
levelingdamageTrait.maxLevel = 3;
levelingdamageTrait.localizedDescription = (
    "§o我要变得更强！§r\n" +
    "§f随着工具等级的提升获得越来越高的攻击力。");
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
    return ["武器伤害加成：" + Math.round((multiplier - 1.0) * 100) as int + "%"] as string[];
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

val visionTrait = TraitBuilder.create("vision");
visionTrait.color = Color.fromHex("ffeb3b").getIntColor(); 
visionTrait.localizedName = "视域";
visionTrait.localizedDescription = (
    "§o正道的光，照在了大地上！§r\n" +
    "§f手持该工具时获得夜视效果。");
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
fortifiedTrait.localizedName = "固若金汤";
fortifiedTrait.localizedDescription = (
    "§o我们未能击穿敌人的装甲！§r\n" +
    "§f格挡成功时获得抗性提升II效果。");
fortifiedTrait.onBlock = function(trait, tool, player, event) {
    if(!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:resistance>.makePotionEffect(99, 1, false, false));
    }
};
fortifiedTrait.register();

val reliableTrait = TraitBuilder.create("reliable");
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

val sacrificialTrait = TraitBuilder.create("sacrificial");
sacrificialTrait.color = Color.fromHex("c62828").getIntColor(); 
sacrificialTrait.localizedName = "天地同寿";
sacrificialTrait.localizedDescription = (
    "§o不成功，便成仁！§r\n" +
    "§f每次攻击时按比例消耗自身生命值造成巨量伤害。生命值越高，消耗越多，伤害越高。");
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

val milkyTrait = TraitBuilder.create("milky");
milkyTrait.color = Color.fromHex("ffffff").getIntColor(); 
milkyTrait.localizedName = "奶香";
milkyTrait.localizedDescription = (
    "§o不是所有牛奶都叫xxx！§r\n" +
    "§f偶尔会清空你的所有状态效果（对，包括正面效果…）");
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

val crystalTrait = TraitBuilder.create("crystal_force");
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

val spartanTrait = TraitBuilder.create("spartan");
spartanTrait.color = Color.fromHex("e53935").getIntColor(); 
spartanTrait.localizedName = "斯巴达之怒";
spartanTrait.localizedDescription = (
    "§o这里，是，斯巴达！§r\n" +
    "§f在生命垂危时大幅提升攻击伤害。");
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
knowledgefulTrait.localizedName = "知识之力";
knowledgefulTrait.localizedDescription = (
    "§o知识就是力量！§r\n" +
    "§f根据攻击者的经验等级提升伤害。每一级提供额外的0.2%伤害，最高300级。");
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

val matterTrait2 = TraitBuilder.create("matter_condensing2");
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

val perfectionist = TraitBuilder.create("perfectionist");
perfectionist.color = Color.fromHex("4caf50").getIntColor(); 
perfectionist.localizedName = "完美主义";
perfectionist.localizedDescription = (
    "§o强迫症的终极救星！§r\n" +
    "§f你的基础伤害会四舍五入到十位数！（计算盔甲减伤前）");
perfectionist.calcDamage = function(trait, tool, attacker, target, originalDamage, newDamage, isCritical) {
    return (Math.round(newDamage as float / 10 as float) as float * 10 as float) as float;
};
perfectionist.register();

val tidal_force = TraitBuilder.create("tidal_force");
tidal_force.color = Color.fromHex("64ffda").getIntColor(); 
tidal_force.localizedName = "潮汐之力";
tidal_force.localizedDescription = (
    "§o宁就是海王？§r\n" +
    "§f持握时获得水下呼吸效果，并且在水中或雨中时能够造成更多伤害！");
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
holdGroundTrait.localizedName = "坚守阵地";
holdGroundTrait.localizedDescription = (
    "§o我们已经无路可退！§r\n" +
    "§f手持该工具潜行时提高造成的伤害且在格挡时获得力量效果！");
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
motionTrait.localizedName = "影流之主";
motionTrait.localizedDescription = (
    "§o生命在于运动！§r\n" +
    "§f疾跑时大幅提高造成的伤害和击退，不过由于向敌人暴露了弱点，你也会受到更多的伤害！");
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
executionerTrait.localizedName = "刽子手";
executionerTrait.localizedDescription = (
    "§o我是个莫得感情的杀手！§r\n" +
    "§f当敌方生命值低于20% (Boss 为 10%) 时直接斩杀对手。");
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
penetrationTrait.localizedName = "破甲";
penetrationTrait.localizedDescription = (
    "§o你的盔甲就是一堆废铁！§r\n" +
    "§f根据敌方的盔甲值造成额外的伤害。");
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
thronyTrait.localizedName = "荆棘之触";
thronyTrait.localizedDescription = (
    "§o啊嗷嗷嗷，好疼！§r\n" +
    "§f格挡时使敌人受到少量伤害。");
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
