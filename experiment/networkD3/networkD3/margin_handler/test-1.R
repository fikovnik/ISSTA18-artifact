library(testthat)

.Random.seed <<- .ext.seed

test_that("margin_handler", {
    margin <- NULL
    expect_equal(networkD3:::margin_handler(margin = margin), list(top = NULL, right = NULL, bottom = NULL, left = NULL))
})
