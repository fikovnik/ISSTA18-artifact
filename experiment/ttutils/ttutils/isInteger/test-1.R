library(testthat)

.Random.seed <<- .ext.seed

test_that("isInteger", {
    expect_equal(ttutils:::isInteger(n = list("test", 1, 2, 2.1)), c(FALSE, TRUE, TRUE, FALSE))
})
