###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Master function to assign item durability
#
###################################################################################

# Set broken status to false
scoreboard players set $out_0 dur.data 1

# Load item data for manipulation
execute store result score $temp_0 dur.data run data get storage artificer_durability:temp object.tag.Durability.Custom
execute store result score $temp_1 dur.data run data get storage artificer_durability:temp object.tag.Durability.Damage
execute store result score $temp_2 dur.data run data get storage artificer_durability:temp object.tag.Damage
execute store result score $temp_3 dur.data run data get storage artificer_durability:temp object.tag.Durability.ActualMax
execute store result score $temp_4 dur.data run data get storage artificer_durability:temp object.tag.Durability.CustomMax

# Find difference between last damage value and current damage value
scoreboard players operation $temp_1 dur.data -= $temp_2 dur.data

# If custom damage is specified increase damage total on weapon
execute as @s if score @s dur.damage matches 1.. run function artificer_durability:automatic/handle/item_damage

# If custom repair is specified decrease damage total on weapon
execute as @s if score @s dur.repair matches 1.. run function artificer_durability:automatic/handle/item_repair

# Increase or decrease custom durability total based on difference between last damage value and current damage value
scoreboard players operation $temp_0 dur.data += $temp_1 dur.data

# If custom durability > max custom durability, set custom durability equal to max
execute if score $temp_0 dur.data > $temp_4 dur.data run scoreboard players operation $temp_0 dur.data = $temp_4 dur.data

# Store updated custom durability back on item
execute store result storage artificer_durability:temp object.tag.Durability.Custom int 1 run scoreboard players get $temp_0 dur.data

# Assign base variables
scoreboard players operation $temp_5 dur.data = $temp_3 dur.data
scoreboard players operation $temp_6 dur.data = $temp_3 dur.data
scoreboard players remove $temp_6 dur.data 8

# Use proportions to set equivalent damage value on durability bar
scoreboard players operation $temp_5 dur.data *= $temp_0 dur.data
scoreboard players operation $temp_5 dur.data /= $temp_4 dur.data
scoreboard players operation $temp_3 dur.data -= $temp_5 dur.data

# Ensure durability is always at least 8 points above breaking
execute if score $temp_3 dur.data > $temp_6 dur.data run scoreboard players operation $temp_3 dur.data = $temp_6 dur.data

# Store damage back onto item
execute store result storage artificer_durability:temp object.tag.Damage int 1 run scoreboard players get $temp_3 dur.data
execute store result storage artificer_durability:temp object.tag.Durability.Damage int 1 run data get storage artificer_durability:temp object.tag.Damage

# Set broken status to true
execute if score $temp_0 dur.data matches ..-1 run scoreboard players set $out_0 dur.data 0