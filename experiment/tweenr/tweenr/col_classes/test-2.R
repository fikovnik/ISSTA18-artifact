library(testthat)

.Random.seed <<- .ext.seed

test_that("col_classes", {
    data <- list(structure(list(x = 1:20, y = c(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), colour = c("forestgreen", 
        "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", 
        "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", 
        "forestgreen", "forestgreen", "forestgreen")), row.names = c(NA, -20L), class = "data.frame"), structure(list(x = c(20L, 
        19L, 18L, 17L, 16L, 15L, 14L, 13L, 12L, 11L, 10L, 9L, 8L, 7L, 6L, 5L, 4L, 3L, 2L, 1L), y = c(1, 1, 1, 1, 1, 1, 1, 
        1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), colour = c("forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", 
        "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", 
        "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen", "forestgreen")), row.names = c(NA, 
        -20L), class = "data.frame"))
    expect_equal(tweenr:::col_classes(data = data[[1]]), structure(c("numeric", "numeric", "colour"), names = c("x", "y", 
        "colour")))
})
