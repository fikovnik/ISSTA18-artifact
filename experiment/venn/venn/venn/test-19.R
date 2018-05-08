library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = "1---- , ----1", zcolor = "red, blue"), NULL)
})
