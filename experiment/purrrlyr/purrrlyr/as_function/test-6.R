library(testthat)

.Random.seed <<- .ext.seed

test_that("as_function", {
    .f <- .Primitive("as.character")
    expect_equal(purrrlyr:::as_function(.f), genthat::with_env(function(x, ...) as.character(x = x, ...), env = .BaseNamespaceEnv))
})
