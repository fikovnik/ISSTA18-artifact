library(testthat)

.Random.seed <<- .ext.seed

test_that("interval", {
    expect_equal(ttutils:::interval(lower = -3, upper = 3, left = ">"), structure(list(lower = -3, upper = 3, left = ">", 
        right = "<="), class = "interval"))
})
