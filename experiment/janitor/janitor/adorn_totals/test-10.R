library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_totals", {
    . <- structure(list(cyl = c(4, 6, 8), `3` = c(1L, 2L, 12L), `4` = c(8L, 4L, NA), `5` = c(2L, 1L, 2L)), class = c("grouped_df", 
        "tbl_df", "tbl", "data.frame"), row.names = c(NA, -3L), vars = "cyl", drop = TRUE, indices = list(0L, 1L, 2L), group_sizes = c(1L, 
        1L, 1L), biggest_group_size = 1L, labels = structure(list(cyl = c(4, 6, 8)), class = "data.frame", row.names = c(NA, 
        -3L), vars = "cyl", drop = TRUE))
    expect_equal(janitor:::adorn_totals(dat = .), structure(list(cyl = c("4", "6", "8", "Total"), `3` = c(1L, 2L, 12L, 15L), 
        `4` = c(8L, 4L, NA, 12L), `5` = c(2L, 1L, 2L, 5L)), row.names = c(NA, 4L), core = structure(list(cyl = c(4, 6, 8), 
        `3` = c(1L, 2L, 12L), `4` = c(8L, 4L, NA), `5` = c(2L, 1L, 2L)), class = "data.frame", row.names = c(NA, -3L)), tabyl_type = "two_way", 
        totals = "row", class = c("tabyl", "tbl_df", "tbl", "data.frame")))
})
