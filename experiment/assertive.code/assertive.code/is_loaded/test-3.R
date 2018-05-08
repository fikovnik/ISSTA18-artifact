library(testthat)

.Random.seed <<- .ext.seed

test_that("is_loaded", {
    expect_equal(assertive.code:::is_loaded(x = "R_addTaskCallback", PACKAGE = "NONEXISTENT"), structure(FALSE, cause = structure("The DLL NONEXISTENT is not loaded.", 
        class = "noquote"), class = c("scalar_with_cause", "logical")))
})
