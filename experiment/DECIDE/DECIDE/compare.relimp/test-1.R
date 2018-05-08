library(testthat)

.Random.seed <<- .ext.seed

test_that("compare.relimp", {
    data2 <- structure(list(seq.1.10. = 1:10, rep.c.1..2...length.out...10. = c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2), c.rep.0..times...5...rep.1..times...5.. = c(0, 
        0, 0, 0, 0, 1, 1, 1, 1, 1), c.rnorm.5..1..1...rnorm.5..0.5..1.. = c(1.57578135165349, 0.694611612843644, 2.51178116845085, 
        1.38984323641143, 0.378759419458196, -1.7146998871775, 1.62493091814311, 0.455066390984769, 0.483809736901054, 1.4438362106853)), 
        row.names = c(NA, -10L), class = "data.frame")
    data1 <- structure(list(seq.1.10. = 1:10, rep.c.1..2...length.out...10. = c(1, 2, 1, 2, 1, 2, 1, 2, 1, 2), c.rep.0..times...3...rep.1..times...7.. = c(0, 
        0, 0, 1, 1, 1, 1, 1, 1, 1), c.rnorm.4..0..1...rnorm.4..0.5..1...NA..NA. = c(-0.626453810742332, 0.183643324222082, 
        -0.835628612410047, 1.59528080213779, 0.829507771815361, -0.320468384118015, 0.987429052428485, 1.23832470512922, 
        NA, NA)), row.names = c(NA, -10L), class = "data.frame")
    expect_equal(DECIDE:::compare.relimp(dataset1 = data1, dataset2 = data2), list(ci.diff.lo = structure(list(V1 = c("(-3937, 3937.8)", 
        "(-4196.3, 4198.1)"), V2 = c("(-2.8448, 4.3735)", "(-2.3536, 3.5596)")), row.names = c(NA, -2L), class = "data.frame"), 
        test.diff.lo = 0.159768206605384, test.diff.lo.pvalue = 0.923223338722323, ci.diff.lor = structure(list(V1 = c(NA, 
            NA), V2 = c("(-3937.6, 3937.2)", NA)), row.names = c(NA, -2L), class = "data.frame"), test.diff.lor = 1.14072250924129e-08, 
        test.diff.lor.pvalue = 0.999914782249419, ci.diff.ri.1 = structure(list(V1 = c(NA, NA), V2 = c("(-1900.1, 1900.7)", 
            NA)), row.names = c(NA, -2L), class = "data.frame"), ci.diff.ri.2 = structure(list(V1 = c(NA, NA), V2 = c("(-3604.8, 3604.2)", 
            NA)), row.names = c(NA, -2L), class = "data.frame"), ci.diff.ri.avg = structure(list(V1 = c(NA, NA), V2 = c("(-2737.9, 2737.9)", 
            NA)), row.names = c(NA, -2L), class = "data.frame")))
})
