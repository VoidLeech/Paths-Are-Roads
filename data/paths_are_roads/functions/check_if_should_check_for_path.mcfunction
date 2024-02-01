execute as @s[type=#paths_are_roads:unconditional_user] run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/saddleitem] if data entity @s SaddleItem run function paths_are_roads:check_for_path
execute as @s[type=#paths_are_roads:needs_saddle/saddlebool, nbt={Saddle: 1b}]