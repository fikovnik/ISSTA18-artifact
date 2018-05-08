library(testthat)

.Random.seed <<- .ext.seed

test_that("tabyl.default", {
    zero_vec <- character(0)
    expect_equal(janitor:::tabyl.default(dat = zero_vec), structure(list(zero_vec = character(0), n = numeric(0), percent = numeric(0)), 
        row.names = integer(0), class = c("tabyl", "data.frame"), core = structure(list(zero_vec = character(0), n = numeric(0), 
            percent = numeric(0)), row.names = integer(0), class = "data.frame"), tabyl_type = "one_way"))
})
