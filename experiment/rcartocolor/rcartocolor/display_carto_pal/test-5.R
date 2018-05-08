library(testthat)

.Random.seed <<- .ext.seed

test_that("display_carto_pal", {
    expect_equal(rcartocolor:::display_carto_pal(n = 12, name = "Burg"), NULL)
})
