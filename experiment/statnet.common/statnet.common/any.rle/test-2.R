library(testthat)

.Random.seed <<- .ext.seed

test_that("any.rle", {
    expect_equal(statnet.common:::any.rle(structure(list(lengths = c(8L, 1L, 1L), values = c(FALSE, TRUE, FALSE)), class = "rle"), 
        na.rm = FALSE), TRUE)
})
