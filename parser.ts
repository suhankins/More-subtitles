import file from "./loc/english.json" with { type: "json" };

let string = "local ADDED_STRING_ID_TO_SOUNDS = {\n"
const addedKeys: string[] = []

for (const key of Object.keys(file)) {
    const changedKey = key.replace('_brit', '').replace(new RegExp('_russ$'), '').replace('_amer', '').replace('_germ', '')
    if (addedKeys.includes(changedKey)) {
        continue
    }
    addedKeys.push(changedKey)
    string += `    ["${changedKey}"] = true,\n`
}
string += '}'
console.log(string)