library(testthat)

.Random.seed <<- .ext.seed

test_that("print.summary.regsubsets", {
    x <- structure(list(which = structure(c(TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, TRUE, FALSE, FALSE, 
        FALSE, FALSE, TRUE, TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, TRUE, TRUE, TRUE, FALSE, FALSE, TRUE, TRUE, TRUE), 
        .Dim = 5:6, .Dimnames = list(c("1", "2", "3", "4", "5"), c("(Intercept)", "Agriculture", "Examination", "Education", 
            "Catholic", "Infant.Mortality"))), rsq = c(0.440615646723924, 0.574507122652653, 0.662543817438168, 0.699347583077601, 
        0.706735001592726), rss = c(4015.23565601081, 3054.16868115457, 2422.24525700102, 2158.06948732592, 2105.04293044408), 
        adjr2 = c(0.428184883317789, 0.555166537318683, 0.639000362840831, 0.670714019561182, 0.670970977396717), cp = c(35.2048952615487, 
            18.4861577958036, 8.17816159506578, 5.03280023448099, 6), bic = c(-19.6028728467398, -28.6113895129764, -35.6564311007536, 
            -37.233882790768, -34.5530108124912), outmat = structure(c(" ", " ", " ", "*", "*", " ", " ", " ", " ", "*", 
            "*", "*", "*", "*", "*", " ", "*", "*", "*", "*", " ", " ", "*", "*", "*"), .Dim = c(5L, 5L), .Dimnames = list(c("1  ( 1 )", 
            "2  ( 1 )", "3  ( 1 )", "4  ( 1 )", "5  ( 1 )"), c("Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality"))), 
        obj = structure(list(np = 6L, nrbar = 15L, d = c(47, 390.254893617021, 4211.02381531329, 1493.74193822831, 43136.7347921711, 
            10387.6660508819), rbar = c(19.9425531914894, 10.9787234042553, 16.4893617021277, 41.143829787234, 50.6595744680851, 
            -0.327881722692969, -0.312305432674117, 2.51280216203486, -0.474533828954124, 0.575757265275011, -0.597625311942496, 
            -1.5399961736447, -4.6932952400263, -1.36980999105922, 0.103443548566763), thetab = c(70.1425531914894, 1.78648597370622, 
            -0.816657281858189, -0.510888789031732, 0.0863112508316665, -0.172113970941455), first = 2L, last = 6L, vorder = c(1L, 
            6L, 4L, 3L, 5L, 2L), tol = c(3.42782730020052e-09, 8.33160924702982e-08, 9.23235154424854e-08, 9.47675394150264e-08, 
            4.11016470891354e-07, 2.50669759339792e-07), rss = c(7177.95489361702, 5932.44386009035, 3123.98946943796, 2734.11183744944, 
            2412.75903669796, 2105.04293044408), bound = c(7177.95489361702, 4015.23565601081, 3054.16868115457, 2422.24525700102, 
            2158.06948732592, 2105.04293044408), nvmax = 6L, ress = structure(c(7177.95489361702, 4015.23565601081, 3054.16868115457, 
            2422.24525700102, 2158.06948732592, 2105.04293044408), .Dim = c(6L, 1L)), ir = 6L, nbest = 1L, lopt = structure(c(1L, 
            1L, 4L, 1L, 5L, 4L, 1L, 5L, 4L, 6L, 1L, 2L, 6L, 5L, 4L, 1L, 2L, 3L, 4L, 5L, 6L), .Dim = c(21L, 1L)), il = 21L, 
            ier = 0L, xnames = c("(Intercept)", "Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality"), 
            method = "exhaustive", force.in = structure(c(TRUE, FALSE, FALSE, FALSE, FALSE, FALSE), names = c("", "Agriculture", 
                "Examination", "Education", "Catholic", "Infant.Mortality")), force.out = structure(c(FALSE, FALSE, FALSE, 
                FALSE, FALSE, FALSE), names = c("", "Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality")), 
            sserr = 2105.04293044408, intercept = TRUE, lindep = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), nullrss = 7177.95489361702, 
            nn = 47L), class = "regsubsets")), class = "summary.regsubsets")
    expect_equal(leaps:::print.summary.regsubsets(x = x), structure(c(" ", " ", " ", "*", "*", " ", " ", " ", " ", "*", "*", 
        "*", "*", "*", "*", " ", "*", "*", "*", "*", " ", " ", "*", "*", "*"), .Dim = c(5L, 5L), .Dimnames = list(c("1  ( 1 )", 
        "2  ( 1 )", "3  ( 1 )", "4  ( 1 )", "5  ( 1 )"), c("Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality"))))
})
