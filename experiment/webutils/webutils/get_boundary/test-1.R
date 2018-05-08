library(testthat)

.Random.seed <<- .ext.seed

test_that("get_boundary", {
    content_type <- "multipart/form-data; boundary=------------------------0555ef6c3d667a0d"
    expect_equal(webutils:::get_boundary(content_type = content_type), "------------------------0555ef6c3d667a0d")
})
