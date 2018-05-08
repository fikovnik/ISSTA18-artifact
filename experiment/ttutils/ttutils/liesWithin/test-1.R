library(testthat)

.Random.seed <<- .ext.seed

test_that("liesWithin", {
    i <- structure(list(lower = -3, upper = 3, left = ">", right = "<="), class = "interval")
    expect_equal(ttutils:::liesWithin(x = -3:5, int = i), c(FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE))
})
