library(testthat)

.Random.seed <<- .ext.seed

test_that("is_existing", {
    expect_equal(assertive.code:::is_existing(x = c("x", "z"), envir = list2env(list(x = 1, y = 2), parent = globalenv()), 
        inherits = TRUE), structure(c(TRUE, FALSE), names = c("x", "z")))
})
