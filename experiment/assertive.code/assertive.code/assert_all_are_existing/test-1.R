library(testthat)

.Random.seed <<- .ext.seed

test_that("assert_all_are_existing", {
    e <- list2env(list(x = 1, y = 2), parent = globalenv())
    expect_equal(assertive.code:::assert_all_are_existing(x = c("x", "y"), envir = e), c("x", "y"))
})
