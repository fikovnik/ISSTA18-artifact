library(testthat)

.Random.seed <<- .ext.seed

test_that("as_rows_function", {
    ..f <- ~.$cyl[1]
    expect_equal(purrrlyr:::as_rows_function(f = ..f), genthat::with_env(function(..., .x = ..1, .y = ..2, . = ..1) .$cyl[1], 
        env = list2env(list(), parent = baseenv())))
})
