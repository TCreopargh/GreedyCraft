/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 32010
#no_fix_recipe_book

import mods.ctintegration.util.DateUtil;
import mods.ctintegration.date.IDate;   

function isChristmas() as bool {
    return DateUtil.now().month == DateUtil.DECEMBER() && DateUtil.now().day >= 15 && DateUtil.now().day <= 26;
}

function isHalloween() as bool {
    return DateUtil.now().month == DateUtil.OCTOBER() && DateUtil.now().day >= 20 && DateUtil.now().day <= 30;
}

function isNewYear() as bool {
    return DateUtil.now().month == DateUtil.JANUARY() && DateUtil.now().day <= 3;
}

function isLunarNewYear() as bool {
    var date as IDate = DateUtil.now();
    if (date.year == 2021) {
        return date.month == DateUtil.FEBRUARY() && date.day >= 10 && date.day <= 24;
    } else if (date.year == 2022) {
        return (date.month == DateUtil.FEBRUARY() && date.day >= 1 && date.day <= 12) || (date.month == DateUtil.JANUARY() && date.day >= 30);
    } else if (date.year == 2023) {
        return date.month == DateUtil.JANUARY() && date.day >= 20 && date.day <= 31;
    } else if (date.year == 2024) {
        return date.month == DateUtil.FEBRUARY() && date.day >= 8 && date.day <= 22;
    } else if (date.year == 2025) {
        return (date.month == DateUtil.FEBRUARY() && date.day >= 1 && date.day <= 10) || (date.month == DateUtil.JANUARY() && date.day >= 27);
    } else if (date.year == 2026) {
        return date.month == DateUtil.FEBRUARY() && date.day >= 15 && date.day <= 28;
    } else if (date.year == 2027) {
        return date.month == DateUtil.FEBRUARY() && date.day >= 4 && date.day <= 18;
    }
    return false;
}
