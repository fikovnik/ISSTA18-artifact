library(testthat)

.Random.seed <<- .ext.seed

test_that("print.control.list", {
    x <- structure(list(a.x = 1, a.y = 2), class = c("test", "control.list", "list"))
    expect_equal(statnet.common:::print.control.list(x = x), NULL)
})
