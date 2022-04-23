#> artificer_durability:operations/custom/update_unbreakable
#
#> Description
#   Process durability of unbreakable items

# Set broken status to false
scoreboard players set $out_0 du.data 1

# Change durability value
execute store result score $temp_0 du.data run data get storage artificer_durability:clipboard Item.tag.Durability.Custom
scoreboard players remove $temp_0 du.data 1
execute store result storage artificer_durability:clipboard Item.tag.Durability.Custom int 1 run scoreboard players get $temp_0 du.data

# Set broken status to true
execute if score $temp_0 du.data matches ..-1 run scoreboard players set $out_0 du.data 0
