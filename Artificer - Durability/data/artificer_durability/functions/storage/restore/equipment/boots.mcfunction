###################################################################################
#
# Author: Jevex
# Description: Store item to Boots (Slot 100) from artificer durability storage
#
###################################################################################

data merge block -29999999 0 1601 {Items:[]}
data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:temp object
loot replace entity @s armor.feet 1 mine -29999999 0 1601 minecraft:air{drop_contents:1b}