library(testthat)

.Random.seed <<- .ext.seed

test_that("RiverMap", {
    B.river <- structure(list(River = c("Ballinderry", "Lissan", "Ballymully", "Kingsmill", "Killymoon-Claggan", "Rock", 
        "Kildress", "Tulnacross"), Length = c(45.3, 21.3, 17.1, 13.5, 28.5, 16, 9.3, 7.3), Position = c("M", "L", "L", "R", 
        "R", "L", "R", "L"), Parent = c(NA, "Ballinderry", "Lissan", "Ballinderry", "Ballinderry", "Killymoon-Claggan", "Ballinderry", 
        "Ballinderry"), Distance = c(0, 11.5, 1.7, 13.9, 19.7, 9.3, 30.5, 32.3)), class = "data.frame", row.names = c(NA, 
        -8L))
    expect_equal(rivervis:::RiverMap(river = B.river$River, length = B.river$Length, parent = B.river$Parent, position = B.river$Position, 
        distance = B.river$Distance, row = c(5, -1, 6, 3, -4, 2, -6, 7), direction = -1), list(riverdata = structure(list(rivercode = c("river1", 
        "river2", "river3", "river4", "river5", "river6", "river7", "river8"), river = c("Ballinderry", "Lissan", "Ballymully", 
        "Kingsmill", "Killymoon-Claggan", "Rock", "Kildress", "Tulnacross"), length = c(45.3, 21.3, 17.1, 13.5, 28.5, 16, 
        9.3, 7.3), parent = c(NA, "Ballinderry", "Lissan", "Ballinderry", "Ballinderry", "Killymoon-Claggan", "Ballinderry", 
        "Ballinderry"), position = c("M", "L", "L", "R", "R", "L", "R", "L"), distance = c(0, 11.5, 1.7, 13.9, 19.7, 9.3, 
        30.5, 32.3), rmouth = c(48.2, 36.7, 35, 34.3, 28.5, 19.2, 17.7, 15.9), rsource = c(2.90000000000001, 15.4, 17.9, 
        20.8, 0, 3.2, 8.40000000000001, 8.60000000000001), row = c(-5, 1, -6, -3, 4, -2, 6, -7)), row.names = c("Ballinderry", 
        "Lissan", "Ballymully", "Kingsmill", "Killymoon-Claggan", "Rock", "Kildress", "Tulnacross"), class = "data.frame"), 
        H.MAX = 14, H.SIZE = 0.0454545454545455, W.MAX = 48.2, W.SIZE = 0.020746887966805, X1 = c(1, 0.761410788381743, 0.726141078838174, 
            0.711618257261411, 0.591286307053942, 0.398340248962656, 0.367219917012448, 0.329875518672199), X2 = c(0.0601659751037346, 
            0.319502074688797, 0.371369294605809, 0.431535269709544, 0, 0.066390041493776, 0.174273858921162, 0.178423236514523), 
        Y = c(0.159090909090909, 0.568181818181818, 0.0909090909090909, 0.295454545454545, 0.772727272727273, 0.363636363636364, 
            0.909090909090909, 0.0227272727272727), direction = -1))
})
