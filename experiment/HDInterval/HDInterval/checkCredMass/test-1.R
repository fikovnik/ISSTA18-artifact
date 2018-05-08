library(testthat)

.Random.seed <<- .ext.seed

test_that("checkCredMass", {
    credMass <- 0.8
    expect_equal(HDInterval:::checkCredMass(x = credMass), NULL)
})
