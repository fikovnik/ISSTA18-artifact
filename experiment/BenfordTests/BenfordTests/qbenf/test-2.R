library(testthat)

.Random.seed <<- .ext.seed

test_that("qbenf", {
    expect_equal(BenfordTests:::qbenf(digits = 1), structure(c(0.301029995663981, 0.477121254719662, 0.602059991327962, 0.698970004336019, 
        0.778151250383644, 0.845098040014257, 0.903089986991944, 0.954242509439325, 1), names = c("1", "2", "3", "4", "5", 
        "6", "7", "8", "9")))
})
