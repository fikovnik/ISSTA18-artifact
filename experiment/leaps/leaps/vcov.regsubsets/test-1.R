library(testthat)

.Random.seed <<- .ext.seed

test_that("vcov.regsubsets", {
    a <- structure(list(np = 6L, nrbar = 15L, d = c(47, 390.254893617021, 4211.02381531329, 1493.74193822831, 43136.7347921711, 
        10387.6660508819), rbar = c(19.9425531914894, 10.9787234042553, 16.4893617021277, 41.143829787234, 50.6595744680851, 
        -0.327881722692969, -0.312305432674117, 2.51280216203486, -0.474533828954124, 0.575757265275011, -0.597625311942496, 
        -1.5399961736447, -4.6932952400263, -1.36980999105922, 0.103443548566763), thetab = c(70.1425531914894, 1.78648597370622, 
        -0.816657281858189, -0.510888789031732, 0.0863112508316665, -0.172113970941455), first = 2L, last = 6L, vorder = c(1L, 
        6L, 4L, 3L, 5L, 2L), tol = c(3.42782730020052e-09, 8.33160924702982e-08, 9.23235154424854e-08, 9.47675394150264e-08, 
        4.11016470891354e-07, 2.50669759339792e-07), rss = c(7177.95489361702, 5932.44386009035, 3123.98946943796, 2734.11183744944, 
        2412.75903669796, 2105.04293044408), bound = c(7177.95489361702, 4015.23565601081, 3054.16868115457, 2422.24525700102, 
        2158.06948732592, 2105.04293044408), nvmax = 6L, ress = structure(c(7177.95489361702, 4015.23565601081, 3054.16868115457, 
        2422.24525700102, 2158.06948732592, 2105.04293044408), .Dim = c(6L, 1L)), ir = 6L, nbest = 1L, lopt = structure(c(1L, 
        1L, 4L, 1L, 5L, 4L, 1L, 5L, 4L, 6L, 1L, 2L, 6L, 5L, 4L, 1L, 2L, 3L, 4L, 5L, 6L), .Dim = c(21L, 1L)), il = 21L, ier = 0L, 
        xnames = c("(Intercept)", "Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality"), method = "exhaustive", 
        force.in = structure(c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), names = c("", "Agriculture", "Examination", "Education", 
            "Catholic", "Infant.Mortality")), force.out = structure(c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), names = c("", 
            "Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality")), sserr = 2105.04293044408, intercept = TRUE, 
        lindep = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), nullrss = 7177.95489361702, nn = 47L), class = "regsubsets")
    expect_equal(leaps:::vcov.regsubsets(object = a, id = 3), structure(c(62.7118831473147, -0.234998200934625, -0.00111200586296665, 
        -2.9528622626026, -0.234998200934625, 0.013641686816476, 0.000442730920276816, 0.00336036456015285, -0.00111200586296665, 
        0.000442730920276816, 0.000740816882132689, -0.00171636288626514, -2.9528622626026, 0.00336036456015285, -0.00171636288626514, 
        0.149759534966636), .Dim = c(4L, 4L), .Dimnames = list(c("(Intercept)", "Education", "Catholic", "Infant.Mortality"), 
        c("(Intercept)", "Education", "Catholic", "Infant.Mortality"))))
})
