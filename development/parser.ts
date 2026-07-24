import file from '../loc/english.json' with { type: 'json' };

const ADDED_PATH = "generated/AddedStringIdToSounds.json"
const LOUD_PATH = "generated/StringIdDifferentInLoud.json"

const addedObject: { [key: string]: true } = {};
const loudObject: { [key: string]: string } = {};

const addedKeys: string[] = [];

for (const key of Object.keys(file)) {
    if (key.startsWith("__LOUD__")) {
        loudObject[key.replace(new RegExp('^__LOUD__'), "")] = key;
        continue;
    }
    if (key.startsWith("__")) {
        continue;
    }
    const changedKey = key
        .replace(new RegExp('_brit$'), '')
        .replace(new RegExp('_russ$'), '')
        .replace(new RegExp('_amer$'), '')
        .replace(new RegExp('_germ$'), '');
    if (addedKeys.includes(changedKey)) {
        continue;
    }
    addedKeys.push(changedKey);
    addedObject[changedKey] = true;
}

Deno.writeTextFileSync(ADDED_PATH, JSON.stringify(addedObject));
console.log("New AddedStringIdToSounds.json successfully written");
Deno.writeTextFileSync(LOUD_PATH, JSON.stringify(loudObject));
console.log("New StringIdDifferentInLoud.json successfully written");
