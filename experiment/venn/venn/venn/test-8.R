library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = "A + E", snames = "A,B,C,D,E", zcolor = "red, blue"), NULL)
})
