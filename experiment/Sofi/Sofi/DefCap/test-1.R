library(testthat)

.Random.seed <<- .ext.seed

test_that("DefCap", {
    Capis <- c("A456", "C682", "M613", "F629", "Z729", "G365", "Y823")
    expect_equal(Sofi:::DefCap(cau = Capis), list(c(1, 2, 13, 5, 21, 6, 20), 0L))
})
