library(testthat)

.Random.seed <<- .ext.seed

test_that("statnet.cite.foot", {
    expect_equal(statnet.common:::statnet.cite.foot(pkg = "statnet.common"), structure("We have invested a lot of time and effort in creating the Statnet suite of packages for use by other researchers. Please cite it in all papers where it is used. The package statnet.common  is made distributed under the terms of the license: GPL-3 + file LICENSE", 
        class = "citationFooter"))
})
