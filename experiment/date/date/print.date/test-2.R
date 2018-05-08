library(testthat)

.Random.seed <<- .ext.seed

test_that("print.date", {
    x <- structure(-2488L, class = "date")
    expect_equal(date:::print.date(x = x), "10Mar53")
})
