library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = c("1000000", "0100000", "0010000", "0001000", "0000100", "0000010", "0000001", "1111111"), 
        borders = FALSE), NULL)
})
