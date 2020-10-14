#priority 40
#disable_search_tree

import mods.dropt.Dropt;

Dropt.list("bedrock")
	.add(Dropt.rule()
    .matchBlocks(["minecraft:bedrock:*"])
	.replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;10;-1")
    )
    .addDrop(Dropt.drop().items([<minecraft:bedrock>])));
	
Dropt.list("end_portal_frame")
	.add(Dropt.rule()
    .matchBlocks(["minecraft:end_portal_frame:*"])
	.replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;5;-1")
      )
      .addDrop(Dropt.drop().items([<minecraft:end_portal_frame>])
));

Dropt.list("barrier")
	.add(Dropt.rule()
    .matchBlocks(["minecraft:barrier:*"])
	.replaceStrategy("ADD")
    .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [], "pickaxe;12;-1")
      )
      .addDrop(Dropt.drop().items([<minecraft:barrier>])
));
