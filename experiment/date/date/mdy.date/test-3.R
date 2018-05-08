library(testthat)

.Random.seed <<- .ext.seed

test_that("mdy.date", {
    expect_equal(date:::mdy.date(month = 3, day = 10, year = 53), structure(-2488L, class = "date"))
})
