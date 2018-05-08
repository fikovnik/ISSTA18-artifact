library(testthat)

.Random.seed <<- .ext.seed

test_that("is_loaded", {
    expect_equal(assertive.code:::is_loaded(x = "NONEXISTENT", PACKAGE = "base"), structure(FALSE, cause = structure("The routine \"NONEXISTENT\" is not registered with the DLL base.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
