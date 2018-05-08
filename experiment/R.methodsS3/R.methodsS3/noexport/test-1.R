library(testthat)

.Random.seed <<- .ext.seed

test_that("noexport", {
    foo <- genthat::with_env(structure(function() NULL, export = TRUE), env = list2env(list(), parent = baseenv()))
    expect_equal(R.methodsS3:::noexport(x = foo), genthat::with_env(structure(function() NULL, export = FALSE), env = list2env(list(), 
        parent = baseenv())))
})
