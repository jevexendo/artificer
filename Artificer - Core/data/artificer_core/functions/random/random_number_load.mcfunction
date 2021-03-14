###################################################################################
#
# Author: Jevex
# Description: Seed values for prng numbers
#
###################################################################################

# Get values from area effect cloud UUID
summon area_effect_cloud 0 0 0 {Tags:["lcg_seed"]}
execute store result score $seed_0 ar.random run data get entity @e[type=minecraft:area_effect_cloud,tag=lcg_seed,limit=1] UUID[0]
execute store result score $seed_1 ar.random run data get entity @e[type=minecraft:area_effect_cloud,tag=lcg_seed,limit=1] UUID[1]
execute store result score $seed_2 ar.random run data get entity @e[type=minecraft:area_effect_cloud,tag=lcg_seed,limit=1] UUID[2]

# Prevent negative lcg seed values
execute if score $seed_0 ar.random matches ..-1 run scoreboard players operation $seed_0 ar.random *= $-1 ar.number
execute if score $seed_1 ar.random matches ..-1 run scoreboard players operation $seed_1 ar.random *= $-1 ar.number
execute if score $seed_2 ar.random matches ..-1 run scoreboard players operation $seed_2 ar.random *= $-1 ar.number

# Random number max values
scoreboard players set $max_0 ar.random 100