library(testthat)

.Random.seed <<- .ext.seed

test_that("date.mmddyy", {
    as.date <- date::as.date
    expect_equal(date:::date.mmddyy(sdate = as.date(10)), "1/11/60")
})
