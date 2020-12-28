/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 400

import mods.compatskills.NBTLock;

NBTLock.addGenericNBTLock({ench:[{lvl:1 as short, id:33}]}, "reskillable:gathering|12");
NBTLock.addGenericNBTLock({ench:[{lvl:10 as short, id:32}]}, "reskillable:gathering|16");
NBTLock.addGenericNBTLock({ench:[{lvl:10 as short}]}, "reskillable:combat|50", "reskillable:gathering|50", "reskillable:magic|50");
NBTLock.addGenericNBTLock({ench:[{lvl:9 as short}]}, "reskillable:combat|50", "reskillable:gathering|50", "reskillable:magic|50");
NBTLock.addGenericNBTLock({ench:[{lvl:8 as short}]}, "reskillable:combat|50", "reskillable:gathering|50", "reskillable:magic|50");
NBTLock.addGenericNBTLock({ench:[{lvl:7 as short}]}, "reskillable:combat|50", "reskillable:gathering|50", "reskillable:magic|50");
