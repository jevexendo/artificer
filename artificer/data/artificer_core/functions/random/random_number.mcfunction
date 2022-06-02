###################################################################################
#
# Author: Jevex
# Description: Generates a pseudo-random number using a Linear Congruential Generator
#
###################################################################################

# Compute Random Number
scoreboard players operation $seed_0 ar.random *= $seed_1 ar.random
scoreboard players operation $seed_0 ar.random %= $seed_2 ar.random
scoreboard players operation $rand_0 ar.random = $seed_0 ar.random
scoreboard players operation $rand_0 ar.random %= $max_0 ar.random
scoreboard players add $rand_0 ar.random 1