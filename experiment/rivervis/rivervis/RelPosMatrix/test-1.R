library(testthat)

.Random.seed <<- .ext.seed

test_that("RelPosMatrix", {
    pos <- structure(c("M", "M", "M", "M", "M", "M", "M", "M", NA, "L", "L", "R", "R", "R", "R", "L", NA, NA, "L", NA, NA, 
        "L", NA, NA), .Dim = c(8L, 3L), .Dimnames = list(NULL, c("digit0", "digit1", "digit2")))
    DIGITMAX <- 2
    expect_equal(rivervis:::RelPosMatrix(pos = pos, DIGITMAX = DIGITMAX), structure(c(0, -1, -1, 1, 1, 1, 1, -1, 2, 2, 1, 
        2, 2, 1, 2, 2), .Dim = c(8L, 2L), .Dimnames = list(NULL, c("digit1", "digit2"))))
})
