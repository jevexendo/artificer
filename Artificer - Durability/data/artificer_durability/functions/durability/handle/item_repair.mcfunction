###################################################################################
#
# Author: Jevex
# Description: Repair player item
#
###################################################################################

# Add repair total to item
scoreboard players operation $temp_1 dur.data += @s dur.repair

# Reset repair scoreboard
scoreboard players set @s dur.repair 0