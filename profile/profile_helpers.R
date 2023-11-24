unCamel <- function(x) gsub("([A-Z]){1}", " \\1", x) |> str_trim()

# sc = scores object
get_indicators <- function(sc, pattern) {
    res <- data.frame()
    for (i in 1:length(sc)) {
        ind <- sc[[i]]$indicators
        if (!is.null(ind) & is.list(ind)) {
           res <- rbind(res, tibble(
            output = i,
            indicator = names(ind),
            value = sapply(ind, "[[", "value"),
            max = sapply(ind, "[[", "max"),
            rel_score = value/max
           ))
        }
    }

    rownames(res) <- NULL
    return(res[grepl(pattern, res$indicator), ])
}
