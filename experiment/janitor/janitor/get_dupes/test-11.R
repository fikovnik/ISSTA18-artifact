library(testthat)

.Random.seed <<- .ext.seed

test_that("get_dupes", {
    mtcars <- datasets::mtcars
    expect_equal(janitor:::get_dupes(dat = mtcars), structure(list(mpg = numeric(0), cyl = numeric(0), disp = numeric(0), 
        hp = numeric(0), drat = numeric(0), wt = numeric(0), qsec = numeric(0), vs = numeric(0), am = numeric(0), gear = numeric(0), 
        carb = numeric(0), dupe_count = integer(0)), class = c("tbl_df", "tbl", "data.frame"), row.names = c(NA, 0L)))
})
