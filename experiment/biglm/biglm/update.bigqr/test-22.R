library(testthat)

.Random.seed <<- .ext.seed

test_that("update.bigqr", {
    z <- structure(4.34380542185368, names = "31")
    ww <- 1
    qr <- structure(list(D = c(30, 1.41124973335979, 0.155760880980821), rbar = c(2.54173484667895, 4.32260956275042, 0.178211246761535), 
        thetab = c(3.23702926561412, 2.18572246645457, 1.12139241570311), ss = 0.185298059738668, checked = FALSE, tol = c(0, 
            0, 0)), class = "bigqr")
    off <- 0
    mm <- structure(c(1, 3.02529107579554, 4.46590811865458), .Dim = c(1L, 3L), .Dimnames = list("31", c("(Intercept)", "log(Girth)", 
        "log(Height)")), assign = 0:2)
    expect_equal(biglm:::update.bigqr(bigQR = qr, X = mm, y = z - off, w = ww), structure(list(D = c(31, 1.637533565667, 
        0.158482336758735), rbar = c(2.55733343471497, 4.32723209681184, 0.194535388674822), thetab = c(3.272731722267, 2.1999699320931, 
        1.11712333313337), ss = 0.185463372769671, checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"))
})
