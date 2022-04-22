###################################################################################
#
# Author: Jevex
# Description: Store item in Slot 17 to artificer durability storage
#
###################################################################################

data merge storage artificer_durability:temp {object:{id:"minecraft:barrier",tag:{Null:1b}}}
data modify storage artificer_durability:data item set from entity @s Inventory[{Slot:17b}]