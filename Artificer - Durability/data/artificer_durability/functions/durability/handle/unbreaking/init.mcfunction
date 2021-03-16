###################################################################################
#
# Author: Jevex
# Description: Calculate damage negation from unbreaking
#
###################################################################################

# Calculate unbreaking total
scoreboard players set $temp_8 dur.data 100
scoreboard players set $temp_9 dur.data 0
execute store result score $temp_9 dur.data run data get storage artificer_durability:temp object.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add $temp_9 dur.data 1
scoreboard players operation $temp_8 dur.data /= $temp_9 dur.data

# Determine amount of damage negated
execute as @s run function artificer_durability:durability/handle/unbreaking/loop