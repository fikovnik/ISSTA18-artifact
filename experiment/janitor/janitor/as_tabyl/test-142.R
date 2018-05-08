library(testthat)

.Random.seed <<- .ext.seed

test_that("as_tabyl", {
    . <- structure(list(a = 1, x = 1, NA_ = 1), row.names = c(NA, -1L), class = "data.frame")
    expect_equal(janitor:::as_tabyl(dat = .), structure(list(a = 1, x = 1, NA_ = 1), row.names = c(NA, -1L), class = c("tabyl", 
        "data.frame"), core = structure(list(a = 1, x = 1, NA_ = 1), row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way"))
})
