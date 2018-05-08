library(testthat)

.Random.seed <<- .ext.seed

test_that("sort_list", {
    expect_equal(getopt:::sort_list(unsorted_list = list(a = 3, b = 2)), list(a = 3, b = 2))
})
