###################################################################################
#
# Author: Jevex
# Description: Store item in Offhand (Slot -106) to artificer durability storage
#
###################################################################################

data merge storage artificer_durability:temp {object:{id:"minecraft:barrier",tag:{GUI:1b}}}
data modify storage artificer_durability:temp object set from entity @s Inventory[{Slot:-106b}]