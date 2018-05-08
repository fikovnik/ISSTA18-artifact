library(testthat)

.Random.seed <<- .ext.seed

test_that("toOrg.data.frame", {
    expect_equal(orgutils:::toOrg.data.frame(x = data.frame(a = 1:3)), structure(c("| a |", "|---|", "| 1 |", "| 2 |", "| 3 |"), 
        class = "org"))
})
