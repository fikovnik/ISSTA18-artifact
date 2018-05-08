library(testthat)

.Random.seed <<- .ext.seed

test_that("setCMethod", {
    sigSq <- structure(c("integer", "numeric"), names = c("n", "x"))
    sigQd <- structure(c("integer", "numeric"), names = c("n", "x"))
    codeSq <- "\n  for (int i=0; i < *n; i++) {\n    x[i] = x[i]*x[i];\n  }"
    codeQd <- "\n  squarefn(n, x);\n  squarefn(n, x);\n"
    expect_equal(inline:::setCMethod(f = c("squarefn", "quadfn"), sig = list(sigSq, sigQd), body = list(codeSq, codeQd), 
        convention = ".C"), NULL)
})
