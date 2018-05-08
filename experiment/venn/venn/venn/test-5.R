library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = "100, 110, 101, 111"), NULL)
})
