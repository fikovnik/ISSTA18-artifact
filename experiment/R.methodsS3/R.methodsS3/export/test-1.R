library(testthat)

.Random.seed <<- .ext.seed

test_that("export", {
    foo <- genthat::with_env(function() NULL, env = list2env(list(), parent = baseenv()))
    expect_equal(R.methodsS3:::export(x = foo), genthat::with_env(structure(function() NULL, export = TRUE), env = list2env(list(), 
        parent = baseenv())))
})
