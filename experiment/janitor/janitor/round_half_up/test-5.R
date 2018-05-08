library(testthat)

.Random.seed <<- .ext.seed

test_that("round_half_up", {
    expect_equal(janitor:::round_half_up(x = 12.5), 13)
})
