unCamel <- function(x) gsub("([A-Z]){1}", " \\1", x) |> str_trim()

get_indicators <- function(scores, pattern) {
    x <- sapply(scores, function(x) {
        ind <- x$indicators
        if (!is.null(ind) & is.list(ind)) {
            return(ind)
        }
    }) 

    x2 <- unlist(x)
    return(x2[grepl(pattern, names(x2))])
}
