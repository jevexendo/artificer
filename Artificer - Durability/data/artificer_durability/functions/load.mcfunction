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
scoreboard players add $durability du.custom 0
scoreboard players add $durability_max du.custom 0
scoreboard players add $full_repair du.custom 0
scoreboard players add $slot du.custom 0
scoreboard players add $true_damage du.custom 0
scoreboard players add $true_durability du.custom 0

# Load storage default parameters
data merge storage artificer_durability:temp {list:[],object:{},var:0}