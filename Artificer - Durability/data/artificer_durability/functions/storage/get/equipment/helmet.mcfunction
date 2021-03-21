###################################################################################
#
# Author: Jevex
# Description: Store item in Helmet (Slot 103) to artificer durability storage
#
###################################################################################

data modify storage artificer_durability:temp object set from entity @s Inventory[{Slot:103b}]