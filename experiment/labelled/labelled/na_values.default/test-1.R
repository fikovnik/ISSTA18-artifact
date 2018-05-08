library(testthat)

.Random.seed <<- .ext.seed

test_that("na_values.default", {
    X <- list(s1 = c("M", "M", "F", "F"), s2 = structure(c(1, 1, 2, 9), labels = structure(c(1, 2), names = c("yes", "no")), 
        class = c("labelled_spss", "labelled"), na_values = 9))
    i <- 1L
    expect_equal(labelled:::na_values.default(x = X[[i]]), NULL)
})
