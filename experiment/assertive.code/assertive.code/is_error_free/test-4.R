library(testthat)

.Random.seed <<- .ext.seed

test_that("is_error_free", {
    expect_equal(assertive.code:::is_error_free(x = stop("!!!")), structure(FALSE, cause = structure("!!!", class = "noquote"), 
        class = c("scalar_with_cause", "logical")))
})
