library(testthat)

.Random.seed <<- .ext.seed

test_that("strapply", {
    expect_equal(gsubfn:::strapply(X = "12abc34 55", pattern = "[0-9]+"), list(c("12", "34", "55")))
})
