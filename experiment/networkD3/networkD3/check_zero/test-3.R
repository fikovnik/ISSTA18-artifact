library(testthat)

.Random.seed <<- .ext.seed

test_that("check_zero", {
    Target <- "target"
    Source <- "source"
    Links <- structure(list(source = c(0, 0, 0, 0, 1, 1, 2, 2, 3), target = c(1, 2, 3, 9, 4, 5, 6, 7, 8), value = c(1, 1, 
        1, 1, 1, 1, 1, 1, 1)), row.names = c(NA, -9L), class = "data.frame")
    expect_equal(networkD3:::check_zero(Source = Links[, Source], Target = Links[, Target]), NULL)
})
