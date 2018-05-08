library(testthat)

.Random.seed <<- .ext.seed

test_that("get_config", {
    expect_equal(pkgconfig:::get_config(key = "key"), "B")
})
