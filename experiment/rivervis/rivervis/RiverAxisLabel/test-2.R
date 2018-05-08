library(testthat)

.Random.seed <<- .ext.seed

test_that("RiverAxisLabel", {
    riverlayout <- list(riverdata = structure(list(river = c("Ballinderry", "Lissan", "Ballymully", "Kingsmill", "Killymoon-Claggan", 
        "Rock", "Kildress", "Tulnacross"), rivercode = c("river1", "river2", "river3", "river4", "river5", "river6", "river7", 
        "river8"), length = c(45.3, 21.3, 17.1, 13.5, 28.5, 16, 9.3, 7.3), parent = c(NA, "Ballinderry", "Lissan", "Ballinderry", 
        "Ballinderry", "Killymoon-Claggan", "Ballinderry", "Ballinderry"), position = c("M", "L", "L", "R", "R", "L", "R", 
        "L"), distance = c(0, 11.5, 1.7, 13.9, 19.7, 9.3, 30.5, 32.3), rmouth = c(48.2, 36.7, 35, 34.3, 28.5, 19.2, 17.7, 
        15.9), rsource = c(2.90000000000001, 15.4, 17.9, 20.8, 0, 3.2, 8.40000000000001, 8.60000000000001), row = c(0, 1, 
        2, -1, -2, -1, -3, 2)), row.names = c(NA, -8L), class = "data.frame"), H.MAX = 6, H.SIZE = 0.1, W.MAX = 48.2, W.SIZE = 0.020746887966805, 
        X1 = c(1, 0.761410788381743, 0.726141078838174, 0.711618257261411, 0.591286307053942, 0.398340248962656, 0.367219917012448, 
            0.329875518672199), X2 = c(0.0601659751037346, 0.319502074688797, 0.371369294605809, 0.431535269709544, 0, 0.066390041493776, 
            0.174273858921162, 0.178423236514523), Y = c(0.5, 0.65, 0.8, 0.35, 0.2, 0.35, 0.05, 0.8), direction = -1)
    expect_equal(rivervis:::RiverAxisLabel(label = "Elevation (m)", riverlayout = riverlayout, adj = c(0.5, -4), srt = 270, 
        side = "R"), NULL)
})
