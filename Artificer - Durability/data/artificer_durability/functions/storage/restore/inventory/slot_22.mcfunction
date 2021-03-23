###################################################################################
#
# Author: Jevex
# Description: Store item to Slot 22 from artificer durability storage
#
###################################################################################

replaceitem block -29999999 0 1601 container.0 minecraft:barrier{GUI:1b}
data modify block -29999999 0 1601 Items[0] set from storage artificer_durability:temp object
data remove block -29999999 0 1601 Items.[{tag:{GUI:1b}}]
loot replace entity @s inventory.13 1 mine -29999999 0 1601 minecraft:air{drop_contents:1b}