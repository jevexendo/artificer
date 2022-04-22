###################################################################################
#
# Author: Jevex
# Description: Store item in Mainhand (Slot 106) to artificer durability storage
#
###################################################################################

data merge storage artificer_durability:temp {object:{id:"minecraft:barrier",tag:{Null:1b}}}
data modify storage artificer_durability:data item set from entity @s SelectedItem