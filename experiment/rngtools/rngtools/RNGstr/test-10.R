library(testthat)

.Random.seed <<- .ext.seed

test_that("RNGstr", {
    expect_equal(rngtools:::RNGstr(), "403L, 624L, ..., 705745481L [0df478eb3c8fb1defebabf27a69df5ba]")
})
