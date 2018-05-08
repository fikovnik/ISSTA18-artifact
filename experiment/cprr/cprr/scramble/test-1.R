library(testthat)

.Random.seed <<- .ext.seed

test_that("scramble", {
    expect_equal(cprr:::scramble(cpr = c("1508631111", "1310762222", "1508631111")), c(2L, 1L, 2L))
})
