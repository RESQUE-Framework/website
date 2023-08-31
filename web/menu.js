async function menu() {
    return {
        max: 12,

        maxTopPapers: 3,

        meta: pick(await use("core-meta")),

        pub: pick(await use("core-pubs")),

        software: pick(await use("core-software")),

        data: pick(await use("core-data"))
    }
}