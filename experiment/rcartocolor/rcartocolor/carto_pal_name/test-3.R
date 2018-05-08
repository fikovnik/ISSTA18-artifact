library(testthat)

.Random.seed <<- .ext.seed

test_that("carto_pal_name", {
    type <- "quantitative"
    palette <- "Best"
    expect_equal(rcartocolor:::carto_pal_name(palette = palette, type = type), "Mint")
})
