# Called by paths_are_roads:select_for_check_loop
# Filter out only potential path users, then fork to check if we should even check for paths
execute as @e[type=#paths_are_roads:path_user] run function paths_are_roads:check_if_should_check_for_path

# Repeat our loop in 4 ticks
schedule function paths_are_roads:select_for_check_loop 4t replace