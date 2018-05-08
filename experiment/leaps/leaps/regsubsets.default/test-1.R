library(testthat)

.Random.seed <<- .ext.seed

test_that("regsubsets.default", {
    swiss <- structure(list(Fertility = c(80.2, 83.1, 92.5, 85.8, 76.9, 76.1, 83.8, 92.4, 82.4, 82.9, 87.1, 64.1, 66.9, 68.9, 
        61.7, 68.3, 71.7, 55.7, 54.3, 65.1, 65.5, 65, 56.6, 57.4, 72.5, 74.2, 72, 60.5, 58.3, 65.4, 75.5, 69.3, 77.3, 70.5, 
        79.4, 65, 92.2, 79.3, 70.4, 65.7, 72.7, 64.4, 77.6, 67.6, 35, 44.7, 42.8), Agriculture = c(17, 45.1, 39.7, 36.5, 
        43.5, 35.3, 70.2, 67.8, 53.3, 45.2, 64.5, 62, 67.5, 60.7, 69.3, 72.6, 34, 19.4, 15.2, 73, 59.8, 55.1, 50.9, 54.1, 
        71.2, 58.1, 63.5, 60.8, 26.8, 49.5, 85.9, 84.9, 89.7, 78.2, 64.9, 75.9, 84.6, 63.1, 38.4, 7.7, 16.7, 17.6, 37.6, 
        18.7, 1.2, 46.6, 27.7), Examination = c(15L, 6L, 5L, 12L, 17L, 9L, 16L, 14L, 12L, 16L, 14L, 21L, 14L, 19L, 22L, 18L, 
        17L, 26L, 31L, 19L, 22L, 14L, 22L, 20L, 12L, 14L, 6L, 16L, 25L, 15L, 3L, 7L, 5L, 12L, 7L, 9L, 3L, 13L, 26L, 29L, 
        22L, 35L, 15L, 25L, 37L, 16L, 22L), Education = c(12L, 9L, 5L, 7L, 15L, 7L, 7L, 8L, 7L, 13L, 6L, 12L, 7L, 12L, 5L, 
        2L, 8L, 28L, 20L, 9L, 10L, 3L, 12L, 6L, 1L, 8L, 3L, 10L, 19L, 8L, 2L, 6L, 2L, 6L, 3L, 9L, 3L, 13L, 12L, 11L, 13L, 
        32L, 7L, 7L, 53L, 29L, 29L), Catholic = c(9.96, 84.84, 93.4, 33.77, 5.16, 90.57, 92.85, 97.16, 97.67, 91.38, 98.61, 
        8.52, 2.27, 4.43, 2.82, 24.2, 3.3, 12.11, 2.15, 2.84, 5.23, 4.52, 15.14, 4.2, 2.4, 5.23, 2.56, 7.72, 18.46, 6.1, 
        99.71, 99.68, 100, 98.96, 98.22, 99.06, 99.46, 96.83, 5.62, 13.79, 11.22, 16.92, 4.97, 8.65, 42.34, 50.43, 58.33), 
        Infant.Mortality = c(22.2, 22.2, 20.2, 20.3, 20.6, 26.6, 23.6, 24.9, 21, 24.4, 24.5, 16.5, 19.1, 22.7, 18.7, 21.2, 
            20, 20.2, 10.8, 20, 18, 22.4, 16.7, 15.3, 21, 23.8, 18, 16.3, 20.9, 22.5, 15.1, 19.8, 18.3, 19.4, 20.2, 17.8, 
            16.3, 18.1, 20.3, 20.5, 18.9, 23, 20, 19.5, 18, 18.2, 19.3)), class = "data.frame", row.names = c("Courtelary", 
        "Delemont", "Franches-Mnt", "Moutier", "Neuveville", "Porrentruy", "Broye", "Glane", "Gruyere", "Sarine", "Veveyse", 
        "Aigle", "Aubonne", "Avenches", "Cossonay", "Echallens", "Grandson", "Lausanne", "La Vallee", "Lavaux", "Morges", 
        "Moudon", "Nyone", "Orbe", "Oron", "Payerne", "Paysd'enhaut", "Rolle", "Vevey", "Yverdon", "Conthey", "Entremont", 
        "Herens", "Martigwy", "Monthey", "St Maurice", "Sierre", "Sion", "Boudry", "La Chauxdfnd", "Le Locle", "Neuchatel", 
        "Val de Ruz", "ValdeTravers", "V. De Geneve", "Rive Droite", "Rive Gauche"))
    expect_equal(leaps:::regsubsets.default(x = as.matrix(swiss[, -1]), y = swiss[, 1]), structure(list(np = 6L, nrbar = 15L, 
        d = c(47, 390.254893617021, 4211.02381531329, 1493.74193822831, 43136.7347921711, 10387.6660508819), rbar = c(19.9425531914894, 
            10.9787234042553, 16.4893617021277, 41.143829787234, 50.6595744680851, -0.327881722692969, -0.312305432674117, 
            2.51280216203486, -0.474533828954124, 0.575757265275011, -0.597625311942496, -1.5399961736447, -4.6932952400263, 
            -1.36980999105922, 0.103443548566763), thetab = c(70.1425531914894, 1.78648597370622, -0.816657281858189, -0.510888789031732, 
            0.0863112508316665, -0.172113970941455), first = 2L, last = 6L, vorder = c(1L, 6L, 4L, 3L, 5L, 2L), tol = c(3.42782730020052e-09, 
            8.33160924702982e-08, 9.23235154424854e-08, 9.47675394150264e-08, 4.11016470891354e-07, 2.50669759339792e-07), 
        rss = c(7177.95489361702, 5932.44386009035, 3123.98946943796, 2734.11183744944, 2412.75903669796, 2105.04293044408), 
        bound = c(7177.95489361702, 4015.23565601081, 3054.16868115457, 2422.24525700102, 2158.06948732592, 2105.04293044408), 
        nvmax = 6L, ress = structure(c(7177.95489361702, 4015.23565601081, 3054.16868115457, 2422.24525700102, 2158.06948732592, 
            2105.04293044408), .Dim = c(6L, 1L)), ir = 6L, nbest = 1L, lopt = structure(c(1L, 1L, 4L, 1L, 5L, 4L, 1L, 5L, 
            4L, 6L, 1L, 2L, 6L, 5L, 4L, 1L, 2L, 3L, 4L, 5L, 6L), .Dim = c(21L, 1L)), il = 21L, ier = 0L, xnames = c("(Intercept)", 
            "Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality"), method = "exhaustive", force.in = structure(c(TRUE, 
            FALSE, FALSE, FALSE, FALSE, FALSE), names = c("", "Agriculture", "Examination", "Education", "Catholic", "Infant.Mortality")), 
        force.out = structure(c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE), names = c("", "Agriculture", "Examination", "Education", 
            "Catholic", "Infant.Mortality")), sserr = 2105.04293044408, intercept = TRUE, lindep = c(FALSE, FALSE, FALSE, 
            FALSE, FALSE, FALSE), nullrss = 7177.95489361702, nn = 47L), class = "regsubsets"))
})
