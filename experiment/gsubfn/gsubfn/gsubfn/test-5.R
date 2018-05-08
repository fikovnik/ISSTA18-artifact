library(testthat)

.Random.seed <<- .ext.seed

test_that("gsubfn", {
    list <- gsubfn::list
    expect_equal(gsubfn:::gsubfn(pattern = ".m", replacement = list(cm = "e1", km = "e6"), x = "33cm 45km"), "33e1 45e6")
})
