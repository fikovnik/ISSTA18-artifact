library(testthat)

.Random.seed <<- .ext.seed

test_that("fonts", {
    expect_equal(extrafont:::fonts(), NULL)
})
