library(testthat)

.Random.seed <<- .ext.seed

test_that("audio.drivers", {
    expect_equal(audio:::audio.drivers(), structure(list(name = character(0), description = character(0), current = logical(0)), 
        row.names = c(NA, 0L), class = "data.frame"))
})
