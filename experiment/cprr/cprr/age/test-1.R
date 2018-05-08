library(testthat)

.Random.seed <<- .ext.seed

test_that("age", {
    expect_equal(cprr:::age(cpr = c("1508631111", "1310762222")), c(54.7296372347707, 41.5660506502396))
})
