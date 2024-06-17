### Editing the data pack
These are the docs for Minecraft versions 1.18.2-1.20.6. The 1.21 docs can be found [here](https://github.com/VoidLeech/Paths-Are-Roads/blob/1.21/dev/docs/editing.md)

#### Supporting new blocks
Blocks that have to count as path are tagged [paths_are_roads:paths](../data/paths_are_roads/tags/blocks/paths.json). It is recommended that you copy your changes/additions to the [paths_are_roads:paths](../data/paths_are_roads/tags/items/paths.json) item tag as well, so you can search for which blocks count as paths in-game. Blocks that have to count as path markers are tagged [paths_are_roads:path_markers](../data/paths_are_roads/tags/blocks/path_markers.json). There is an item tag for these as well.

#### Supporting new entities
Entities that will be sped up by paths without question must be tagged [paths_are_roads:unconditional_user](../data/paths_are_roads/tags/entity_types/unconditional_user.json). Other entities tend to have requirements that can be found in specific [subfolders](../data/paths_are_roads/tags/entity_types/), and adding an entity to these will likely do nothing for them, as the conditions are specific to how the saddling, taming or riding otherwise is implemented. Adding new conditions is possible but will require copying and overriding the [paths_are_roads:check_if_should_check_for_path](../data/paths_are_roads/functions/check_if_should_check_for_path.mcfunction) function, adding your functionality to it, and adding the tag for your new condition to the [paths_are_roads:path_user](../data/paths_are_roads/tags/entity_types/path_user.json) tag.  

It is recommended to add the spawn egg (or another item uniquely identifying the entity) of any affected entities to a tag in the [path_user/](../data/paths_are_roads/tags/items/path_user/) folder so a user can search for affected mobs. The existing tags identify exactly which mod adds the (ability to ride) an entity.

#### Changing the speed boost
The speed boost is defined in the [paths_are_roads:increase_speed](../data/paths_are_roads/functions/increase_speed.mcfunction) function. The number of interest is the 0.4 on line 3, and corresponds to 40% extra speed.