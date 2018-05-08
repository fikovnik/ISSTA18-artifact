library(testthat)

.Random.seed <<- .ext.seed

test_that("appendVarArgs.function", {
    foobar <- genthat::with_env(function(a = 1) print(a), env = list2env(list(), parent = baseenv()))
    expect_equal(R.methodsS3:::appendVarArgs.function(fcn = foobar), genthat::with_env(function(a = 1, ...) print(a), env = list2env(list(), 
        parent = baseenv())))
})
