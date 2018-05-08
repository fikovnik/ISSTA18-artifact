library(testthat)

.Random.seed <<- .ext.seed

test_that("print.summary.mpt", {
    x <- structure(list(ntrees = 2L, coefficients = structure(c(0.877100780680127, 0.737277487245551, 0.509521202790327, 
        1.96525723663208, 1.0318659398799, 0.03808941551499, 0.300614915162749, 0.213264889642177, 0.213720897906873, 6.537457516265, 
        4.83842390377152, 0.178220360704207, 6.25734109410205e-11, 1.30872783839534e-06, 0.858549920163528), .Dim = c(3L, 
        5L), .Dimnames = list(c("c", "r", "u"), c("Estimate", "Logit Estim.", "Std. Error", "z value", "Pr(>|z|)"))), aic = 23.3970688501967, 
        gof = structure(c(0.0168959410498179, 1, 0.896578778687545), names = c("G2", "df", "pval")), X2 = 0.0169968037767082), 
        class = "summary.mpt")
    expect_equal(mpt:::print.summary.mpt(x = x), structure(list(ntrees = 2L, coefficients = structure(c(0.877100780680127, 
        0.737277487245551, 0.509521202790327, 1.96525723663208, 1.0318659398799, 0.03808941551499, 0.300614915162749, 0.213264889642177, 
        0.213720897906873, 6.537457516265, 4.83842390377152, 0.178220360704207, 6.25734109410205e-11, 1.30872783839534e-06, 
        0.858549920163528), .Dim = c(3L, 5L), .Dimnames = list(c("c", "r", "u"), c("Estimate", "Logit Estim.", "Std. Error", 
        "z value", "Pr(>|z|)"))), aic = 23.3970688501967, gof = structure(c(0.0168959410498179, 1, 0.896578778687545), names = c("G2", 
        "df", "pval")), X2 = 0.0169968037767082), class = "summary.mpt"))
})
