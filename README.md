# Artificer
Artificer is a collection of modular datapacks designed to add enhanced functionality to Minecraft 1.16.

The following modules are currently available:
> Artificer - Core
> 
> Artificer - Durability

## Artificer - Core
Artificer Core is primarilly meant to be a utility module for use by other Artificer modules. However, it can be used independently of any other modules to provide access to a variety of useful block, entity, and item tags. The following is a series of non-exhaustive lists of available tags for each category.

Block Tags:
> `#artificer_core:non-solid` | Blocks that are not full blocks but that cannot be moved through
> 
> `#artificer_core:passable` | Blocks that can be passed through with some or no obstruction to movement
> 
> `#artificer_core:water-loggable` | Blocks that have the waterlogged block state

Entity Tags:
> `#artificer_core:flammable` | Entities that are able to burn
> 
> `#artificer_core:hostile` | Mobs that are always hostile to the player
> 
> `#artificer_core:neutral` | Mobs that are only hostile to the player under specific circumstances
> 
> `#artificer_core:passive` | Mobs that are never hostile to the player
> 
> `#artificer_core:projectile` | Projectile entities
> 
> `#artificer_core:undead` | Mobs that are damaged by the healing potion effect

Item Tags:
> `#artificer_core:armor` | All items that provide the armor attribute when worn (without custom attributes)
> 
> `#artificer_core:chestplates` | All items that can be worn on the chestplate slot
> 
> `#artificer_core:tools` | All non-armor items that have durability
> 
> `#artificer_core:weapons` | All items whose primary purpose is to deal damage

## Artificer - Durability
The following is an overview of Artificer Durability features. For proper usage explanations, please refer to the wiki: https://github.com/JevexEndo/Artificer/wiki/Artificer-Durability.

Artificer Durability allows for the user to define custom durability values for any item in the game that has a durability bar. This means that typically low-durability items such as leather armor can be given thousands of durability points should the user wish.

The system updates the durability bar of items to reflect the artificial durability values chosen by the user and also provides updated numberical values of item durability in lore text so that players are able to see if an item's durability value has been modified and by what amount.

Another benefit of this custom durability handler is the ability to modify the durability of items directly with commands. This functionality currently only applies to items held in the player's mainhand, but will be extended to cover offhand and armor slots in future versions.
