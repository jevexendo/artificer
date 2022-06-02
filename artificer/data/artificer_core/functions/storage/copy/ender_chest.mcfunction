#> artificer_core:storage/copy/ender_chest
#
#> Description
#   Store player ender chest

data merge block -29999999 0 1601 {Items: []}
data modify block -29999999 0 1601 Items set from entity @s EnderItems
