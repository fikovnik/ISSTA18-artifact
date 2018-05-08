library(testthat)

.Random.seed <<- .ext.seed

test_that("compact.rle", {
    big <- structure(list(lengths = c(536870911L, 536870911L, 536870911L, 536870911L, 536870911L, 536870911L), values = c(TRUE, 
        TRUE, TRUE, TRUE, TRUE, TRUE)), class = "rle")
    expect_equal(statnet.common:::compact.rle(x = big), structure(list(lengths = c(2147483644L, 1073741822L), values = c(TRUE, 
        TRUE)), class = "rle"))
})
