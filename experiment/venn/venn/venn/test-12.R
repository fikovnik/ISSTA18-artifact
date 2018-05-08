library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = "A + Bc", snames = "A,B,C,D"), NULL)
})
