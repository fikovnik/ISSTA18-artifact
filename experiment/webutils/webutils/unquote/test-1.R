library(testthat)

.Random.seed <<- .ext.seed

test_that("unquote", {
    X <- list(name = "\"foo\"")
    i <- 1L
    expect_equal(webutils:::unquote(string = X[[i]]), "foo")
})
