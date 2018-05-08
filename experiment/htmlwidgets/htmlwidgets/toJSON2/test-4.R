library(testthat)

.Random.seed <<- .ext.seed

test_that("toJSON2", {
    iris <- datasets::iris
    head <- utils::head
    expect_equal(htmlwidgets:::toJSON2(x = head(iris, 3), pretty = TRUE), structure("{\n  \"Sepal.Length\": [5.1, 4.9, 4.7],\n  \"Sepal.Width\": [3.5, 3, 3.2],\n  \"Petal.Length\": [1.4, 1.4, 1.3],\n  \"Petal.Width\": [0.2, 0.2, 0.2],\n  \"Species\": [\"setosa\", \"setosa\", \"setosa\"]\n}", 
        class = "json"))
})
