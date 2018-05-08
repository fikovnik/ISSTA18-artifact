library(testthat)

.Random.seed <<- .ext.seed

test_that("gender", {
    expect_equal(cprr:::gender(cpr = c("1508631111", "1310762222")), c(1, 0))
})
