/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */

#priority 32020

import mods.ctutils.utils.Math;

// For calculating power of int values 
function pow(base as int, exp as int) as long {
    var ret as long = 1 as long;
    for i in 0 to exp {
        ret *= base;
    }
    return ret as long;
}
