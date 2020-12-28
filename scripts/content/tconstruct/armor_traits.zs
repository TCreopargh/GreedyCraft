/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker

#modloaded tconstruct
#modloaded conarm

#priority 2601

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

val warmTrait = ArmorTraitBuilder.create("warm");
warmTrait.color = Color.fromHex("2196f3").getIntColor();
warmTrait.localizedName = "温暖";
warmTrait.localizedDescription = (
    "§o保暖最重要！§r\n" +
    "§f在寒冷的生物群系中降低受到的伤害，下雪时效果更好！");
warmTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var reduction = 0.0 as float;
    if(!isNull(player) && player.world.getBiome(player.position).isSnowyBiome) {
        reduction += 0.05 as float;
        if(player.world.raining) {
            reduction += 0.025 as float;
        }
    }
    return newDamage * (1.0 as float - reduction as float) as float;
};
warmTrait.register();

val fortifiedTrait = ArmorTraitBuilder.create("fortified");
fortifiedTrait.color = Color.fromHex("bbbbbb").getIntColor();
fortifiedTrait.localizedName = "固若金汤";
fortifiedTrait.localizedDescription = (
    "§o我们未能击穿敌人的盔甲！§r\n" +
    "§f提高对于投掷物的保护！");
fortifiedTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(source.isProjectile()) {
        return (newDamage * 0.85 as float) as float;
    }
    return newDamage;
};
fortifiedTrait.register();

val infernoTrait = ArmorTraitBuilder.create("inferno");
infernoTrait.color = Color.fromHex("ff5722").getIntColor();
infernoTrait.localizedName = "炼狱之炎";
infernoTrait.localizedDescription = (
    "§o用火焰铸造！§r\n" +
    "§f有概率使攻击者着火！");
infernoTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
        var attacker as IEntity = source.getTrueSource();
        if(Math.random() < 0.2) {
            attacker.setFire(8);
        }
    }
    return newDamage;
};
infernoTrait.register();

val cryonicTrait = ArmorTraitBuilder.create("cryonic");
cryonicTrait.color = Color.fromHex("00e5ff").getIntColor();
cryonicTrait.localizedName = "极寒";
cryonicTrait.localizedDescription = (
    "§o冻住，不许走！§r\n" +
    "§f被攻击时有概率使攻击者迟缓！");
cryonicTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
        var attacker as IEntityLivingBase = source.getTrueSource();
        if(Math.random() < 0.2) {
            attacker.addPotionEffect(<potion:minecraft:slowness>.makePotionEffect(200, 2, false, false));
        }
    }
    return newDamage;
};
cryonicTrait.register();

val knowledgefulTrait = ArmorTraitBuilder.create("knowledgeful");
knowledgefulTrait.color = Color.fromHex("76ff03").getIntColor();
knowledgefulTrait.localizedName = "知识之盾";
knowledgefulTrait.localizedDescription = (
    "§o知识就是力量！§r\n" +
    "§f根据你当前的经验值提升伤害减免效果，最高800级！");
knowledgefulTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var reduction = 0.0 as float;
    if(!isNull(player)) {
        reduction = (player.xp / 800) as float * 0.5 as float;
    }
    return newDamage * (1.0 - 0.25 as float * reduction as float) as float;
};
knowledgefulTrait.register();

val visionTrait = ArmorTraitBuilder.create("vision");
visionTrait.color = Color.fromHex("ffeb3b").getIntColor();
visionTrait.localizedName = "视域";
visionTrait.localizedDescription = (
    "§o正道的光，照在了大地上！§r\n" +
    "§f穿戴盔甲时获得夜视效果！");
visionTrait.onAbility = function(trait, level, world, player) {
    if(!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:night_vision>.makePotionEffect(330, 2, false, false));
    }
};
visionTrait.register();

val tidalForceTrait = ArmorTraitBuilder.create("tidal_force");
tidalForceTrait.color = Color.fromHex("69f0ae").getIntColor();
tidalForceTrait.localizedName = "潮汐之力";
tidalForceTrait.localizedDescription = (
    "§o宁就是海王？§r\n" +
    "§f穿戴盔甲时获得水下呼吸效果！");
tidalForceTrait.onAbility = function(trait, level, world, player) {
    if(!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:water_breathing>.makePotionEffect(25, 2, false, false));
    }
};
tidalForceTrait.register();

val spartanTrait = ArmorTraitBuilder.create("spartan");
spartanTrait.color = Color.fromHex("fdd835").getIntColor();
spartanTrait.localizedName = "斯巴达之怒";
spartanTrait.localizedDescription = (
    "§o这里，是，斯巴达！§r\n" +
    "§f生命垂危时大幅降低受到的伤害！");
spartanTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var reduction = 0.0 as float;
    if((player.health as float / player.maxHealth as float) as float < 0.33 as float) {
        reduction = 0.3 as float + (1.0 as float - player.health as float / (player.maxHealth as float * 0.33 as float)) * 0.45 as float;
    }
    return newDamage * (1.0 as float - 0.25 as float * reduction as float) as float;
};
spartanTrait.register();

val crystalTrait = ArmorTraitBuilder.create("crystal_force");
crystalTrait.color = Color.fromHex("18ffff").getIntColor(); 
crystalTrait.localizedName = "水晶之力";
crystalTrait.localizedDescription = (
    "§o保养很重要！§r\n" +
    "§f在接近满耐久的情况下提供更高的伤害减免，但耐久过低时会受到更多伤害。");
crystalTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var damagePercent as float = 1.0 as float;
    if(armor.maxDamage != 0) {
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
secondLifeTrait.localizedName = "起死回生";
secondLifeTrait.localizedDescription = (
    "§o垂死病中惊坐起！§r\n" +
    "§f在受到低于自己最大生命值的致命伤害时，有概率抵消该次伤害，并获得一小段时间的无敌效果。");
secondLifeTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && damage < player.maxHealth && !source.isDamageAbsolute()) {
        if(damage > player.health && Math.random() < 0.05) {
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
perfectionistTrait.localizedName = "完美主义";
perfectionistTrait.localizedDescription = (
    "§o真是太完美了！§r\n" +
    "§f将受到的伤害四舍五入到最近的5的倍数！（对于小于5点的伤害无效，并且此后可能进行更多计算使最终伤害不是5的倍数）");
perfectionistTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && newDamage > 5.0) {
        return (Math.round(newDamage / 5.0) as float * 5.0 as float) as float;
    }
    return newDamage as float;
};
perfectionistTrait.register();

val gambleTrait = ArmorTraitBuilder.create("gamble");
gambleTrait.color = Color.fromHex("fdd835").getIntColor(); 
gambleTrait.localizedName = "赌博";
gambleTrait.localizedDescription = (
    "§o这是个看脸的世界！§r\n" +
    "§f穿戴盔甲有概率将受到的伤害降低10倍，同时也有很小的概率受到10倍伤害...一切都看脸！");
gambleTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(Math.random() < 0.005) {
        return newDamage * 10.0 as float;
    }
    if(Math.random() < 0.05) {
        return (newDamage / 10.0 as float) as float;
    }
    return newDamage;
};
gambleTrait.register();

val firstGuardTrait = ArmorTraitBuilder.create("first_guard");
firstGuardTrait.color = Color.fromHex("f44336").getIntColor(); 
firstGuardTrait.localizedName = "第一防线";
firstGuardTrait.localizedDescription = (
    "§o后发优势！§r\n" +
    "§f满血时降低受到的伤害！");
firstGuardTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && (player.maxHealth - player.health) as float < 1.0 as float) {
        return (newDamage * 0.84 as float) as float;
    }
    return newDamage;
};
firstGuardTrait.register();

val levelingdefenseTrait = ArmorTraitBuilder.create("levelingdefense");
levelingdefenseTrait.color = Color.fromHex("7e57c2").getIntColor(); 
levelingdefenseTrait.localizedName = "等级伤害";
levelingdefenseTrait.addItem(<ore:plateHonor>);
levelingdefenseTrait.maxLevel = 1;
levelingdefenseTrait.localizedDescription = (
    "§o我要变得更强！§r\n" +
    "§f随着盔甲等级的提升获得越来越高的伤害减免效果。");
levelingdefenseTrait.extraInfo = function(thisTrait, item, tag) {
    if(isNull(tag) || isNull(tag.memberGet("Modifiers"))) {
        return [] as string[];
    }
    var modifiers = tag.memberGet("Modifiers") as IData;
    var armorLevel = {} as IData;
    if(modifiers.asString().contains("leveling_armor")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if(current.asString().contains("leveling_armor")) {
                armorLevel = current;
                break;
            }
        }
    }
    var multiplier as float = 0.0 as float;
    if(!isNull(armorLevel.memberGet("level"))) {
        var level = armorLevel.memberGet("level").asInt() as int;
        while(level > 0) {
            level -= 1;
            multiplier += 0.05 as float;
        }
        if(multiplier > 1.0 as float) {
            multiplier = 1.0 as float + (multiplier as float - 1.0 as float) / 4.0 as float;
        }
    }
    multiplier *= 0.25 as float;
    var percentage as int = Math.round((1.0 as float - (1.0 as float / (multiplier + 1.0 as float))) * 100.0 as float) as int;
    var desc as string[] = ["§9伤害减免：" + percentage + "%"];
    return desc;
};
levelingdefenseTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    var modifiers = armor.tag.memberGet("Modifiers") as IData;
    var armorLevel = {} as IData;
    if(modifiers.asString().contains("leveling_armor")) {
        for i in 0 to modifiers.length {
            var current as IData = modifiers[i];
            if(current.asString().contains("leveling_armor")) {
                armorLevel = current;
                break;
            }
        }
    }
    var multiplier as float = 0.0 as float;
    if(!isNull(armorLevel.memberGet("level"))) {
        var level = armorLevel.memberGet("level").asInt() as int;
        while(level > 0) {
            level -= 1;
            multiplier += 0.05 as float;
        }
        if(multiplier > 1.0 as float) {
            multiplier = 1.0 as float + (multiplier - 1.0 as float) / 4.0 as float;
        }
    }
    multiplier *= 0.25f;
    return (newDamage / (multiplier + 1.0)) as float;
};
levelingdefenseTrait.register();

val luckyTrait = ArmorTraitBuilder.create("lucky");
luckyTrait.color = Color.fromHex("00e676").getIntColor(); 
luckyTrait.localizedName = "幸运";
luckyTrait.localizedDescription = (
    "§o脱非入欧！§r\n" +
    "§f穿戴该盔甲时获得幸运效果！");
luckyTrait.onAbility = function(trait, level, world, player) {
    if(!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:luck>.makePotionEffect(25, 0, false, false));
    }
};
luckyTrait.register();

val purifyingTrait = ArmorTraitBuilder.create("purifying");
purifyingTrait.color = Color.fromHex("eeeeee").getIntColor(); 
purifyingTrait.localizedName = "净化";
purifyingTrait.localizedDescription = (
    "§o出淤泥而不染！§r\n" +
    "§f使你免疫凋零效果！");
purifyingTrait.onAbility = function(trait, level, world, player) {
    if(!isNull(player)) {
        if(player.isPotionActive(<potion:minecraft:wither>)) {
            player.removePotionEffect(<potion:minecraft:wither>);
        }
    }
};
purifyingTrait.register();

val milkyTrait = ArmorTraitBuilder.create("milky");
milkyTrait.color = Color.fromHex("ffffff").getIntColor(); 
milkyTrait.localizedName = "奶香";
milkyTrait.localizedDescription = (
    "§o不是所有牛奶都叫xxx！§r\n" +
    "§f偶尔会清空你的所有状态效果（对，包括正面效果…）");
milkyTrait.onAbility = function(trait, level, world, player) {
    if(!isNull(player)) {
        if(world.getWorldTime() as long % 18000 == 0) {
            player.clearActivePotions();
        }
    }
};
milkyTrait.register();

val poopTrait = ArmorTraitBuilder.create("poopy");
poopTrait.color = Color.fromHex("6d4c41").getIntColor(); 
poopTrait.localizedName = "恶臭";
poopTrait.localizedDescription = (
    "§o这么臭的盔甲有穿的必要么（恼）§r\n" +
    "§f大概会被熏死的吧…");
poopTrait.onAbility = function(trait, level, world, player) {
    if(!isNull(player)) {
        player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(25, 0, false, false));
    }
};
poopTrait.register();

val trueDefenseTrait = ArmorTraitBuilder.create("true_defense");
trueDefenseTrait.color = Color.fromHex("33ffff").getIntColor(); 
trueDefenseTrait.localizedName = "真实防御";
trueDefenseTrait.localizedDescription = (
    "§o真伤也奈何不了我！§r\n" +
    "§f降低穿戴者受到的真实伤害！");
trueDefenseTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && source.isDamageAbsolute()) {
        return (newDamage as float * 0.9 as float) as float;
    }
    return newDamage as float;
};
trueDefenseTrait.register();

val holdGroundTrait = ArmorTraitBuilder.create("hold_ground");
holdGroundTrait.color = Color.fromHex("f44336").getIntColor(); 
holdGroundTrait.localizedName = "坚守阵地";
holdGroundTrait.localizedDescription = (
    "§o我们已经无路可退！§r\n" +
    "§f潜行时降低受到的伤害且不会被击退！");
holdGroundTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && player.isSneaking) {
        return (newDamage as float * 0.92 as float) as float;
    }
    return newDamage as float;
};
holdGroundTrait.onKnockback = function(trait, armor, player, evt) {
    if(!isNull(player) && player.isSneaking) {
        evt.cancel();
    }
};
holdGroundTrait.register();

val motionTrait = ArmorTraitBuilder.create("motion");
motionTrait.color = Color.fromHex("ffee58").getIntColor(); 
motionTrait.localizedName = "影流之主";
motionTrait.localizedDescription = (
    "§o生命在于运动！§r\n" +
    "§f疾跑时降低受到的伤害，不过你因为重心不稳更容易被击退！");
motionTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && player.isSprinting) {
        return (newDamage as float * 0.93 as float) as float;
    }
    return newDamage as float;
};
motionTrait.onKnockback = function(trait, armor, player, evt) {
    if(!isNull(player) && player.isSprinting) {
        evt.strength = (evt.strength * 1.4) as float;
    }
};
motionTrait.register();

val kungfuTrait = ArmorTraitBuilder.create("kungfu");
kungfuTrait.color = Color.fromHex("ffc107").getIntColor(); 
kungfuTrait.localizedName = "掌门人";
kungfuTrait.localizedDescription = (
    "§o我大E了，没有闪！§r\n" +
    "§f有概率闪避敌人的攻击，并获得一段时间的速度加成！\n§f但因为年轻人不讲武德，幼年怪物的攻击无法闪避且会对你造成更多的伤害，这好吗？这不好。");
kungfuTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player) && !isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
        var attacker as IEntityLivingBase = source.getTrueSource();
        if(attacker.isChild) {
            return (newDamage * 1.125 as float) as float;
        }
    }
    if(!isNull(player) && !source.isDamageAbsolute()) {
        if(Math.random() < 0.04) {
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
thronyTrait.localizedName = "荆棘之触";
thronyTrait.localizedDescription = (
    "§o来而不往非礼也！§r\n" +
    "§f使攻击者受到少量伤害！");
thronyTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player)) {
        if(!isNull(source.getTrueSource()) && source.getTrueSource() instanceof IEntityLivingBase) {
            var attacker as IEntityLivingBase = source.getTrueSource();
            var source as IDamageSource = IDamageSource.createThornsDamage(player);
            attacker.attackEntityFrom(source, damage * 0.04);
        }
    }
    return newDamage as float;
};
thronyTrait.register();

val enduranceTrait = ArmorTraitBuilder.create("endurance");
enduranceTrait.color = Color.fromHex("3f51b5").getIntColor(); 
enduranceTrait.localizedName = "耐力";
enduranceTrait.localizedDescription = (
    "§o你在这挠痒痒呢？§r\n" +
    "§f大幅降低低于自身生命值5%的伤害！");
enduranceTrait.onHurt = function(trait, armor, player, source, damage, newDamage, evt) {
    if(!isNull(player)) {
        if(newDamage < (player.maxHealth * 0.05f) as float) {
            return newDamage * 0.5f as float;
        }
    }
    return newDamage as float;
};
enduranceTrait.register();
