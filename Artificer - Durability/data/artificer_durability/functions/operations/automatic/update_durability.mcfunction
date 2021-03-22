###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Master function to assign item durability
#
###################################################################################

# Set broken status to false
scoreboard players set $out_0 du.data 0

# Load item data for manipulation
execute store result score $temp_0 du.data run data get storage artificer_durability:temp object.tag.Durability.Custom
execute store result score $temp_1 du.data run data get storage artificer_durability:temp object.tag.Durability.Damage
execute store result score $temp_2 du.data run data get storage artificer_durability:temp object.tag.Damage
execute store result score $temp_3 du.data run data get storage artificer_durability:temp object.tag.Durability.ActualMax
execute store result score $temp_4 du.data run data get storage artificer_durability:temp object.tag.Durability.CustomMax

# Find difference between last damage value and current damage value
scoreboard players operation $temp_1 du.data -= $temp_2 du.data

# Increase or decrease custom durability total based on difference between last damage value and current damage value
scoreboard players operation $temp_0 du.data += $temp_1 du.data

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

# Store damage back onto item
execute store result storage artificer_durability:temp object.tag.Damage int 1 run scoreboard players get $temp_3 du.data
execute store result storage artificer_durability:temp object.tag.Durability.Damage int 1 run data get storage artificer_durability:temp object.tag.Damage

# Set broken status to true
execute if score $temp_0 du.data matches ..-1 run scoreboard players set $out_0 du.data 1