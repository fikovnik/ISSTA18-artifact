library(testthat)

.Random.seed <<- .ext.seed

test_that("venn", {
    expect_equal(venn:::venn(x = 5, ilabels = TRUE, zcolor = "style"), NULL)
})
