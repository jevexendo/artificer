###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Detect if durability has changed since last check
#
###################################################################################

# Check if durability matches expected value
execute store result score $temp_0 dur.data run data get block -29999999 0 1601 Items[4].tag.Damage
execute store result score $temp_1 dur.data run data get block -29999999 0 1601 Items[4].tag.Durability.Damage

# If durability values do not match, update item durability
execute as @s unless score $temp_0 dur.data = $temp_1 dur.data run function artificer_durability:automatic/update/mainhand