library(testthat)

.Random.seed <<- .ext.seed

test_that("plotRules", {
    zcolor <- c("#ffdd77", "#bb2020", "#1188cc")
    x <- list("----0", "111--", "1-11-")
    opacity <- 0.3
    ellipse <- FALSE
    borders <- TRUE
    expect_equal(venn:::plotRules(rules = x, zcolor = zcolor, ellipse = ellipse, opacity = opacity, allborders = borders), 
        NULL)
})
