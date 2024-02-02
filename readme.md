# Paths are Roads
[![Modrinth Downloads](https://img.shields.io/modrinth/dt/paths-are-roads?style=flat&logo=modrinth&label=Modrinth)](https://modrinth.com/datapack/paths-are-roads)
[![CurseForge Downloads](https://img.shields.io/curseforge/dt/961218?style=flat&logo=curseforge&label=Curseforge)](https://www.curseforge.com/minecraft/texture-packs/paths-are-roads)
![Modrinth Game Versions](https://img.shields.io/modrinth/game-versions/paths-are-roads?style=flat&label=Supported%20Versions)

This data pack provides you with an incentive to build paths—besides them bringing your builds together of course.

Walking on a path block will now confer you a 40% boost to your movement speed, equivalent to the Speed II effect. This effect stacks with any other speed boosting effect, such as potions.

### Not just you
Your world is so much more than just yourself, and it can't be expected that you travel everywhere on foot. For those medium distances where portal linking is just not quite worth it, you might take a mount. You'll be delighted to hear that they can benefit from the upgraded paths too, even if you could outrun some of them already.

Villagers have learned to use paths too, traversing around their villages just that bit quicker. 

Llama caravans have not been left behind and will receive the boost too, provided you've tamed the lot before embarking.

### Mod Support
Paths are Roads comes with built-in mod support for various mods. If your favourite mod is missing, feel free to create an issue or open a PR.
Paths are Roads currently support the following mods. For details on which mobs and blocks are supported, check out [docs/mod-compat.md](docs/mod-compat.md).  
If you don't have one of these mods, the data pack will still work, without errors being thrown.  
- Aether  
- Deep Aether  
- Alex's Mobs  
- Hellion's Sniffer+

### Editing
The values for this data pack can be overwritten or added to like any other. See the [Minecraft Wiki on Tag Json Format](https://minecraft.wiki/w/Tag#JSON_format) for how-to. You'll have to create a folder dedicated to Paths are Roads in your data folder, and then use the same folder and file names used by Paths are Roads. The ones one should typically need are listed and linked below.

#### Supporting new blocks
Blocks that have to count as path are tagged [paths](data/paths_are_roads/tags/blocks/paths.json). It is recommended that you copy your changes/additions to the [paths](data/paths_are_roads/tags/items/paths.json) item tag as well, so you can search for which blocks count as paths in-game.  

#### Supporting new entities
Entities that will be sped up by paths without question must be tagged [unconditional_user](data/paths_are_roads/tags/entity_types/unconditional_user.json). Other entities tend to have requirements that can be found in specific [subfolders](data/paths_are_roads/tags/entity_types/), and adding an entity to these will likely do nothing for them, as the conditions are specific to how the saddling, taming or riding otherwise is implemented. Adding new conditions is possible but will require copying and overriding the [check_if_should_check_for_path](data/paths_are_roads/functions/check_if_should_check_for_path.mcfunction) function, adding your functionality to it, and adding the tag for your new condition to the [path_user](data/paths_are_roads/tags/entity_types/path_user.json) tag.  

It is recommended to add the spawn egg (or another item uniquely identifying the entity) of any affected entities to a tag in the [path_user/](data/paths_are_roads/tags/items/path_user/) folder so a user can search for affected mobs. The existing tags identify exactly which mod adds the (ability to ride) an entity.

### FAQ
**Q: Why should I use your data pack and not one of existing ones providing a speed-up boost to paths?**  
A: Paths are Roads has full customizability w.r.t. the blocks that count as paths, the entities that they apply to, and comes with some built-in mod support.  
**Q: Will you port to X.x.x?**  
A: I will keep the data pack up to date with major releases of Minecraft, and will try to provide versions for the Minecraft versions that support the features necessary for this pack to function. Versions before 1.17-pre1 will not be supported, as this is when the stepping_on property was added, unless I find a different way to implement the required tag check.

### Planned Features
- Add separate tags for various speeds beside the default +40%.
- Implement a method to mark specific blocks as paths without them actually being paths, likely with something like string underneath the blocks that form your path=road.
