import file from '../loc/english.json' with { type: 'json' };

let string = 'local ADDED_STRING_ID_TO_SOUNDS = {\n';
const addedKeys: string[] = [];

for (const key of Object.keys(file)) {
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
    string += `    ["${changedKey}"] = true,\n`;
}
string += '}';

console.log(string);
