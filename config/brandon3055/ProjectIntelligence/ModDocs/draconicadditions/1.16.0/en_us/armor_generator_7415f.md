§align:center
##### §nArmor Generator§n

§stack[draconicadditions:armor_generator]{size:64}

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
This generator produces RF from all types of armor.

Base generation speed is 50 RF/t, but it scales up with armor toughness and enchants.
How much RF is generated depends on the remaining durability, protection level, and enchants on said armor.
For those that are curious, the actual calculations are as follows; 
Total RF produced = 20 * protectionLevel * durability * (1 + (totalLevelsOfEnchants / 10))
RF/t  produced = 50 * (1 + (totalLevelsOfEnchants / 10))

An example for an Iron Chestplate at full durability and enchanted with Protection III:
Total RF produced = 37440 RF
RF/t produced = 65 RF/t

This machine can be upgraded to accept liquid Chaos, improving it's generation drastically.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}
§recipe[draconicadditions:armor_generator]{spacing:2}
§rule{colour:0x606060,height:3,width:100%,top_pad:3}