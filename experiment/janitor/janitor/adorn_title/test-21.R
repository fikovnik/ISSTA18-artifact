library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_title", {
    . <- structure(list(cyl = c(4, 6, 8), `3` = c(1L, 2L, 12L), `4` = c(8L, 4L, NA), `5` = c(2L, 1L, 2L)), class = c("tbl_df", 
        "tbl", "data.frame"), row.names = c(NA, -3L))
    expect_equal(janitor:::adorn_title(dat = ., placement = "combined", col_name = "col"), structure(list(`cyl/col` = c(4, 
        6, 8), `3` = c(1L, 2L, 12L), `4` = c(8L, 4L, NA), `5` = c(2L, 1L, 2L)), class = "data.frame", row.names = c(NA, -3L)))
})
