library(testthat)

.Random.seed <<- .ext.seed

test_that("set.control.class", {
    expect_equal(statnet.common:::set.control.class(myname = "test", control = list(a.x = 1, a.y = 2)), structure(list(a.x = 1, 
        a.y = 2), class = c("test", "control.list", "list")))
})
