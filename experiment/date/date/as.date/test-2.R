library(testthat)

.Random.seed <<- .ext.seed

test_that("as.date", {
    expect_equal(date:::as.date(x = 10), structure(10, class = "date"))
})
