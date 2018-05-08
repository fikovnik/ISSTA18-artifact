library(testthat)

.Random.seed <<- .ext.seed

test_that("localRFiles", {
    expect_equal(SoDA:::localRFiles(directory = system.file("R-ex", package = "SoDA")), c("binaryRep.R", "chunksAdd.R", "digest.R", 
        "evalText.R", "geoXY.R", "jitterXY.R", "localRFiles.R", "muststop.R", "packageAdd.R", "promptAll.R", "randomGeneratorState-class.R", 
        "randomSlippage.R", "runExample.R", "scanRepeated.R", "showLanguage.R", "strictOp.R", "trackSpeed.R", "tryRequire.R"))
})
