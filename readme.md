# Paths are Roads
[![Modrinth Downloads](https://img.shields.io/modrinth/dt/paths-are-roads?style=flat&logo=modrinth&label=Modrinth)](https://modrinth.com/datapack/paths-are-roads)
[![CurseForge Downloads](https://img.shields.io/curseforge/dt/961218?style=flat&logo=curseforge&label=Curseforge)](https://www.curseforge.com/minecraft/texture-packs/paths-are-roads)
![Modrinth Game Versions](https://cf.way2muchnoise.eu/versions/961218.svg)

This data pack provides you with an incentive to build paths—besides them bringing your builds together of course.

Walking on a path block will now confer you a 40% boost to your movement speed, equivalent to the Speed II effect. This effect stacks with any other speed boosting effect, such as potions.  
If you do not like the look of path blocks, you can use a path marker block (by default, this includes placed string) up to 3 blocks underneath the block you're walking on, and you'll get the same effect!  

### Not just you
Your world is so much more than just yourself, and it can't be expected that you travel everywhere on foot. For those medium distances where portal linking is just not quite worth it, you might take a mount. You'll be delighted to hear that they can benefit from the upgraded paths too, even if you could outrun some of them already.

Villagers have learned to use paths too, traversing around their villages just that bit quicker.

Llama caravans have not been left behind and will receive the boost too, provided you've tamed the lot before embarking.

### Mod Support
Paths are Roads comes with built-in mod support for various mods. If your favourite mod is missing, feel free to create an issue or open a PR.
Paths are Roads currently support the following mods in various versions of Minecraft. For details on which mobs and blocks are supported, check out [docs/mod-compat.md](docs/mod-compat.md).  
If you don't have one of these mods, the data pack will still work, without errors being thrown.
- Aether
- Deep Aether
- Alex's Mobs
- Hellion's Sniffer+
- Simple Kelpies
- Macaw's Paths and Pavings (Also with Every Compat support, see [the issue](https://github.com/VoidLeech/Paths-Are-Roads/issues/10) for details)
- Infernal Expansion
- Environmental
- More Paths Repathed
- Undergarden Paths
- Naturalist
- Ravage & Cabbage
- RideableRavagers
- RideablePolarBears
- Snow Pig
- Roost Re-hatched

### Editing
The values for this data pack can be overwritten or added to like any other. See the [Minecraft Wiki on Tag Json Format](https://minecraft.wiki/w/Tag#JSON_format) for how-to. You'll have to create a folder dedicated to Paths are Roads in your data folder, and then use the same folder and file names used by Paths are Roads. The ones one should typically need are listed and linked in [docs/editing.md](docs/editing.md). Currently, there are two versions: [1.18.2-1.20.6](https://github.com/VoidLeech/Paths-Are-Roads/blob/1.20.1/dev/docs/editing.md) and [1.21](https://github.com/VoidLeech/Paths-Are-Roads/blob/1.21/dev/docs/editing.md). The docs on the branch for your version will always be accurate.

### FAQ
**Q: Why should I use your data pack and not one of existing ones providing a speed-up boost to paths?**  
A: Paths are Roads has full customizability w.r.t. the blocks that count as paths, the entities that they apply to, and comes with some built-in mod support.

**Q: Why does this data pack not support the `Cobbled Paths` mod?**  
A: The paths added by Cobbled Paths already apply a speed boost on their own. Paths are Roads would just boost that further for no apparent reason.

**Q: Will you port to X.x.x?**  
A: I will keep the data pack up to date with major releases of Minecraft, and will try to provide versions for the Minecraft versions that support the features necessary for this pack to function. Versions before 1.17-pre1 will not be supported, as this is when the stepping_on property was added, unless I find a different way to implement the required tag check.

**Q: Why do your files list compatible versions even though your docs don't list those versions in the table?**  
A: The data pack format will not have changed between the main version and any versions also marked compatible. The data pack will work for these versions, but I'll not specifically support mod compatibility for these.

**Q: Can you release this (packaged) as a mod instead?**  
A: I see no need to do so. There exist mods that allow you to automatically apply data packs to all worlds, and nothing Paths are Roads does is needed during initial world generation, so adding after world creation is fully safe.

**Q: Can this be used in my CurseForge/Modrinth modpack?**  
A: Yes.

### Planned Features
- Add separate tags for various speeds beside the default +40%, likely as a separate data pack s.t. those don't hurt performance due to empty defaults.

### Licensing
This project is released under a [VL Art-Excluding MIT license](LICENSE).
