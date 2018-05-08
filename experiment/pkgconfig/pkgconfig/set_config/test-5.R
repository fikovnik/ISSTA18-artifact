library(testthat)

.Random.seed <<- .ext.seed

test_that("set_config", {
    expect_equal(pkgconfig:::set_config(key = "B"), NULL)
})
