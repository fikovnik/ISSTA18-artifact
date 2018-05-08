library(testthat)

.Random.seed <<- .ext.seed

test_that("merge_surnames", {
    voters <- structure(list(VoterID = structure(c(1L, 3L, 4L, 5L, 6L, 7L, 8L, 9L, 10L, 2L), .Label = c("1", "10", "2", "3", 
        "4", "5", "6", "7", "8", "9"), class = "factor"), surname = structure(c(4L, 2L, 8L, 1L, 10L, 7L, 3L, 5L, 9L, 6L), 
        .Label = c("Fifield", "Imai", "Johnson", "Khanna", "Lopez", "Morse", "Ratkovic", "Velasco", "Wantchekon", "Zhou"), 
        class = "factor"), state = structure(c(2L, 2L, 3L, 2L, 2L, 2L, 3L, 2L, 2L, 1L), .Label = c("DC", "NJ", "NY"), class = "factor"), 
        CD = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 3L, 2L, 2L, 1L), .Label = c("0", "12", "9"), class = "factor"), county = structure(c(2L, 
            2L, 3L, 2L, 2L, 2L, 3L, 2L, 2L, 1L), .Label = c("001", "021", "061"), class = "factor"), tract = structure(c(2L, 
            3L, 4L, 3L, 3L, 2L, 5L, 3L, 3L, 1L), .Label = c("001301", "004000", "004501", "004800", "015100"), class = "factor"), 
        block = structure(c(2L, 1L, 5L, 1L, 1L, 1L, 4L, 1L, 1L, 3L), .Label = c("1025", "3001", "3005", "4000", "6001"), 
            class = "factor"), precinct = structure(c(2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), .Label = c("", "6"), class = "factor"), 
        age = c(29, 40, 33, 27, 28, 35, 25, 33, 50, 29), sex = c(0, 0, 0, 0, 1, 0, 0, 0, 0, 1), party = structure(c(2L, 1L, 
            3L, 1L, 1L, 2L, 1L, 3L, 3L, 3L), .Label = c("Dem", "Ind", "Rep"), class = "factor"), PID = structure(c(1L, 2L, 
            3L, 2L, 2L, 1L, 2L, 3L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor"), place = structure(c(4L, 3L, 2L, 
            3L, 3L, 3L, 2L, 3L, 3L, 1L), .Label = c("50000", "51000", "60900", "74000"), class = "factor")), row.names = c(NA, 
        -10L), class = "data.frame")
    expect_equal(wru:::merge_surnames(voter.file = voters), structure(list(VoterID = structure(c(1L, 3L, 4L, 5L, 6L, 7L, 
        8L, 9L, 10L, 2L), .Label = c("1", "10", "2", "3", "4", "5", "6", "7", "8", "9"), class = "factor"), surname = structure(c(4L, 
        2L, 8L, 1L, 10L, 7L, 3L, 5L, 9L, 6L), .Label = c("Fifield", "Imai", "Johnson", "Khanna", "Lopez", "Morse", "Ratkovic", 
        "Velasco", "Wantchekon", "Zhou"), class = "factor"), state = structure(c(2L, 2L, 3L, 2L, 2L, 2L, 3L, 2L, 2L, 1L), 
        .Label = c("DC", "NJ", "NY"), class = "factor"), CD = structure(c(2L, 2L, 2L, 2L, 2L, 2L, 3L, 2L, 2L, 1L), .Label = c("0", 
        "12", "9"), class = "factor"), county = structure(c(2L, 2L, 3L, 2L, 2L, 2L, 3L, 2L, 2L, 1L), .Label = c("001", "021", 
        "061"), class = "factor"), tract = structure(c(2L, 3L, 4L, 3L, 3L, 2L, 5L, 3L, 3L, 1L), .Label = c("001301", "004000", 
        "004501", "004800", "015100"), class = "factor"), block = structure(c(2L, 1L, 5L, 1L, 1L, 1L, 4L, 1L, 1L, 3L), .Label = c("1025", 
        "3001", "3005", "4000", "6001"), class = "factor"), precinct = structure(c(2L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L, 1L), 
        .Label = c("", "6"), class = "factor"), age = c(29, 40, 33, 27, 28, 35, 25, 33, 50, 29), sex = c(0, 0, 0, 0, 1, 0, 
        0, 0, 0, 1), party = structure(c(2L, 1L, 3L, 1L, 1L, 2L, 1L, 3L, 3L, 3L), .Label = c("Dem", "Ind", "Rep"), class = "factor"), 
        PID = structure(c(1L, 2L, 3L, 2L, 2L, 1L, 2L, 3L, 3L, 3L), .Label = c("0", "1", "2"), class = "factor"), place = structure(c(4L, 
            3L, 2L, 3L, 3L, 3L, 2L, 3L, 3L, 1L), .Label = c("50000", "51000", "60900", "74000"), class = "factor"), surname.match = c("KHANNA", 
            "IMAI", "VELASCO", "FIFIELD", "ZHOU", "RATKOVIC", "JOHNSON", "LOPEZ", "", "MORSE"), p_whi = c(0.0676, 0.0812, 
            0.0594, 0.9355, 0.0098, 0.9187, 0.5897, 0.0486, 0.6665, 0.9054), p_bla = c(0.0043, 0.00239999999999996, 0.0026, 
            0.0022, 0.0018, 0.0108333333333334, 0.3463, 0.0057, 0.0853, 0.0431), p_his = c(0.0082, 0.0689, 0.8227, 0.0285, 
            0.000649999999999984, 0.0108333333333334, 0.0236, 0.9292, 0.1367, 0.0206), p_asi = c(0.8668, 0.7375, 0.1051, 
            0.0078, 0.982, 0.0108333333333334, 0.0054, 0.0102, 0.0797, 0.0072), p_oth = c(0.0531, 0.11, 0.0102, 0.0259, 0.00574999999999998, 
            0.0488, 0.035, 0.0063, 0.0318, 0.0237)), row.names = c("4", "2", "8", "1", "10", "7", "3", "5", "11", "6"), class = "data.frame"))
})
