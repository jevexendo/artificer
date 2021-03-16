###################################################################################
#
# Author: Jevex
# Description: Deal custom damage total to player items
#
###################################################################################

# Calculate actual amount of damage to deal after unbreaking
execute as @s if data storage artificer_durability:temp object.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl run function artificer_durability:durability/handle/unbreaking/init
execute as @s if score @s dur.damage matches 1.. run scoreboard players operation #actual dur.damage = @s dur.damage
scoreboard players set @s dur.damage 0

# Apply damage to item
scoreboard players operation $temp_1 dur.data -= #actual dur.damage