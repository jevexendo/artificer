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

# Add custom damage total
execute as @s if score @s dur.damage matches 1.. run function artificer_durability:durability/handle/item_damage

# Change durability value
scoreboard players operation $temp_1 dur.data -= $temp_2 dur.data
scoreboard players operation $temp_0 dur.data += $temp_1 dur.data
scoreboard players operation $temp_1 dur.data += $temp_2 dur.data
execute if score $temp_0 dur.data > $temp_4 dur.data run scoreboard players operation $temp_0 dur.data = $temp_4 dur.data
execute store result storage artificer_durability:temp object.tag.Durability.Custom int 1 run scoreboard players get $temp_0 dur.data

# Update durability bar to match item custom durability
scoreboard players operation $temp_5 dur.data = $temp_3 dur.data
scoreboard players operation $temp_6 dur.data = $temp_3 dur.data
scoreboard players remove $temp_6 dur.data 8
scoreboard players operation $temp_5 dur.data *= $temp_0 dur.data
scoreboard players operation $temp_5 dur.data /= $temp_4 dur.data
scoreboard players operation $temp_3 dur.data -= $temp_5 dur.data
execute if score $temp_3 dur.data > $temp_6 dur.data run scoreboard players operation $temp_3 dur.data = $temp_6 dur.data
execute store result storage artificer_durability:temp object.tag.Damage int 1 run scoreboard players get $temp_3 dur.data

execute store result storage artificer_durability:temp object.tag.Durability.Damage int 1 run data get storage artificer_durability:temp object.tag.Damage

# Set broken status to true
execute if score $temp_0 dur.data matches ..-1 run scoreboard players set $out_0 dur.data 0