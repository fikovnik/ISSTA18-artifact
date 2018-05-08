library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_crosstab", {
    df1 <- structure(list(x = structure(1:2, .Label = c("big", "small"), class = "factor"), y = 1:2, z = 10:11), row.names = c(NA, 
        -2L), class = "data.frame")
    expect_equal(janitor:::adorn_crosstab(dat = df1, denom = "row", show_totals = TRUE), structure(list(x = c("big", "small", 
        "Total"), y = c("9.1% (1)", "15.4% (2)", "12.5% (3)"), z = c("90.9% (10)", "84.6% (11)", "87.5% (21)")), class = "data.frame", 
        row.names = c(NA, -3L)))
})
