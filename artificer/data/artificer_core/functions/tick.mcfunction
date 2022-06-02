#> artificer_core:tick
#
#> Description
#   Game loop function that handles core module operations

advancement revoke @a[advancements={artificer_core:player/inventory_changed=true}] only artificer_core:player/inventory_changed

advancement revoke @a[advancements={artificer_core:player/player_hurt_entity=true}] only artificer_core:player/player_hurt_entity

schedule function artificer_core:tick 1t