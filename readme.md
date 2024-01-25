# Paths are Roads
[![Modrinth Downloads](https://img.shields.io/modrinth/dt/paths-are-roads?style=flat&logo=modrinth&label=Modrinth)](https://modrinth.com/datapack/paths-are-roads)
[![CurseForge Downloads](https://img.shields.io/curseforge/dt/961218?style=flat&logo=curseforge&label=Curseforge)](https://www.curseforge.com/minecraft/texture-packs/paths-are-roads)
![Modrinth Game Versions](https://img.shields.io/modrinth/game-versions/paths-are-roads?style=flat&label=Supported%20Versions)

This data pack provides you with an incentive to build paths—besides them bringing your builds together of course.

Walking on a path block will now confer you a 40% boost to your movement speed, equivalent to the Speed II effect. This effect stacks with any other speed boosting effect, such as potions.

### Not just you
Your world is so much more than just yourself, and it can't be expected that you travel everywhere on foot. For those medium distances where portal linking is just not quite worth it, you might take a mount. You'll be delighted to hear that they can benefit from the upgraded paths too, even if you could outrun some of those already.

Villagers have learned to use paths too, traversing around their villages just that bit quicker. 

Llama caravans have not been left behind and will receive the boost too.

### Mod Support
Paths are Roads comes with built-in mod support for various mods. If your favourite mod is missing, feel free to create an issue or open a PR.
Paths are Roads currently support the following mods. For details on which mobs and blocks are supported, check out [docs/mod-compat.md](docs/mod-compat.md)  
- Aether  
- Deep Aether  
- Alex's Mobs  
- Hellion's Sniffer+

### Editing
The values for this data pack can be overwritten or added to like any other. See [Minecraft Wiki on Tag Json Format](https://minecraft.wiki/w/Tag#JSON_format). You'll have to use the same path and file names used by Paths are Roads inside your own data pack.
Blocks that have to count as path are tagged in [data/paths_are_roads/tags/blocks/counts_as_path.json](data/paths_are_roads/tags/blocks/counts_as_path.json). It is recommended that you copy your changes/additions to [data/paths_are_roads/tags/items/counts_as_path.json](data/paths_are_roads/tags/items/counts_as_path.json) as well, so you can search for which blocks count as paths in-game.
Entities that will be sped up by paths are tagged in [data/paths_are_roads/tags/entity_types/path_user.json](data/paths_are_roads/tags/entity_types/path_user.json).

### FAQ
**Q: Why should I use your data pack and not one of existing ones providing a speed-up boost to paths?**  
A: Paths are Roads has full customizability w.r.t. the blocks that count as paths, the entities that they apply to, and comes with some built-in mod support.  
**Q: Will you port to X.x.x?**  
A: I will keep the data pack up to date with major releases of Minecraft, and will try to provide versions for the Minecraft versions that support the features necessary for this pack to function. Versions before 1.17-pre1 will not be supported, as this is when the stepping_on property was added, unless I find a different way to implement the required tag check.
