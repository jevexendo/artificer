###################################################################################
#
# Author: Jevex
# Description: Store item to Slot 30 from artificer durability storage
#
###################################################################################

data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:temp object
loot replace entity @s inventory.21 1 mine -29999999 0 1601 minecraft:air{drop_contents:1b}