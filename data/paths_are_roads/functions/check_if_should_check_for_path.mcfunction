execute as @s[type=#paths_are_roads:unconditional_user] run function paths_are_roads:check_for_path

# Saddled
execute as @s[type=#paths_are_roads:needs_saddle/tag_exists_saddleitem] if data entity @s SaddleItem run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/bool_saddle, nbt={Saddle: 1b}] run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/bool_saddled, nbt={Saddled: 1b}] run function paths_are_roads:check_for_path

# Alex's Mobs Tusklin: Saddled, only when pacified
execute as @s[type=#paths_are_roads:unique_requirement/tusklin, nbt={Saddle: 1b}] as @s[nbt=!{PassiveTicks: 0}] run function paths_are_roads:check_for_path
# Alex's Mobs Laviathan: saddled and tacked i.e. bodygear and headgear
execute as @s[type=#paths_are_roads:unique_requirement/Laviathan, nbt={BodyGear: 1b, HeadGear: 1b}] run function paths_are_roads:check_for_path

# Tamed
execute as @s[type=#paths_are_roads:needs_taming/bool_tame, nbt={Tame: 1b}] run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_taming/tag_exists_owner] if data entity @s Owner run function paths_are_roads:check_for_path