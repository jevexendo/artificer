###################################################################################
#
# Author: Jevex
# Description: Generates Artificer Durability scoreboards and objectives
#
###################################################################################

# Create scoreboard objectives
scoreboard objectives add du.custom dummy
scoreboard objectives add du.data dummy
scoreboard objectives add du.status dummy

# Pre-load default scores
scoreboard players set $slot du.custom 0
scoreboard players set $durability_max du.custom 0
scoreboard players set $full_repair du.custom 0
scoreboard players set $durability du.custom 0
scoreboard players set $true_durability du.custom 0
scoreboard players set $true_damage du.custom 0

# Load storage default parameters
data merge storage artificer_durability:temp {list:[],object:{},var:0}