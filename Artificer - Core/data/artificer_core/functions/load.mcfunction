###################################################################################
#
# Author: Jevex
# Description: Generates Artificer Core scoreboards and objectives
#
###################################################################################

# IMPORTANT NOTES:
# Attribute Modifier UUIDs:
# /attribute @s minecraft:generic.max_health modifier add 06865616-0c74-0685-0f62-007566666572 health_buffer 5 add

# Setup gamerules
gamerule maxCommandChainLength 1000000

# Create scoreboard objectives
scoreboard objectives add ar.data dummy
scoreboard objectives add ar.debug dummy
scoreboard objectives add ar.health health {"text":"❤","color":"red"}
scoreboard objectives add ar.number dummy
scoreboard objectives add ar.random dummy

# Generate numbers
scoreboard players set $-1 ar.number -1

# Setup random number generator
function artificer_core:random/random_number_load

# Forceload data manipulation chunks
execute in minecraft:overworld run forceload add -29999999 1600
execute in minecraft:the_end run forceload add -29999999 1600
execute in minecraft:the_nether run forceload add -29999999 1600

# Setup data manipulation block tools
execute in minecraft:overworld unless block -29999999 0 1601 green_shulker_box run setblock -29999999 0 1601 minecraft:green_shulker_box
execute in minecraft:overworld unless block -29999999 0 1602 oak_wall_sign run setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]

execute in minecraft:the_end unless block -29999999 0 1601 green_shulker_box run setblock -29999999 0 1601 minecraft:green_shulker_box
execute in minecraft:the_end unless block -29999999 0 1602 oak_wall_sign run setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]

execute in minecraft:the_nether unless block -29999999 0 1601 green_shulker_box run setblock -29999999 0 1601 minecraft:green_shulker_box
execute in minecraft:the_nether unless block -29999999 0 1602 oak_wall_sign run setblock -29999999 0 1602 minecraft:oak_wall_sign[facing=south]

# Load storage default parameters
data merge storage artificer_core:temp {list:[],object:{},var:0}

# Schedule all functions required for datapack operations
schedule function artificer_durability:tick 1t
schedule function artificer_core:tick 1t

# Tags
# admin - show debugging information and allow access to admin zones
# full_access - remove all gameplay restrictions on actions by this individual