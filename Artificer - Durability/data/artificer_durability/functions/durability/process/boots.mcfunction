###################################################################################
#
# Author: ICY - Datapack Utilities
# Edited By: Jevex
# Description: Detect if durability has changed since last check
#
###################################################################################

execute store result score $temp_0 dur.data run data get entity @s Inventory[{Slot:100b}].tag.Damage
execute store result score $temp_1 dur.data run data get entity @s Inventory[{Slot:100b}].tag.Durability.Damage
execute as @s unless score $temp_0 dur.data = $temp_1 dur.data run function artificer_durability:durability/damage/boots