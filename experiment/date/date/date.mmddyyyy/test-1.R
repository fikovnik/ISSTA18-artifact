library(testthat)

.Random.seed <<- .ext.seed

test_that("date.mmddyyyy", {
    as.date <- date::as.date
    expect_equal(date:::date.mmddyyyy(sdate = as.date(1:10)), c("1/2/1960", "1/3/1960", "1/4/1960", "1/5/1960", "1/6/1960", 
        "1/7/1960", "1/8/1960", "1/9/1960", "1/10/1960", "1/11/1960"))
})
