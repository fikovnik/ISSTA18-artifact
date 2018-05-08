library(testthat)

.Random.seed <<- .ext.seed

test_that("as.data.frame.labelled", {
    x <- list(lab = structure(1:5, labels = structure(c(1, 2), names = c("a", "b")), class = "labelled"), nolab = 1:5)
    i <- 1L
    expect_equal(labelled:::as.data.frame.labelled(x = x[[i]], optional = TRUE), structure(list(structure(1:5, labels = structure(c(1, 
        2), names = c("a", "b")), class = "labelled")), row.names = c(NA, -5L), class = "data.frame"))
})
