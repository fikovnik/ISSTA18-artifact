library(testthat)

.Random.seed <<- .ext.seed

test_that("reset_1st_col_status", {
    i <- 1L
    .x <- list(lvl1 = structure(list(a = "hi", small = 1), row.names = c(NA, -1L), class = c("tabyl", "data.frame"), core = structure(list(a = "hi", 
        small = 1), row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "a", col = "b")))
    expect_equal(janitor:::reset_1st_col_status(dat = .x[[i]], new_class = "factor", lvls = c("hi", "lo")), structure(list(a = structure(1L, 
        .Label = c("hi", "lo"), class = "factor"), small = 1), row.names = c(NA, -1L), core = structure(list(a = structure(1L, 
        .Label = c("hi", "lo"), class = "factor"), small = 1), row.names = c(NA, -1L), class = "data.frame"), tabyl_type = "two_way", 
        var_names = list(row = "a", col = "b"), class = c("tabyl", "data.frame")))
})
