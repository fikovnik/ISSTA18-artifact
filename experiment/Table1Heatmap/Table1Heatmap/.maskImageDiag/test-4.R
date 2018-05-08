library(testthat)

.Random.seed <<- .ext.seed

test_that(".maskImageDiag", {
    vm <- structure(c(0.0222222222222222, 1, 0.466666666666667, 1, 0.00793650793650794, 1, 0.466666666666667, 1, 0.00476190476190476), 
        .Dim = c(3L, 3L))
    expect_equal(Table1Heatmap:::.maskImageDiag(mat = vm), structure(c(0.0222222222222222, NA, NA, 1, 0.00793650793650794, 
        NA, 0.466666666666667, 1, 0.00476190476190476), .Dim = c(3L, 3L)))
})
