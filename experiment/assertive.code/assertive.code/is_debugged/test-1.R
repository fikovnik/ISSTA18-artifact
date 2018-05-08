library(testthat)

.Random.seed <<- .ext.seed

test_that("is_debugged", {
    x <- genthat::with_env(function() {
    }, env = list2env(list(), parent = baseenv()))
    expect_equal(assertive.code:::is_debugged(x = x), structure(FALSE, cause = structure("x is not being debugged.", class = "noquote"), 
        class = c("scalar_with_cause", "logical")))
})
