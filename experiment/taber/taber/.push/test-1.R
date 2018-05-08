library(testthat)

.Random.seed <<- .ext.seed

test_that(".push", {
    falls <- structure(list(zed = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)), class = "data.frame", row.names = c(NA, -45L))
    expect_equal(taber:::.push(.data = falls), 1)
})
