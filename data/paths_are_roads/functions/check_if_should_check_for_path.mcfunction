execute as @s[type=#paths_are_roads:unconditional_user] run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/tag_exists_saddleitem] if data entity @s SaddleItem run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/bool_saddle, nbt={Saddle: 1b}] run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/bool_saddle, nbt={Saddled: 1b}] run function paths_are_roads:check_for_path