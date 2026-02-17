import file from "../loc/english.json" with { type: "json" };

for (const i of Object.keys(file)) {
    file[i as keyof typeof file] = `[NEW] ${file[i as keyof typeof file]}`
}

console.log(JSON.stringify(file))
