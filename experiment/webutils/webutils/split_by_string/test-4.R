library(testthat)

.Random.seed <<- .ext.seed

test_that("split_by_string", {
    X <- "name=\"bar\""
    i <- 1L
    expect_equal(webutils:::split_by_string(string = X[[i]], split = "="), c("name", "\"bar\""))
})
