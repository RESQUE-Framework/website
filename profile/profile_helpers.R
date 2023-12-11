unCamel0 <- function(x) {
  gsub("([A-Z]){1}", " \\1", x) |> str_trim()
}

unCamel <- function(df, cname) {
  if (cname %in% colnames(df)) {
    vec <-  df[, cname] |> unlist()
    df[, cname] <- gsub("([A-Z]){1}", " \\1", vec) |> str_trim()
  } else {
    df[, cname] <- NA
  }
  
  return(df)
}

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


theme_singlebar <- theme_minimal() + theme(
  axis.text = element_blank(),       # Remove axis text
  axis.title = element_blank(),      # Remove axis title
  axis.ticks = element_blank(),      # Remove ticks
  panel.grid.major = element_blank(),# Remove major grid
  panel.grid.minor = element_blank(),# Remove minor grid
  axis.line = element_blank(),        # Remove axis line
  plot.title = element_text(face="bold", margin = margin(t = 0, b = -100, unit = "pt")),              # move plot title closer to bar
  panel.spacing.x=unit(1, "lines"),   # add some extra space on the left side to make text labels visible
  plot.margin = margin(t=0, b=-200, l=0, r=0, unit="pt")
)