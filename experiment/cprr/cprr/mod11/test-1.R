library(testthat)

.Random.seed <<- .ext.seed

test_that("mod11", {
    expect_equal(cprr:::mod11(cpr = c("1508631111", "1310762222", "2110625629")), c(FALSE, FALSE, TRUE))
})
