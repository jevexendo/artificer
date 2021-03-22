###################################################################################
#
# Author: Jevex
# Description: Calculate damage negation from unbreaking
#
###################################################################################

# Calculate unbreaking total
scoreboard players set $temp_8 du.data 100
scoreboard players set $temp_9 du.data 0
execute store result score $temp_9 du.data run data get storage artificer_durability:temp object.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players add $temp_9 du.data 1
scoreboard players operation $temp_8 du.data /= $temp_9 du.data

# Determine amount of damage negated
scoreboard players set #actual du.damage 0
execute as @s run function artificer_durability:automatic/handle/unbreaking/loop