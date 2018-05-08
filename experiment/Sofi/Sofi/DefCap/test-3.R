library(testthat)

.Random.seed <<- .ext.seed

test_that("DefCap", {
    Capis <- c("P456", "C682", "M613", "F629", "X392")
    expect_equal(Sofi:::DefCap(cau = Capis), list(c(16, 2, 13, 5, 20), 0L))
})
