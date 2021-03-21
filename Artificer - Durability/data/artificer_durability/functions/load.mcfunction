###################################################################################
#
# Author: Jevex
# Description: Generates Artificer Durability scoreboards and objectives
#
###################################################################################

# Create scoreboard objectives
scoreboard objectives add dur.custom dummy
scoreboard objectives add dur.data dummy
scoreboard objectives add dur.status dummy

# Pre-load default scores
scoreboard players set $slot dur.custom 0
scoreboard players set $max_durability dur.custom 0
scoreboard players set $full_repair dur.custom 0
scoreboard players set $durability dur.custom 0
scoreboard players set $absolute dur.custom 0
scoreboard players set $true_damage dur.custom 0

# Load storage default parameters
data merge storage artificer_durability:temp {list:[],object:{},var:0}