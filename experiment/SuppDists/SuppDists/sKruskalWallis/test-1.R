library(testthat)

.Random.seed <<- .ext.seed

test_that("sKruskalWallis", {
    expect_equal(SuppDists:::sKruskalWallis(c = 3, N = 15, U = 0.6), list(title = "Kruskal Wallis", c = 3, N = 15, U = 0.6, 
        Mean = 2, Median = 1.48550471487385, Mode = 0.016218017274239, Variance = 3.24, SD = 1.8, ThirdCentralMoment = 4.53332258656428, 
        FourthCentralMoment = 27.4807578546056, PearsonsSkewness...mean.minus.mode.div.SD = 1.10210110151431, Skewness...sqrtB1 = 0.77731868768249, 
        Kurtosis...B2.minus.3 = -0.382186608881493))
})
