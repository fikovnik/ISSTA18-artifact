library(testthat)

.Random.seed <<- .ext.seed

test_that("col_classes", {
    data <- structure(list(x = c(1, 2, 2, 1, 2, 2), y = c(1, 2, 2, 2, 1, 1), time = c(1, 4, 10, 4, 8, 10)), class = "data.frame", 
        row.names = c(NA, 6L))
    expect_equal(tweenr:::col_classes(data = data), structure(c("numeric", "numeric", "numeric"), names = c("x", "y", "time")))
})
