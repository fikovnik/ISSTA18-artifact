library(testthat)

.Random.seed <<- .ext.seed

test_that("hasVarArgs.function", {
    fcn <- genthat::with_env(function(a = 1) print(a), env = list2env(list(), parent = baseenv()))
    expect_equal(R.methodsS3:::hasVarArgs.function(fcn = fcn), FALSE)
})
