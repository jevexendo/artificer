###################################################################################
#
# Author: Jevex
# Description: Store item to Slot 8 from artificer durability storage
#
###################################################################################

data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:temp object
loot replace entity @s hotbar.8 1 mine -29999999 0 1601 minecraft:air{drop_contents:1b}