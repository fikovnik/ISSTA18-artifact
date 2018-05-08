library(testthat)

.Random.seed <<- .ext.seed

test_that("MixBonf.p.adjust", {
    pd.set <- list(c(0.00390625, 0.03515625, 0.14453125, 0.36328125, 0.63671875, 0.85546875, 0.96484375, 0.99609375, 1), 
        c(0.0009765625, 0.015625, 0.103515625, 0.3671875, 0.7626953125, 1))
    pd <- c(0.03515625, 0.015625)
    pc <- c(0.04, 0.1)
    expect_equal(MHTdiscrete:::MixBonf.p.adjust(pc = pc, pd = pd, pd.set = pd.set), c(0.13078125, 0.25078125, 0.12109375, 
        0.05078125))
})
