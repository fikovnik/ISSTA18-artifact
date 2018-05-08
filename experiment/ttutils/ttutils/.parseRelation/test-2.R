library(testthat)

.Random.seed <<- .ext.seed

test_that(".parseRelation", {
    y <- 2L
    int <- structure(list(lower = -3, upper = 3, left = ">", right = "<="), class = "interval")
    expect_equal(ttutils:::.parseRelation(x = y, y = int$lower, rel = int$left), TRUE)
})
