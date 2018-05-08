library(testthat)

.Random.seed <<- .ext.seed

test_that("val_label<-.labelled", {
    x <- 1:3
    value <- "yes"
    v <- 1
    expect_equal(labelled:::`val_label<-.labelled`(x = x, v = v, value = value), structure(1:3, labels = structure(1, names = "yes"), 
        class = "labelled"))
})
