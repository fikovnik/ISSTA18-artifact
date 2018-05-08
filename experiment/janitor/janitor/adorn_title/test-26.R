library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_title", {
    . <- structure(list(a = structure(1L, .Label = "high", class = "factor"), large = structure(1L, .Label = "1", class = "factor")), 
        row.names = c(NA, -1L), class = "data.frame")
    expect_equal(janitor:::adorn_title(dat = ., col_name = "col"), structure(list(c("a", "high"), col = c("large", "1")), 
        row.names = c(NA, -2L), class = "data.frame"))
})
