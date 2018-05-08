library(testthat)

.Random.seed <<- .ext.seed

test_that("sort_list", {
    expect_equal(getopt:::sort_list(unsorted_list = list(b = list(b = 3, c = 2), a = 2)), list(a = 2, b = list(b = 3, c = 2)))
})
