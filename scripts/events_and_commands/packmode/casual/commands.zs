/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission. 
 */ 

#priority 50
#no_fix_recipe_book
#packmode casual
// Powered by TCreopargh
import crafttweaker.event.CommandEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.item.IItemStack;
import crafttweaker.event.EntityLivingDeathEvent;
import mods.ctutils.utils.Math;
import crafttweaker.data.IData;
import mods.ctutils.world.IGameRules;
import mods.zenutils.command.ZenCommand;
import crafttweaker.text.ITextComponent;

function isWuss(player as IPlayer) as bool {
    return (player.creative || (player.world.getGameRules().hasRule("doWussMode") && player.world.getGameRules().getBoolean("doWussMode")) || player.hasGameStage("iswuss")); 
}

events.onCommand(function (event as CommandEvent) {

    val command = event.command;
    if (isNull(command) || (command.name != "gamestage") || (event.parameters.length == 0)) {
        return;
    }
    
    if (event.commandSender instanceof IPlayer) {
        if (!isNull(event.parameters[2]) && event.parameters[2] == "iswuss") {
            val player as IPlayer = event.commandSender;    
                event.cancel();
                player.server.commandManager.executeCommand(player.server, "/kill " + player.name);
                player.sendRichTextMessage(ITextComponent.fromTranslation("greedycraft.event.anticheat.wtf"));
        }
    }
});    

val wussMode as ZenCommand = ZenCommand.create("wussmode");
wussMode.getCommandUsage = function(sender) {
    return game.localize("greedycraft.command.wussmode.usage"); 
};
wussMode.requiredPermissionLevel = 2;
wussMode.execute = function(command, server, sender, args) {
    server.commandManager.executeCommand(server, "/tellraw @a {\"text\":\"" + game.localize("greedycraft.event.anticheat.casual.broadcast") + "\"}");
};
wussMode.register();