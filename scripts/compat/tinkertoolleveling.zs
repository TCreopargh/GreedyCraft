/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 800
#no_fix_recipe_book

import crafttweaker.game.IGame;
import mods.zenutils.I18n;

for i in 0 to 4096 {
    var num as int = i;
    var str as string = ""; 
    while num >= 625 {
        str += "§c☯";
        num -= 625;
    }
    while num >= 125 {
        str += "§6⚜";
        num -= 100;
    }
    while num >= 25 {
        str += "§d♔";
        num -= 10;
    }
    while num >= 5 {
        str += "§b✪";
        num -= 5;
    }
    while num >= 1 {
        str += "§e★";
        num -= 1;
    }
    var msg as string = "§a你的 §7[§e%s§7]§a 已升至§b" + i + "§a级！";
    var msgEng as string = "§aYour §7[§e%s§7]§a has reached level §b" + i + "§a!";
    game.setLocalization("tooltip.level." + i, str);
    game.setLocalization("zh_cn", "message.levelup." + i, msg);
    game.setLocalization("en_us", "message.levelup." + i, msgEng);
}

game.setLocalization("zh_cn", "message.levelup.generic", "§a你的 §7[§r%s§7]§a 已升至等级§b%s§a！");
game.setLocalization("en_us", "message.levelup.generic", "§aYour §7[§r%s§7]§a has reached level §b%s§a!");
