library(testthat)

.Random.seed <<- .ext.seed

test_that("ES.h", {
    expect_equal(pwr:::ES.h(p1 = 0.5, p2 = 0.4), 0.201357920790331)
})
