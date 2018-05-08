library(testthat)

.Random.seed <<- .ext.seed

test_that("summary.dirichlet", {
    dobj <- structure(list(S = 1.29527957011121, M = 1.456, K = 0.778802679700109, nbrand = 8L, nstar = 50, cat.pen = 0.56, 
        cat.buyrate = 2.6, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02), brand.pen.obs = c(0.2, 0.17, 0.09, 
            0.08, 0.08, 0.07, 0.03, 0.02), brand.name = c("Colgate DC", "Macleans", "Close Up", "Signal", "ultrabrite", "Gibbs SR", 
            "Boots Priv. Label", "Sainsbury Priv. Lab."), period.set = genthat::with_env(function(t) {
            M <<- M0 * t
        }, env = list2env(list(M0 = 1.456, M = 1.456), parent = baseenv())), period.print = genthat::with_env(function() {
            cat("Multiple of Base Time Period:", round(M/M0, 2), ", Current M =", M, "\n")
        }, env = list2env(list(M0 = 1.456, M = 1.456), parent = baseenv())), p.rj.n = genthat::with_env(function(rj, n, j) {
            alphaj <- S * sum(sapply(j, function(x) brand.share[x]))
            choose(n, rj) * beta(alphaj + rj, S - alphaj + n - rj)/beta(alphaj, S - alphaj)
        }, env = list2env(list(S = 1.29527957011121, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02)), parent = baseenv())), 
        Pn = genthat::with_env(function(n) {
            if (n == 0) {
                g <- 0
            } else {
                a <- 0:(n - 1)
                num <- log(K + a)
                den <- log(1 + a)
                g <- sum(num - den)
            }
            exp((-K) * log(1 + M/K) + g + n * log(M/(M + K)))
        }, env = list2env(list(M = 1.456, K = 0.778802679700109), parent = baseenv())), brand.pen = genthat::with_env(function(j, 
            limit = c(0:nstar)) {
            if (check == T) {
                cat("In brand.pen, nstar=", limit[length(limit)], "\n")
            }
            p0 <- sum(sapply(limit, function(i, j) {
                Pn(i) * p.rj.n(0, i, j)
            }, j = j))
            1 - p0
        }, env = list2env(list(Pn = genthat::with_env(function(n) {
            if (n == 0) {
                g <- 0
            } else {
                a <- 0:(n - 1)
                num <- log(K + a)
                den <- log(1 + a)
                g <- sum(num - den)
            }
            exp((-K) * log(1 + M/K) + g + n * log(M/(M + K)))
        }, env = list2env(list(M = 1.456, K = 0.778802679700109), parent = baseenv())), p.rj.n = genthat::with_env(function(rj, 
            n, j) {
            alphaj <- S * sum(sapply(j, function(x) brand.share[x]))
            choose(n, rj) * beta(alphaj + rj, S - alphaj + n - rj)/beta(alphaj, S - alphaj)
        }, env = list2env(list(S = 1.29527957011121, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02)), parent = baseenv())), 
            nstar = 50, check = FALSE), parent = baseenv())), brand.buyrate = genthat::with_env(function(j, limit = c(1:nstar)) {
            buyrate.n <- function(n, j) {
                rate <- 1:n
                sum(rate * sapply(rate, p.rj.n, n = n, j = j))
            }
            if (check == T) {
                cat("In brand.buyrate, nstar=", limit[length(limit)], "\n")
            }
            sum(sapply(limit, Pn) * sapply(limit, buyrate.n, j = j))/brand.pen(j)
        }, env = list2env(list(Pn = genthat::with_env(function(n) {
            if (n == 0) {
                g <- 0
            } else {
                a <- 0:(n - 1)
                num <- log(K + a)
                den <- log(1 + a)
                g <- sum(num - den)
            }
            exp((-K) * log(1 + M/K) + g + n * log(M/(M + K)))
        }, env = list2env(list(M = 1.456, K = 0.778802679700109), parent = baseenv())), p.rj.n = genthat::with_env(function(rj, 
            n, j) {
            alphaj <- S * sum(sapply(j, function(x) brand.share[x]))
            choose(n, rj) * beta(alphaj + rj, S - alphaj + n - rj)/beta(alphaj, S - alphaj)
        }, env = list2env(list(S = 1.29527957011121, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02)), parent = baseenv())), 
            brand.pen = genthat::with_env(function(j, limit = c(0:nstar)) {
                if (check == T) {
                  cat("In brand.pen, nstar=", limit[length(limit)], "\n")
                }
                p0 <- sum(sapply(limit, function(i, j) {
                  Pn(i) * p.rj.n(0, i, j)
                }, j = j))
                1 - p0
            }, env = list2env(list(Pn = genthat::with_env(function(n) {
                if (n == 0) {
                  g <- 0
                } else {
                  a <- 0:(n - 1)
                  num <- log(K + a)
                  den <- log(1 + a)
                  g <- sum(num - den)
                }
                exp((-K) * log(1 + M/K) + g + n * log(M/(M + K)))
            }, env = list2env(list(M = 1.456, K = 0.778802679700109), parent = emptyenv())), p.rj.n = genthat::with_env(function(rj, 
                n, j) {
                alphaj <- S * sum(sapply(j, function(x) brand.share[x]))
                choose(n, rj) * beta(alphaj + rj, S - alphaj + n - rj)/beta(alphaj, S - alphaj)
            }, env = list2env(list(S = 1.29527957011121, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02)), 
                parent = emptyenv()))), parent = emptyenv())), nstar = 50, check = FALSE), parent = baseenv())), wp = genthat::with_env(function(j, 
            limit = 1:nstar) {
            sum(sapply(limit, function(n, j) {
                n * Pn(n) * (1 - p.rj.n(0, n, j))
            }, j = j))/brand.pen(j)
        }, env = list2env(list(Pn = genthat::with_env(function(n) {
            if (n == 0) {
                g <- 0
            } else {
                a <- 0:(n - 1)
                num <- log(K + a)
                den <- log(1 + a)
                g <- sum(num - den)
            }
            exp((-K) * log(1 + M/K) + g + n * log(M/(M + K)))
        }, env = list2env(list(M = 1.456, K = 0.778802679700109), parent = baseenv())), p.rj.n = genthat::with_env(function(rj, 
            n, j) {
            alphaj <- S * sum(sapply(j, function(x) brand.share[x]))
            choose(n, rj) * beta(alphaj + rj, S - alphaj + n - rj)/beta(alphaj, S - alphaj)
        }, env = list2env(list(S = 1.29527957011121, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02)), parent = baseenv())), 
            brand.pen = genthat::with_env(function(j, limit = c(0:nstar)) {
                if (check == T) {
                  cat("In brand.pen, nstar=", limit[length(limit)], "\n")
                }
                p0 <- sum(sapply(limit, function(i, j) {
                  Pn(i) * p.rj.n(0, i, j)
                }, j = j))
                1 - p0
            }, env = list2env(list(Pn = genthat::with_env(function(n) {
                if (n == 0) {
                  g <- 0
                } else {
                  a <- 0:(n - 1)
                  num <- log(K + a)
                  den <- log(1 + a)
                  g <- sum(num - den)
                }
                exp((-K) * log(1 + M/K) + g + n * log(M/(M + K)))
            }, env = list2env(list(M = 1.456, K = 0.778802679700109), parent = emptyenv())), p.rj.n = genthat::with_env(function(rj, 
                n, j) {
                alphaj <- S * sum(sapply(j, function(x) brand.share[x]))
                choose(n, rj) * beta(alphaj + rj, S - alphaj + n - rj)/beta(alphaj, S - alphaj)
            }, env = list2env(list(S = 1.29527957011121, brand.share = c(0.25, 0.19, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02)), 
                parent = emptyenv())), check = FALSE), parent = emptyenv())), nstar = 50), parent = baseenv())), check = FALSE, 
        error = 0), class = "dirichlet")
    expect_equal(NBDdirichlet:::summary.dirichlet(object = dobj, t = 1, type = "dup", dup.brand = 2), list(dup = structure(c(0.24, 
        1, 0.1, 0.1, 0.09, 0.08, 0.03, 0.02), names = c("Colgate DC", "Macleans", "Close Up", "Signal", "ultrabrite", "Gibbs SR", 
        "Boots Priv. Label", "Sainsbury Priv. Lab."))))
})
