# Called by paths_are_roads:select_for_check_loop
# Checks whether we should check for paths underneath an entity (paths generally only apply to entities consciously prepared by a player)
## Path users without any other conditions (players, villagers)
execute as @s[type=#paths_are_roads:unconditional_user] run function paths_are_roads:check_for_path

## Path users that require a saddle
# Entities that have a `SaddleItem` tag to keep the item in
execute as @s[type=#paths_are_roads:needs_saddle/tag_exists_saddleitem] if data entity @s SaddleItem run function paths_are_roads:check_for_path
# Entities that have a bool called `Saddle` set
execute as @s[type=#paths_are_roads:needs_saddle/bool_saddle, nbt={Saddle: 1b}] run function paths_are_roads:check_for_path
# Entities that have a bool called `Saddled` set
execute as @s[type=#paths_are_roads:needs_saddle/bool_saddled, nbt={Saddled: 1b}] run function paths_are_roads:check_for_path
# Entities that have a bool called `IsSaddled` set
execute as @s[type=#paths_are_roads:needs_saddle/bool_issaddled, nbt={IsSaddled: 1b}] run function paths_are_roads:check_for_path

## Path users with unique requirements
# Alex's Mobs Tusklin: Needs `Saddle` bool set, and should have been pacified /w a brown mushroom: `PassiveTicks != 0`
execute as @s[type=#paths_are_roads:unique_requirement/tusklin, nbt={Saddle: 1b}] as @s[nbt=!{PassiveTicks: 0}] run function paths_are_roads:check_for_path
# Alex's Mobs Laviathan: two unique equippable items: Straddlite Saddle & Tack: bools `BodyGear` and `HeadGear` need to be set
execute as @s[type=#paths_are_roads:unique_requirement/laviathan, nbt={BodyGear: 1b, HeadGear: 1b}] run function paths_are_roads:check_for_path
# Naturalist's Giraffe: can only be ridden temporarily when fed an apple: TameTicks != 0
execute as @s[type=#paths_are_roads:unique_requirement/giraffe, nbt=!{TameTicks: 0}] run function paths_are_roads:check_for_path

## Path users that are tamed (reserved for when no other methods apply, as it is the one most likely to apply to mobs not currently being ridden)
## Sometimes the choice of specific tag within this category was arbitrary as multiple were possible (i.e. Alex's Mobs Elephant)
# Entities that have a bool called `Tame` set
execute as @s[type=#paths_are_roads:needs_taming/bool_tame, nbt={Tame: 1b}] run function paths_are_roads:check_for_path
# Entities that have a bool called `Tamed` set (empty by default)
execute as @s[type=#paths_are_roads:needs_taming/bool_tamed, nbt={Tamed: 1b}] run function paths_are_roads:check_for_path
# Entities that have an `Owner` tag
execute as @s[type=#paths_are_roads:needs_taming/tag_exists_owner] if data entity @s Owner run function paths_are_roads:check_for_path