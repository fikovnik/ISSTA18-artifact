library(testthat)

.Random.seed <<- .ext.seed

test_that("excel_numeric_to_date", {
    expect_equal(janitor:::excel_numeric_to_date(date_num = 40000), structure(14431, class = "Date"))
})
