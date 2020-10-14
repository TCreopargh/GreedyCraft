#priority 20
#disable_search_tree
mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/illuminationpowder");

mods.astralsorcery.Altar.addDiscoveryAltarRecipe("shinydust", <astralsorcery:itemusabledust> * 16, 100, 100, [
            null, <ore:dustGlowstone>, null,
            <ore:dustGlowstone>, <ore:fallenStar>, <ore:dustGlowstone>,
            null, <ore:dustGlowstone>, null]);