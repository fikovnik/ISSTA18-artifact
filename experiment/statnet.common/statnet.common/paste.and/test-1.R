library(testthat)

.Random.seed <<- .ext.seed

test_that("paste.and", {
    expect_equal(statnet.common:::paste.and(x = 1:3), "1, 2, and 3")
})
