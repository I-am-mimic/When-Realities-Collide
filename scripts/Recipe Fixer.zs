// Adds recipes for broken/missing recipes
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.item.IItemStack;
// Allows byg and bop logs/planks to make generic chests
var logsForGenericChests = <tag:items:wrc_custom:logs_for_generic_chests>; // The tag to add to modded logs for making the generic MC chest
var planksForGenericChests = <tag:items:wrc_custom:planks_for_generic_chests>; // The tag to add to modded planks for making the generic MC chest 
println("Debugging Recipe Fixer Script");

var mods as string[] = ["biomesoplenty","byg"];
var regexs as string[] = ["log$",  "plank$"]; 

println("Attempting to make modded wood craftable into chests");
for mod in mods{
    for item in loadedMods.getMod(mod).items{
        var itemName = item.getDefinition() as string;
        println(itemName);
        println(itemName == "log$");
        if (itemName == regexs[0]) {
            println("adding " + itemName + " to logsForGenericChests");
            logsForGenericChests.add(item);
        } else if (itemName == "plank$"){
            println("adding " + itemName + " to planksForGenericChests");
            planksForGenericChests.add(item);
        } 
    }
}

craftingTable.addShaped("modded_log_chest_crafting_recipe",<item:minecraft:chest>*4, [
    [logsForGenericChests,logsForGenericChests,logsForGenericChests],
    [logsForGenericChests,<item:minecraft:air>,logsForGenericChests],
    [logsForGenericChests,logsForGenericChests,logsForGenericChests]
]);

craftingTable.addShaped("modded_plank_chest_crafting_recipe",<item:minecraft:chest>, [
    [planksForGenericChests,planksForGenericChests,planksForGenericChests],
    [planksForGenericChests,<item:minecraft:air>,planksForGenericChests],
    [planksForGenericChests,planksForGenericChests,planksForGenericChests]
]);

craftingTable.addShaped("modded_log_trapped_chest_crafting_recipe",<item:minecraft:trapped_chest>*4, [
    [logsForGenericChests,logsForGenericChests,logsForGenericChests],
    [logsForGenericChests,<item:minecraft:tripwire_hook>,logsForGenericChests],
    [logsForGenericChests,logsForGenericChests,logsForGenericChests]
]);

craftingTable.addShaped("modded_plank_trapped_chest_crafting_recipe",<item:minecraft:trapped_chest>, [
    [planksForGenericChests,planksForGenericChests,planksForGenericChests],
    [planksForGenericChests,<item:minecraft:tripwire_hook>,planksForGenericChests],
    [planksForGenericChests,planksForGenericChests,planksForGenericChests]
]); 





