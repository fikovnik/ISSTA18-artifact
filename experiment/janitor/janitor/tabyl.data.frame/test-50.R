library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.data.frame", {
    . <- structure(list(a = c(NA, 1), b = c(NA_character_, NA_character_), c = c(10, 10)), class = "data.frame", row.names = c(NA, 
        -2L))
    expect_equal(janitor:::tabyl.data.frame(dat = ., var1 = c, var2 = a), structure(list(c = 10, `1` = 1, NA_ = 1), row.names = c(NA, 
        -1L), class = c("tabyl", "data.frame"), core = structure(list(c = 10, `1` = 1, NA_ = 1), row.names = c(NA, -1L), 
        class = "data.frame"), tabyl_type = "two_way", var_names = list(row = "c", col = "a")))
})
