#> artificer_core:storage/copy/hotbar
#
#> Description
#   Store player hotbar

data merge block -29999999 0 1601 {Items: []}
data modify block -29999999 0 1601 Items set from entity @s Inventory
