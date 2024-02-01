execute as @e[type=#paths_are_roads:path_user] run function paths_are_roads:check_if_should_check_for_path

schedule function paths_are_roads:select_for_check_loop 4t replace