library(testthat)

.Random.seed <<- .ext.seed

test_that("cor.gen", {
    expect_equal(MorseGen:::cor.gen(num.subj = 15, x.mean = 5.65, x.sd = 2.13, y.mean = 100.2, y.sd = 16.8, correlation = -0.68), 
        list(DATA = structure(list(`Variable X` = c(2.82, 10.4, 5.88, 5.44, 6.79, 5.72, 5.32, 9.09, 5.13, 2.63, 6.53, 4.81, 
            4.41, 3.14, 6.63), `Variable Y` = c(111.44, 85.93, 95.57, 90.8, 115.49, 95.76, 117.68, 64.15, 95.47, 110.82, 
            89.84, 126.74, 106.2, 116.79, 80.32)), row.names = c("1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", 
            "12", "13", "14", "15"), class = "data.frame"), TARGETS = structure(list(`Target Variable X Mean` = 5.65, `Target Variable X SD` = 2.13, 
            `Target Variable Y Mean` = 100.2, `Target Variable Y SD` = 16.8, `  Target Correlation` = -0.68), row.names = c(NA, 
            -1L), class = "data.frame"), RESULTS = structure(list(`Sample Variable X Mean` = 5.65, `Sample Variable X SD` = 2.13, 
            `Sample Variable Y Mean` = 100.2, `Sample Variable Y SD` = 16.8, `  Sample Correlation` = -0.68), row.names = c(NA, 
            -1L), class = "data.frame")))
})
