async function menu() {
    return {
        max: 12,

        meta: pick("Author", await use("core-meta")),

        pub: pick("Publication", await use("core-pubs")),

        software: pick("Software", await use("core-software")),

        data: pick("Data", await use("core-data"))
    }
}