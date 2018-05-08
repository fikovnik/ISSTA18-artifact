library(testthat)

.Random.seed <<- .ext.seed

test_that("update.biglm", {
    biglm <- biglm::biglm
    chunk1 <- structure(list(Girth = c(8.3, 8.6, 8.8, 10.5, 10.7, 10.8, 11, 11, 11.1, 11.2), Height = c(70, 65, 63, 72, 81, 
        83, 66, 75, 80, 75), Volume = c(10.3, 10.3, 10.2, 16.4, 18.8, 19.7, 15.6, 18.2, 22.6, 19.9)), row.names = c(NA, 10L), 
        class = "data.frame")
    ff <- log(Volume) ~ log(Girth) + log(Height)
    chunk2 <- structure(list(Girth = c(11.3, 11.4, 11.4, 11.7, 12, 12.9, 12.9, 13.3, 13.7, 13.8), Height = c(79, 76, 76, 
        69, 75, 74, 85, 86, 71, 64), Volume = c(24.2, 21, 21.4, 21.3, 19.1, 22.2, 33.8, 27.4, 25.7, 24.9)), row.names = 11:20, 
        class = "data.frame")
    a <- structure(list(call = biglm(ff, chunk1), qr = structure(list(D = c(10, 0.12672167242629, 0.0492918465620191), rbar = c(2.31625840045238, 
        4.28626307235946, 0.525268901930001), thetab = c(2.74557944975183, 2.4344329261739, 1.20600515135297), ss = 0.0146533591946646, 
        checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"), assign = 0:2, terms = log(Volume) ~ log(Girth) + log(Height), 
        n = 10L, names = c("(Intercept)", "log(Girth)", "log(Height)"), weights = NULL, df.resid = 7L), class = "biglm")
    expect_equal(biglm:::update.biglm(object = a, moredata = chunk2), structure(list(call = biglm(ff, chunk1), qr = structure(list(D = c(20, 
        0.387020295569836, 0.141615001367122), rbar = c(2.41716960077974, 4.30338832405584, 0.233788258410921), thetab = c(2.95754553991666, 
        2.07054390086601, 1.1760307845815), ss = 0.124499085246707, checked = FALSE, tol = c(0, 0, 0)), class = "bigqr"), 
        assign = 0:2, terms = log(Volume) ~ log(Girth) + log(Height), n = 20L, names = c("(Intercept)", "log(Girth)", "log(Height)"), 
        weights = NULL, df.resid = 7L), class = "biglm"))
})
