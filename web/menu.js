async function menu() {
    return {
        max: 12,

        meta: pick(await use("core-meta"), "Author"),

        pub: pick(await use("core-pub"), "Publication"),

        software: pick(await use("core-software"), "Software"),

        data: pick(await use("core-data"), "Data")
    }
}