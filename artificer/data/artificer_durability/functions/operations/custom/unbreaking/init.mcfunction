###################################################################################
#
# Author: Jevex
# Description: Calculate damage negation from unbreaking
#
###################################################################################

# Calculate unbreaking total
scoreboard players set $temp_0 du.data 100
scoreboard players set $temp_1 du.data 0
execute store result score $temp_1 du.data run data get storage artificer_durability:temp object.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add $temp_1 du.data 1
scoreboard players operation $temp_0 du.data /= $temp_1 du.data

# Determine amount of damage negated
scoreboard players set $temp_1 du.damage 0
execute as @s run function artificer_durability:operations/custom/unbreaking/loop