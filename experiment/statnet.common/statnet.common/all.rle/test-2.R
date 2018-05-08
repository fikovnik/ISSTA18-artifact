library(testthat)

.Random.seed <<- .ext.seed

test_that("all.rle", {
    expect_equal(statnet.common:::all.rle(structure(list(lengths = c(8L, 1L, 1L), values = c(FALSE, TRUE, FALSE)), class = "rle"), 
        na.rm = FALSE), FALSE)
})
