###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Update item lore to match custom durability values
#
###################################################################################

# Store durability values to scoreboard
execute store result score $temp_0 du.data run data get storage artificer_durability:data item.tag.Durability.Custom
execute store result score $temp_1 du.data run data get storage artificer_durability:data item.tag.Durability.CustomMax

# Assign item lore to indicate durability
data merge block -29999999 0 1602 {Text1:'[{"text":"Durability: ","color":"#6B6B6B","italic":false},{"score":{"name":"$temp_0","objective":"du.data"},"color":"#6B6B6B","italic":false},{"text":" / ","color":"#6B6B6B","italic":false},{"score":{"name":"$temp_1","objective":"du.data"},"color":"#6B6B6B","italic":false}]'}

# Update lore text from sign
data modify storage artificer_durability:data item.tag.display.Lore[-1] set from block -29999999 0 1602 Text1