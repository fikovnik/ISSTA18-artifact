library(testthat)

.Random.seed <<- .ext.seed

test_that("toOrg.Date", {
    expect_equal(orgutils:::toOrg.Date(x = Sys.Date()), structure("<2018-05-08 Tue>", class = c("org", "character")))
})
