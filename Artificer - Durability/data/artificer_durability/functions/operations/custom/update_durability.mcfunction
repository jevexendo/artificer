###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Master function to assign item durability
#
###################################################################################

# Set broken status to false
scoreboard players set $out_0 du.data 0

# If item has unbreaking (and true_damage is false) update custom damage total
execute if score $durability du.custom matches ..-1 if score $true_damage du.custom matches 0 run function artificer_durability:operations/custom/unbreaking/init

# DEBUG MESSAGE
tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Durability change: ","color":"yellow"},{"score":{"name":"$durability","objective":"du.custom"},"color":"gold"}]

# Load item data for manipulation
execute store result score $temp_0 du.data run data get storage artificer_durability:temp object.tag.Durability.Custom
execute store result score $temp_1 du.data run data get storage artificer_durability:temp object.tag.Durability.Damage
execute store result score $temp_2 du.data run data get storage artificer_durability:temp object.tag.Damage
execute store result score $temp_3 du.data run data get storage artificer_durability:temp object.tag.Durability.ActualMax
execute store result score $temp_4 du.data run data get storage artificer_durability:temp object.tag.Durability.CustomMax

# DEBUG MESSAGE
tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Item damage: ","color":"yellow"},{"score":{"name":"$temp_2","objective":"du.data"},"color":"gold"}]

# If changing max durability, update now
execute if score $durability_max du.custom matches 1.. run scoreboard players operation $temp_4 du.data = $durability_max du.custom
execute if score $durability_max du.custom matches 1.. store result storage artificer_durability:temp object.tag.Durability.CustomMax int 1 run scoreboard players get $temp_4 du.data

# Fully repair item
execute if score $full_repair du.custom matches 1 run scoreboard players operation $temp_0 du.data = $temp_4 du.data

# Change durability by specificied amount
execute if score $true_durability du.custom matches 0 run scoreboard players operation $temp_2 du.data -= $durability du.custom

# DEBUG MESSAGE
tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Updated item damage: ","color":"yellow"},{"score":{"name":"$temp_2","objective":"du.data"},"color":"gold"}]

# Find difference between last damage value and current damage value
scoreboard players operation $temp_1 du.data -= $temp_2 du.data

# Increase or decrease custom durability total based on difference between last damage value and current damage value
scoreboard players operation $temp_0 du.data += $temp_1 du.data

# Change durability to specified amount
execute if score $true_durability du.custom matches 1 run scoreboard players operation $temp_0 du.data = $durability du.custom

# DEBUG MESSAGE
tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Updating durability of item to: ","color":"yellow"},{"score":{"name":"$temp_0","objective":"du.data"},"color":"gold"}]

# If custom durability > max custom durability, set custom durability equal to max
execute if score $temp_0 du.data > $temp_4 du.data run scoreboard players operation $temp_0 du.data = $temp_4 du.data

# Store updated custom durability back on item
execute store result storage artificer_durability:temp object.tag.Durability.Custom int 1 run scoreboard players get $temp_0 du.data

# Assign base variables
scoreboard players operation $temp_5 du.data = $temp_3 du.data
scoreboard players operation $temp_6 du.data = $temp_3 du.data
scoreboard players remove $temp_6 du.data 8

# Use proportions to set equivalent damage value on durability bar
scoreboard players operation $temp_5 du.data *= $temp_0 du.data
scoreboard players operation $temp_5 du.data /= $temp_4 du.data
scoreboard players operation $temp_3 du.data -= $temp_5 du.data

# Ensure durability is always at least 8 points above breaking
execute if score $temp_3 du.data > $temp_6 du.data run scoreboard players operation $temp_3 du.data = $temp_6 du.data

# DEBUG MESSAGE
tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Storing damage to item: ","color":"yellow"},{"score":{"name":"$temp_3","objective":"du.data"},"color":"gold"}]

# Store damage back onto item
execute store result storage artificer_durability:temp object.tag.Damage int 1 run scoreboard players get $temp_3 du.data
execute store result storage artificer_durability:temp object.tag.Durability.Damage int 1 run data get storage artificer_durability:temp object.tag.Damage

# DEBUG MESSAGE
tellraw @a ["",{"text":"[Debug]","color":"red"},{"text":" > "},{"selector":"@s","color":"dark_aqua"},{"text":" Item final durability: ","color":"yellow"},{"score":{"name":"$temp_0","objective":"du.data"},"color":"gold"}]

# Set broken status to true
execute if score $temp_0 du.data matches ..0 run scoreboard players set $out_0 du.data 0