/*
 * This script is created for the GreedyCraft modpack by TCreopargh.
 * You may NOT use this script in any other publicly distributed modpack without my permission.
 */

#loader contenttweaker 
#priority 2200
#no_fix_recipe_book

// For other items added by this modpack, please go to the /addons/additions folder.

import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;
import crafttweaker.block.IBlock;
import crafttweaker.item.IItemDefinition;
import crafttweaker.block.IBlockState;
import crafttweaker.world.IBlockPos;
import crafttweaker.player.IPlayer;
import crafttweaker.text.ITextComponent;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.BlockPos;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.ResourceLocation;
import mods.zenutils.I18n;

var eTablet = VanillaFactory.createItem("tablet_of_enlightenment");
eTablet.rarity = "RARE";
eTablet.maxStackSize = 1;
eTablet.localizedNameSupplier = function(itemStack) {
	var str = "§b" + game.localize("item.contenttweaker.tablet_of_enlightenment.name");
    if(itemStack.tag has "stage") {
        var stage as string = itemStack.tag.memberGet("stage") as string;
        str += " " + I18n.format("greedycraft.content.tablet_of_enlightenment.stage", stage);
    }
    if(itemStack.tag has "playerName") {
        var name as string = itemStack.tag.memberGet("playerName") as string;
        str += " " + I18n.format("greedycraft.content.tablet_of_enlightenment.player_name", name);
    }
    return str;
};
eTablet.creativeTab = <creativetab:misc>;
eTablet.onItemUpdate = function(itemStack, world, owner, slot, isSelected) {
    if(owner instanceof IPlayer && !world.remote) {
        val player as IPlayer = owner;
        if(!(itemStack.tag has "playerName") || !(itemStack.tag has "playerUUID")) {
            itemStack.mutable().withTag(itemStack.tag.update({playerName: player.name, playerUUID: player.uuid}));
        }
    }
};
eTablet.itemGetContainerItem = function(stack) {
    return stack.updateTag({});
};
eTablet.itemRightClick = function(stack, world, player, hand) {
    if(stack.tag has "stage" && !world.remote) {
        var stage as string = stack.tag.memberGet("stage") as string;
        if(!(stack.tag has "playerUUID") || player.uuid == stack.tag.memberGet("playerUUID")) {
            // Success
            player.addGameStage(stage);
            player.sendRichTextMessage(ITextComponent.fromData([{translate: "greedycraft.content.tablet_of_enlightenment.unlock", color: "yellow"}, {text: " "}, {text: stage, color: "gold"}]));
            // stack.shrink(1);
            return "SUCCESS";
        } else {
            // Fail
            player.sendRichTextMessage(ITextComponent.fromData([{translate: "greedycraft.content.tablet_of_enlightenment.not_owner", color: "red"}]));
            return "FAIL";
        }
    }
    return "PASS";
};
eTablet.register();
