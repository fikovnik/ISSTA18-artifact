library(testthat)

.Random.seed <<- .ext.seed

test_that("pcensmixR.pcgen", {
    Pdat <- structure(list(original_data = c(0.19, 0.78, 0.96, 1.31, 2.78, 3.16, 4.15, 4.67, 4.85, 6.5, 7.35, 8.01, 8.27, 
        12.06, 31.75, 32.52, 33.91, 36.71, 72.89), censored_version_of_data = c(0.19, 0.19, 0.78, 0.78, 1.31, 2.78, 3.16, 
        4.15, 4.67, 4.85, 6.5, 6.5, 7.35, 12.06, 31.75, 32.52, 33.91, 33.91, 72.89), censoring_indicator = c(1, 0, 1, 0, 
        1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1)), class = "pcgen", row.names = c(NA, -19L))
    expect_equal(pcensmix:::pcensmixR.pcgen(Pdat = Pdat, start = c(5, 3, 35, 20, 0.6)), structure(c(3.68216346520094, 2.29971956682862, 
        37.8931164019558, 20.2415096599481, 0.576149766151903, 0.803779567884886, 0.636294145368582, 8.99195813393833, 6.19896213815471, 
        0.130667068779491, 9.684019115414, 5.315980884586, 1.26282644147217, 2.73717355852783, 0.243401954309581, 0.192313787867148, 
        -71.8992858406313), .Dim = c(17L, 1L), .Dimnames = list(c("muhat1", "sigmahat1", "muhat2", "sigmahat2", "pihat", 
        "se.muhat1", "se.sigmahat1", "se.muhat2", "se.sigmahat2", "se.pihat", "no.fails.comp1", "no.fails.comp2", "no.cens.comp1", 
        "no.cens.comp2", "variability_comp1", "variability_comp2", "ll"), NULL)))
})
