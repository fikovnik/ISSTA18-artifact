library(testthat)

.Random.seed <<- .ext.seed

test_that("adorn_ns", {
    . <- structure(list(cyl = c(4, 6, 8), n = c(11, 7, 14), percent = c(0.34375, 0.21875, 0.4375)), row.names = c(NA, -3L), 
        class = c("tabyl", "data.frame"), core = structure(list(cyl = c(4, 6, 8), n = c(11, 7, 14), percent = c(0.34375, 
            0.21875, 0.4375)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "one_way")
    expect_equal(janitor:::adorn_ns(dat = .), structure(list(cyl = c(4, 6, 8), n = c("11 (11)", "7  (7)", "14 (14)"), percent = c("0.34375 (0.34375)", 
        "0.21875 (0.21875)", "0.4375  (0.4375)")), row.names = c(NA, 3L), class = c("tabyl", "data.frame"), core = structure(list(cyl = c(4, 
        6, 8), n = c(11, 7, 14), percent = c(0.34375, 0.21875, 0.4375)), row.names = c(NA, -3L), class = "data.frame"), tabyl_type = "one_way"))
})
