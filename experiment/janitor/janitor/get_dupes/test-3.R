library(testthat)

.Random.seed <<- .ext.seed

test_that("get_dupes", {
    . <- structure(list(a = 1), row.names = c(NA, -1L), class = "data.frame")
    expect_equal(janitor:::get_dupes(dat = ., a), structure(list(a = numeric(0), dupe_count = integer(0)), class = c("tbl_df", 
        "tbl", "data.frame"), row.names = c(NA, 0L)))
})
