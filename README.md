# More Subtitles

Project to add more subtitles to RAID: World War II.

## Currently finished

* Strongpoint
* Firestarter
* Gold Rush
* Enigmatic

## Plans

Add subtitles for

* All raids
* All operations
* Camp dialogue

## Dev tools

### parser.ts

[Deno](https://deno.com/) script that reads `loc/english.json` and extracts String IDs to be pasted into `dialogmanager.lua`, so game knows which new lines we added.

### showcaser.ts

[Deno](https://deno.com/) script that prints a copy of `loc/english.json`, where every string starts with `[NEW]`. Used for showcasing which lines are new.

### Play any dialogue

Mod that adds a keybind to play a dialogue. Used for development.

## License

Unlicense. Do whatever you want.
