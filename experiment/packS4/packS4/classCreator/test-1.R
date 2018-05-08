library(testthat)

.Random.seed <<- .ext.seed

test_that("classCreator", {
    expect_equal(packS4:::classCreator(name = "Complex", field = c("xx", "yy"), type = c("numerix", "numeric")), NULL)
})
