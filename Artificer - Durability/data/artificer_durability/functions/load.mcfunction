###################################################################################
#
# Author: Jevex
# Description: Generates Artificer Durability scoreboards and objectives
#
###################################################################################

# Create scoreboard objectives
scoreboard objectives add dur.damage dummy
scoreboard objectives add dur.data dummy
scoreboard objectives add dur.itemDamage trigger
scoreboard objectives add dur.itemInit trigger
scoreboard objectives add dur.itemRepair trigger
scoreboard objectives add dur.manual dummy
scoreboard objectives add dur.repair dummy

# Load storage default parameters
data merge storage artificer_durability:temp {list:[],object:{},var:0}