// Used for creating recipes to improve the quality of life
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.MCItemDefinition;
var logTag= <tag:items:minecraft:logs>;

//Adds the recipes to allow for 2 logs to make 16 sticks
craftingTable.addShapedMirrored("logs_to_sticks", <item:minecraft:stick>*16, 
[
    [logTag],
    [logTag]
]);

//var biomeModArray as ModInfo[] = [loadedMods.get("byg"),loadedMods.get("biomesoplenty")] ; 



