library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    x <- structure(list(V1 = c(1L, 1L, 1L, 1L, 0L, 0L, 0L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 0L, 0L, 0L, 0L, 0L, 1L, 0L, 0L, 1L, 
        1L, 1L, 0L, 1L, 1L, 0L, 0L), V2 = c(1L, 0L, 0L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 0L, 1L, 
        1L, 1L, 0L, 0L, 1L, 0L, 1L, 0L, 0L, 0L), V3 = c(1L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 1L, 1L, 
        1L, 1L, 0L, 1L, 1L, 0L, 0L, 0L, 0L, 1L, 1L, 1L, 0L), V4 = c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 0L, 1L, 1L, 1L, 
        1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L), V5 = c(1L, 1L, 0L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 0L, 
        1L, 1L, 1L, 1L, 1L, 1L, 0L, 0L, 1L, 1L, 1L, 0L, 1L, 0L, 1L, 1L, 0L, 1L, 0L)), row.names = c(NA, -30L), class = "data.frame")
    expect_equal(venn:::venn(x = x), NULL)
})
