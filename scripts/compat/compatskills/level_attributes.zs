/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */
#priority 70
#no_fix_recipe_book

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.data.IData;
import crafttweaker.damage.IDamageSource;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.player.IPlayer;
import crafttweaker.util.Position3f;
import crafttweaker.block.IBlock;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.world.IFacing;
import crafttweaker.command.ICommandSender;
import crafttweaker.entity.AttributeModifier;
import crafttweaker.entity.AttributeInstance;
import crafttweaker.entity.Attribute;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.PlayerPickupXpEvent;

import mods.compatskills.Skill;
import mods.ctutils.utils.Math;
import mods.ctutils.world.IGameRules;

static storedSkills as int[string][string] = {

};

static skills as Skill[string] = {
    "agility": <skill:reskillable:agility>,
    "attack": <skill:reskillable:attack>,
    "building": <skill:reskillable:building>,
    "defense": <skill:reskillable:defense>,
    "farming": <skill:reskillable:farming>,
    "gathering": <skill:reskillable:gathering>,
    "magic": <skill:reskillable:magic>,
    "mining": <skill:reskillable:mining>
};

static uuidMap as string[string] = {
    "agility": "57ea5897-3fb6-4195-95bf-ecc73bea21d1",
    "attack": "342aa518-16b6-411a-b669-fe9990f23996",
    "building": "0a63f71a-2a53-4bcb-bd07-c09f38505c3c",
    "defense": "435d4eef-9c4a-4cd4-b09b-dfd06841c513",
    "farming": "ac3eadf6-f053-4e0a-8b26-d76f438a3811",
    "gathering": "146011aa-088b-418e-ab1c-895492fa2371",
    "magic": "e436085a-dc4f-48b7-a7b3-91eff8eeb11e",
    "mining": "55db8e3b-905a-4802-a6b4-bbe2bc403da7"
};

function getLevel(level as int) as int {
    if (level == 50) {
        return 50;
    }
    return level - 1;
}

events.onPlayerTick(function(event as PlayerTickEvent) {

    var player as IPlayer = event.player;

    if (event.phase != "END" || event.side != "SERVER") {
        return;
    }

    // Attribute Modifiers
    if (player.world.getWorldTime() as long % 20 == 0) {
        var playerSkills as int[string] = null;
        if (!isNull(storedSkills[player.uuid])) {
            playerSkills = storedSkills[player.uuid] as int[string];
        }
        for skillName in skills {
            var oldLevel as int = 0;
            if (!isNull(playerSkills) && !isNull(playerSkills[skillName])) {
                oldLevel = playerSkills[skillName] as int;
            }
            var skill as Skill = skills[skillName];
            var level as int = player.skillData.getSkillInfo(skill).getLevel() as int;
            if (level != oldLevel) {
                var uuid as string = uuidMap[skillName];
                if (skillName == "agility") {
                    var attribute as AttributeInstance = player.getAttribute("generic.movementSpeed");
                    var amount as double = 0.01 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 1, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                } else if (skillName == "attack") {
                    var attribute as AttributeInstance = player.getAttribute("generic.attackDamage");
                    var amount as double = 0.01 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 1, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                } else if (skillName == "building") {
                    var attribute as AttributeInstance = player.getAttribute("generic.armorToughness");
                    var amount as double = 0.2 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 0, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                } else if (skillName == "defense") {
                    var attribute as AttributeInstance = player.getAttribute("generic.armor");
                    var amount as double = 0.5 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 0, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                } else if (skillName == "farming") {
                    var attribute as AttributeInstance = player.getAttribute("generic.maxHealth");
                    var amount as double = 1.0 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 0, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                    if (oldLevel != 0) {
                        player.health = player.health + (1.0 * (level - oldLevel)) as float;
                    } else {
                        player.health = player.health + (1.0 * getLevel(level)) as float;
                    }
                } else if (skillName == "gathering") {
                    var attribute as AttributeInstance = player.getAttribute("generic.luck");
                    var amount as double = 0.05 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 0, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                } else if (skillName == "mining") {
                    var attribute as AttributeInstance = player.getAttribute("generic.attackSpeed");
                    var amount as double = 0.03 * getLevel(level);
                    var modifier as AttributeModifier = AttributeModifier.createModifier("reskillable_skill_boost_" + skillName, amount, 0, uuid);
                    if (!isNull(attribute.getModifier(uuid))) {
                        attribute.removeModifier(uuid);
                    }
                    attribute.applyModifier(modifier);
                }
            }
        }
        var newSkills as int[string] = {};
        for skillName in skills {
            var skill as Skill = skills[skillName];
            var level as int = player.skillData.getSkillInfo(skill).getLevel();
            newSkills[skillName] = level as int;
        }
        storedSkills[player.uuid] = newSkills as int[string];
    }
});

events.onPlayerPickupXp(function (event as PlayerPickupXpEvent) {
    var player as IPlayer = event.player;
    var level as int = getLevel(player.skillData.getSkillInfo(<skill:reskillable:magic>).getLevel() as int);
    var addedAmount as int = Math.ceil((event.xp as double * (0.02 * level as double) as double)) as int;
    player.addExperience(addedAmount);
});

events.onPlayerRespawn(function (event as PlayerRespawnEvent) {
    var player as IPlayer = event.player;
    storedSkills[player.uuid] = null;
});

events.onPlayerLoggedIn(function (event as PlayerLoggedInEvent) {
    var player as IPlayer = event.player;
    storedSkills[player.uuid] = null;
});
