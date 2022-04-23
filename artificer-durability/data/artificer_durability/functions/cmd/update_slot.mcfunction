#> artificer_durability:cmd/update_slot
#
#> Description:
#   API function to initialize and update item durability data

# Get item in $slot
function artificer_durability:clipboard/copy/slot


# DEBUG MESSAGE
#execute as @s if score $debug ar.data matches 1.. unless score $slot du.custom matches 100..103 unless score $slot du.custom matches 106 unless score $slot du.custom matches -106 unless score $slot du.custom matches 0..8 unless score $slot du.custom matches 9..35 run tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" tried to modify durability of invalid slot: ","color":"yellow"},{"score":{"name":"$slot","objective":"du.custom"},"color":"gold"},{"text":"b","color":"gold"}]
execute as @s if score @s ar.debug matches 1.. run tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Updating durability of item in slot: ","color":"yellow"},{"score":{"name":"$slot","objective":"du.custom"},"color":"gold"},{"text":"b","color":"gold"}]

# Initialize item if necessary
execute store result score $temp_0 du.data run data get storage artificer_durability:clipboard Item.tag.Durability.Init
execute unless score $temp_0 du.data matches 1 run function artificer_durability:operations/general/handle_init

# Update durability values
function artificer_durability:operations/custom/update_durability


# DEBUG MESSAGE
execute as @s if score @s ar.debug matches 2.. run tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Item broken: ","color":"yellow"},{"score":{"name":"$out_0","objective":"du.data"},"color":"gold"},{"text":"b","color":"gold"}]

# If item is not broken update lore
execute if score $out_0 du.data matches 0 run function artificer_durability:operations/general/handle_lore

# Destroy item if broken
execute if score $out_0 du.data matches 1 run data merge storage artificer_durability:temp {object: {id: "minecraft:barrier", tag: {Null: 1b}}}
execute at @s if score $out_0 du.data matches 1 run playsound minecraft:entity.item.break player @s


# Restore item to $slot
function artificer_durability:clipboard/paste/slot

# If keep settings is false, reset settings
execute if score $keep_settings du.custom matches 0 run function artificer_durability:custom/reset_settings