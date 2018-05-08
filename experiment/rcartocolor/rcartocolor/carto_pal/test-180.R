library(testthat)

.Random.seed <<- .ext.seed

test_that("carto_pal", {
    expect_equal(rcartocolor:::carto_pal(name = "Burg"), c("#ffc6c4", "#f4a3a8", "#e38191", "#cc607d", "#ad466c", "#8b3058", 
        "#672044"))
})
