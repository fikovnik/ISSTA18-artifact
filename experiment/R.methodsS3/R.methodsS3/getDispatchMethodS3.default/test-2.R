library(testthat)

.Random.seed <<- .ext.seed

test_that("getDispatchMethodS3.default", {
    expect_equal(R.methodsS3:::getDispatchMethodS3.default(methodName = "print", classNames = "default"), genthat::with_env(function(x, 
        digits = NULL, quote = TRUE, na.print = NULL, print.gap = NULL, right = FALSE, max = NULL, useSource = TRUE, ...) {
        noOpt <- missing(digits) && missing(quote) && missing(na.print) && missing(print.gap) && missing(right) && missing(max) && 
            missing(useSource) && missing(...)
        .Internal(print.default(x, digits, quote, na.print, print.gap, right, max, useSource, noOpt))
    }, env = .BaseNamespaceEnv))
})
