execute as @e[type=#paths_are_roads:path_user] if predicate paths_are_roads:stepping_on_path run function paths_are_roads:increase_speed
execute as @e[type=#paths_are_roads:path_user] unless predicate paths_are_roads:stepping_on_path run function paths_are_roads:decrease_speed

schedule function paths_are_roads:check_for_path_loop 4t replace