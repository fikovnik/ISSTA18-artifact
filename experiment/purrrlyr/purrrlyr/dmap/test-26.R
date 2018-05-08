library(testthat)

.Random.seed <<- .ext.seed

test_that("dmap", {
    mtcars <- datasets::mtcars
    expect_equal(purrrlyr:::dmap(.d = mtcars, .f = mean), structure(list(mpg = 20.090625, cyl = 6.1875, disp = 230.721875, 
        hp = 146.6875, drat = 3.5965625, wt = 3.21725, qsec = 17.84875, vs = 0.4375, am = 0.40625, gear = 3.6875, carb = 2.8125), 
        row.names = c(NA, -1L), class = c("tbl_df", "tbl", "data.frame")))
})
