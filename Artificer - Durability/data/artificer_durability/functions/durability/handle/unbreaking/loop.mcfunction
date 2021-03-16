###################################################################################
#
# Author: Jevex
# Description: Calculate damage negation from unbreaking
#
###################################################################################

# Generate new random number
function artificer_core:random/random_number

# Add damage to actual damage if unbreaking doesn't proc
execute if score $rand_0 ar.random <= $temp_8 dur.data run scoreboard players add #actual dur.damage 1

# Run operation again if damage total is still greater than one
execute if score @s dur.damage matches 1.. run function artificer_durability:durability/handle/unbreaking/loop