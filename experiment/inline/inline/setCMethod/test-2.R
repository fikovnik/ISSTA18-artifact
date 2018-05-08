library(testthat)

.Random.seed <<- .ext.seed

test_that("setCMethod", {
    signature <- methods::signature
    code <- "\n  SEXP res;\n  int nprotect = 0, nx, ny, nz, x, y;\n  PROTECT(res = Rf_duplicate(a)); nprotect++;\n  nx = INTEGER(GET_DIM(a))[0];\n  ny = INTEGER(GET_DIM(a))[1];\n  nz = INTEGER(GET_DIM(a))[2];\n  double sigma2 = REAL(s)[0] * REAL(s)[0], d2 ;\n  double cx = REAL(centre)[0], cy = REAL(centre)[1], *data, *rdata;\n  for (int im = 0; im < nz; im++) {\n    data = &(REAL(a)[im*nx*ny]); rdata = &(REAL(res)[im*nx*ny]);\n    for (x = 0; x < nx; x++)\n      for (y = 0; y < ny; y++) {\n        d2 = (x-cx)*(x-cx) + (y-cy)*(y-cy);\n        rdata[x + y*nx] = data[x + y*nx] * exp(-d2/sigma2);\n      }\n  }\n  UNPROTECT(nprotect);\n  return res;\n"
    expect_equal(inline:::setCMethod(f = "funy", sig = signature(a = "array", s = "numeric", centre = "numeric"), body = code, 
        verbose = TRUE), NULL)
})
