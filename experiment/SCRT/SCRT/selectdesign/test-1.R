library(testthat)

.Random.seed <<- .ext.seed

test_that("selectdesign", {
    expect_equal(SCRT:::selectdesign(design = "ABAB", MT = 24, limit = 4), structure(c("A", "A", "A", "A", "A", "A", "A", 
        "A", "A", "B", "B", "B", "B", "B", "A", "A", "A", "A", "A", "B", "B", "B", "B", "B"), .Dim = c(1L, 24L)))
})
