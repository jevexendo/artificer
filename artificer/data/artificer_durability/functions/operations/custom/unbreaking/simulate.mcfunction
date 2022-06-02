#> artificer_durability:operations/custom/unbreaking/simulate
#
#> Description
#   Simulate damage negation from unbreaking with random number generator

# Generate new random number
function artificer_core:random/random_number

# Add damage to actual damage if unbreaking doesn't proc
execute if score $rand_0 ar.random <= $temp_0 du.data run scoreboard players add $temp_1 du.data 1

# Remove (add, since damage is negative) one damage from the damage total to see if the unbreaking check needs to be looped
scoreboard players add $durability du.custom 1

# If damage has been totally converted, subtract damage equal to new calculated damage total
execute if score $durability du.custom matches 0 run scoreboard players operation $durability du.custom -= $temp_1 du.data

# Run operation again if damage total is still greater than one
execute if score $durability du.custom matches ..-1 run function artificer_durability:operations/custom/unbreaking/simulate
