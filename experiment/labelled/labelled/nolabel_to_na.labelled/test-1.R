library(testthat)

.Random.seed <<- .ext.seed

test_that("nolabel_to_na.labelled", {
    v <- structure(c(1, 2, 9, 1, 9), labels = structure(c(1, 2), names = c("yes", "no")), class = "labelled")
    expect_equal(labelled:::nolabel_to_na.labelled(x = v), structure(c(1, 2, NA, 1, NA), labels = structure(c(1, 2), names = c("yes", 
        "no")), class = "labelled"))
})
