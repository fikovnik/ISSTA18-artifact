library(testthat)

.Random.seed <<- .ext.seed

test_that("print.org", {
    x <- structure("<2015-01-01 Thu>", class = c("org", "character"))
    expect_equal(orgutils:::print.org(x = x), structure("<2015-01-01 Thu>", class = c("org", "character")))
})
