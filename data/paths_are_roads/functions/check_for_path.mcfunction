# Called by paths_are_roads:check_if_should_check_for_path
# Checks at the feet of the entity (necessary for the path markers) whether there is a path
# Increase if found
execute as @s at @s if predicate paths_are_roads:stepping_on_path run function paths_are_roads:increase_speed
# Decrease if not found
execute as @s at @s unless predicate paths_are_roads:stepping_on_path run function paths_are_roads:decrease_speed