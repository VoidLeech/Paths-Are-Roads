execute as @e[type=#paths_are_roads:path_user] run function paths_are_roads:check_for_path
execute as @e[type=#paths_are_roads:needs_saddle/snifferplus] if data entity @s SaddleItem run function paths_are_roads:check_for_path

schedule function paths_are_roads:check_for_path_loop 4t replace