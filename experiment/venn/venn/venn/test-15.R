library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = 4, lty = 5, col = "navyblue"), NULL)
})
