library(testthat)

.Random.seed <<- .ext.seed

test_that("pvalue.systematic", {
    ABAB <- structure(list(V1 = structure(c(1L, 1L, 1L, 1L, 1L, 1L, 3L, 3L, 3L, 3L, 3L, 3L, 2L, 2L, 2L, 2L, 2L, 2L, 4L, 4L, 
        4L, 4L, 4L, 4L), .Label = c("A1", "A2", "B1", "B2"), class = "factor"), V2 = c(6L, 2L, 5L, 3L, 4L, 4L, 1L, 2L, 3L, 
        1L, 3L, 2L, 2L, 3L, 4L, 2L, 4L, 3L, 0L, 1L, 2L, 0L, 2L, 1L)), class = "data.frame", row.names = c(NA, -24L))
    expect_equal(SCRT:::pvalue.systematic(design = "ABAB", statistic = "AA-BB", save = "no", limit = 4, data = ABAB), 0.0242424242424242)
})
