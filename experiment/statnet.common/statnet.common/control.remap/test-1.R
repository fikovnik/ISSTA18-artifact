library(testthat)

.Random.seed <<- .ext.seed

test_that("control.remap", {
    l <- structure(list(a.x = 1, a.y = 2), class = c("test", "control.list", "list"))
    expect_equal(statnet.common:::control.remap(control = l, from = "a", to = "b"), structure(list(a.x = 1, a.y = 2, b.x = 1, 
        b.y = 2), class = c("test", "control.list", "list")))
})
