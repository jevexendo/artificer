###################################################################################
#
# Author: Jevex
# Description: Store item in Chestplate (Slot 102) to artificer durability storage
#
###################################################################################

data merge storage artificer_durability:temp {object:{id:"minecraft:barrier",tag:{GUI:1b}}}
data modify storage artificer_durability:temp object set from entity @s Inventory[{Slot:102b}]