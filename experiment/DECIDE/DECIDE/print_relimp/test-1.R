library(testthat)

.Random.seed <<- .ext.seed

test_that("print_relimp", {
    data <- structure(list(seq.1.10. = 1:10, rep.c.1..2..3...length.out...10. = c(1, 2, 3, 1, 2, 3, 1, 2, 3, 1), rbinom.1..n...10..p...0.7. = c(1L, 
        1L, 1L, 0L, 1L, 0L, 0L, 1L, 1L, 1L), c.rnorm.8..0..1...NA..NA. = c(-0.820468384118015, 0.487429052428485, 0.738324705129217, 
        0.575781351653492, -0.305388387156356, 1.51178116845085, 0.389843236411431, -0.621240580541804, NA, NA)), row.names = c(NA, 
        -10L), class = "data.frame")
    expect_equal(DECIDE:::print_relimp(dataset = data), structure(list(V1 = c(NA, NA, NA), V2 = c("(-822.78, 824.8)", NA, 
        NA), V3 = c("(-181106, 181119)", "(-5232.5, 5234.7)", NA)), row.names = c(NA, -3L), class = "data.frame"))
})
