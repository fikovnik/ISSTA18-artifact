library(testthat)

.Random.seed <<- .ext.seed

test_that("invoke_rows", {
    empty <- genthat::with_env(function(...) numeric(0), env = list2env(list(), parent = baseenv()))
    mtcars <- datasets::mtcars
    expect_equal(purrrlyr:::invoke_rows(.f = empty, .d = mtcars[1:2], .collate = "cols"), structure(list(mpg = numeric(0), 
        cyl = numeric(0), .out = numeric(0)), row.names = c(NA, 0L), class = c("tbl_df", "data.frame")))
})
