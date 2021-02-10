§align:center
###### §nPower Item Filter§n
§stack[enderio:item_power_item_filter]{size:18,enable_tooltip:false} 
§align:left
The Mod Item Filter allows you to filter based upon the amount of energy (µI or Forge Energy) that is stored in an item.

It has two buttons that allow you to set how it filters:

The left button determines if an item must have "more", "more or equal", "less", "less or equal", or "equal" amounts of energy to the configured value. Please note that "equal" only works well for "100%" (completely full) because items don't usually use their energy in 1µI steps.

The right button determines the value to compare to: 0%, 25%, 50%, 75% or 100%. The percentage is relative to the maximum amount of energy stored in the item.

§4§nNote:§r This filter depends on the *item* correctly reporting its energy level.

§rule{colour:0x606060,height:3,width:100%,top_pad:0}

§recipe[enderio:item_power_item_filter]{spacing:4}