library(testthat)

.Random.seed <<- .ext.seed

test_that("convert_to_NA", {
    expect_equal(janitor:::convert_to_NA(dat = 1, strings = 2), 1)
})
