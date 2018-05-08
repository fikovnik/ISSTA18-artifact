library(testthat)

.Random.seed <<- .ext.seed

test_that("excel_numeric_to_date", {
    expect_equal(janitor:::excel_numeric_to_date(date_num = 40908, date_system = "mac pre-2011"), structure(16801, class = "Date"))
})
