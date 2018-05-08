library(testthat)

.Random.seed <<- .ext.seed

test_that("use_first_valid_of", {
    dat <- structure(list(a = c(1, NA, NA), b = c(2, 2, NA), c = c(3, 3, 3), x = c("hi", "med", "lo"), d1 = structure(c(10592, 
        10624, NA), class = "Date"), d2 = structure(c(16801, 16833, 16863), class = "Date"), p1 = structure(c(915148800, 
        917913600, NA), class = c("POSIXct", "POSIXt")), p2 = structure(c(1451606400, 1454371200, 1456963200), class = c("POSIXct", 
        "POSIXt"))), row.names = c(NA, -3L), class = "data.frame")
    expect_equal(janitor:::use_first_valid_of(dat$a, dat$b, if_all_NA = 0), c(1, 2, 0))
})
