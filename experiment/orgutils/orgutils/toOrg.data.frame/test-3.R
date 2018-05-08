library(testthat)

.Random.seed <<- .ext.seed

test_that("toOrg.data.frame", {
    expect_equal(orgutils:::toOrg.data.frame(x = data.frame(a = 1:3), row.names = TRUE), structure(c("| row.names | a |", 
        "|-----------+---|", "| 1         | 1 |", "| 2         | 2 |", "| 3         | 3 |"), class = "org"))
})
