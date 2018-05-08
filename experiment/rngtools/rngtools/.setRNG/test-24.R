library(testthat)

.Random.seed <<- .ext.seed

test_that(".setRNG", {
    object <- "Mar"
    expect_equal(rngtools:::.setRNG(object = object), c("Mersenne-Twister", "Inversion"))
})
