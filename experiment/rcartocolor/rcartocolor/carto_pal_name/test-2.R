library(testthat)

.Random.seed <<- .ext.seed

test_that("carto_pal_name", {
    type <- "qualitative"
    palette <- 1
    expect_equal(rcartocolor:::carto_pal_name(palette = palette, type = type), "Vivid")
})
