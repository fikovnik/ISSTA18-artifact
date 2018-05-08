library(testthat)

.Random.seed <<- .ext.seed

test_that("clean_names", {
    . <- structure(list(hIgHlo = NA, `REPEAT VALUE` = NA, `REPEAT VALUE` = NA, `% successful (2009)` = NA, `abc@!*` = NA, 
        NA), row.names = c(NA, -1L), class = "data.frame")
    expect_equal(janitor:::clean_names(dat = .), structure(list(h_ig_hlo = NA, repeat_value = NA, repeat_value_2 = NA, percent_successful_2009 = NA, 
        abc = NA, x = NA), row.names = c(NA, -1L), class = "data.frame"))
})
