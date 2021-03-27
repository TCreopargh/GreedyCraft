/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32000
#no_fix_recipe_book

import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

import mods.zenutils.I18n;

import scripts.util.versions as VersionUtil;

// Server side translation
static translations as string[string][string] = {
    en_us: {
        "greedycraft.scoreboard.creative_mode": "§d§lCreative",
        "greedycraft.scoreboard.cheat_mode": "§c§lCheats",
        "greedycraft.scoreboard.true_hero": "§e%s§7-§6§lTrueHero!",
        "greedycraft.scoreboard.title": "§b§lGreedyCraft§r §6v%s",
        "greedycraft.scoreboard.mode.adventure": "§9Mode§7-§6Adventure",
        "greedycraft.scoreboard.mode.casual": "§9Mode§7-§aCasual",
        "greedycraft.scoreboard.mode.expert": "§9Mode§7-§cExpert",
        "greedycraft.scoreboard.author": "§eBy§7-§dTCreopargh",
        "greedycraft.stage.unfamiliar.name": "§5§ka§r §dUnknown Item §5§ka§r",
        "greedycraft.stage.wither_skull.name": "§cThe Cursed Skull",
        "greedycraft.stage.disabled_item.name": "§4Disabled Item",
        "greedycraft.omnipedia.name": "§d§ka§r §bThe Omnipedia §d§ka§r",
        "greedycraft.omnipedia.tooltip": "§a§oOmnipedia, the free encyclopedia.",
        "greedycraft.omnipedia.version": "§6Edition #%s"
    }, 
    zh_cn: {
        "greedycraft.scoreboard.creative_mode": "§d§l创造模式",
        "greedycraft.scoreboard.cheat_mode": "§c§l作弊模式",
        "greedycraft.scoreboard.true_hero": "§e%s§6§l，永远的神！",
        "greedycraft.scoreboard.title": "§b§l贪婪整合包§r §6v%s",
        "greedycraft.scoreboard.mode.adventure": "§9游戏模式：§6冒险",
        "greedycraft.scoreboard.mode.casual": "§9游戏模式：§a休闲",
        "greedycraft.scoreboard.mode.expert": "§9游戏模式：§c专家",
        "greedycraft.scoreboard.author": "§eBy：§dTCreopargh",
        "greedycraft.stage.unfamiliar.name": "§5§ka§r §d未知物品 §5§ka§r",
        "greedycraft.stage.wither_skull.name": "§c无法直视的头颅",
        "greedycraft.stage.disabled_item.name": "§4已禁用的物品",
        "greedycraft.omnipedia.name": "§d§ka§r §b百科全书 §d§ka§r",
        "greedycraft.omnipedia.tooltip": "§a§o好好看书了吗？",
        "greedycraft.omnipedia.version": "§6第%s版"
    }
};

function broadcast(msg as ITextComponent) {
    var players as IPlayer[] = server.getPlayers() as IPlayer[];
    for player in players {
        player.sendRichTextMessage(msg);
    }
}

function getLanguage() as string {
    var lang as string = game.localize("greedycraft.language");
    var ret as string = "en_us";
    if (isNull(lang) || lang == "greedycraft.language" || lang == "") {
        if (DEFAULT_LANGUAGE.trim() == "") {
            if (VersionUtil.getVersionGroup() == 0) {
                ret = "zh_cn";
            } else {
                ret = "en_us";
            }
        } else {
            ret = DEFAULT_LANGUAGE.trim();
        }
    } else {
        if (DEFAULT_LANGUAGE.trim() == "") {
            ret = lang;
        } else {
            ret = DEFAULT_LANGUAGE.trim();
        }
    }
    if (!(SUPPORTED_LANGUAGES has ret)) {
        return "en_us";
    }
    return ret;
}

function translate(key as string) as string {
    var lang = getLanguage();
    if (translations has lang) {
        if (translations[lang] has key) {
            return translations[lang][key];
        } else {
            return game.localize(key);
        }
    } else {
        if (translations["en_us"] has key) {
            return translations["en_us"][key];
        } else {
            return game.localize(key);
        }
    }
}

function format(key as string, obj as string) as string {
    var lang = getLanguage();
    if (translations has lang) {
        if (translations[lang] has key) {
            return translations[lang][key].replace("%s", obj);
        } else {
            return I18n.format(key, obj);
        }
    } else {
        if (translations["en_us"] has key) {
            return translations["en_us"][key].replace("%s", obj);
        } else {
            return I18n.format(key, obj);
        }
    }
}

function formatArray(key as string, objects as string[]) as string {
    var lang = getLanguage();
    if (translations has lang) {
        if (translations[lang] has key) {
            var str as string = translations[lang][key];
            for obj in objects {
                str = str.replaceFirst("%s", obj);
            }
            return str;
        } else {
            return I18n.format(key, objects);
        }
    } else {
        if (translations["en_us"] has key) {
            var str as string = translations["en_us"][key];
            for obj in objects {
                str = str.replaceFirst("%s", obj);
            }
            return str;
        } else {
            return I18n.format(key, objects);
        }
    }
}
