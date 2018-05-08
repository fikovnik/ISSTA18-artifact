library(testthat)

.Random.seed <<- .ext.seed

test_that("split_names", {
    pieces <- c("form-data", "name=\"bar\"")
    expect_equal(webutils:::split_names(x = pieces[-1], split = "="), list(name = "\"bar\""))
})
