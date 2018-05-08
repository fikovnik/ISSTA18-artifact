library(testthat)

.Random.seed <<- .ext.seed

test_that("check_vars_in_df", {
    var_names <- "a"
    df_name <- "."
    dat <- structure(list(a = 1), row.names = c(NA, -1L), class = "data.frame")
    expect_equal(janitor:::check_vars_in_df(dat = dat, dat_name = df_name, names_vec = var_names), NULL)
})
