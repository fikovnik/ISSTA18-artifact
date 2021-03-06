jbcol<-c(376, 50.10, 97.00, 
386, 48.50, 37.00, 
407, 44.30, 25.00, 
457, 44.35, 25.00, 
420, 51.10, 37.00, 
402, 46.60, 37.00, 
411, 48.00, 85.00, 
375, 50.50, 37.00, 
390, 48.00, 25.00, 
381, 47.45, 37.00, 
389, 45.25, 25.00, 
460, 44.00, 37.00, 
441, 43.10, 37.00, 
404, 44.05, 25.00, 
398, 43.40, 25.00, 
382, 47.65, 25.00, 
449, 37.25, 25.00, 
356, 53.70, 37.00, 
368, 54.85, 49.00, 
383, 47.65, 61.00, 
395, 48.40, 25.00, 
363, 68.65, 33.00, 
446, 41.00, 37.00, 
326, 62.50, 73.00, 
436, 50.60, 37.00, 
429, 48.50, 37.00, 
333, 58.50, 37.00, 
418, 56.00, 37.00, 
351, 62.05, 61.00, 
380, 50.85, 25.00, 
362, 69.45, 21.00, 
350, 62.70, 61.00, 
 85, 49.30, 36.00, 
514, 44.80, 39.00, 
355, 58.15, 73.00, 
496, 55.60, 39.00)
# ?? from graph of yy vs tt suspect data bad
jbm<-matrix(jbcol, byrow=TRUE, ncol=3)
yy<-as.numeric(jbm[,3])
str(yy)
tt<-as.numeric(jbm[,2])
str(tt)
jbdata<-data.frame(tt=tt, yy=yy)
jbmodel<-"yy~10*b1*(1-exp(-0.01*b2)*(tt-b3))"
jbstart<-c(b1=1,b2=1,b3=-10)
require(nlmrt)
anlsmnq1<-nlsmnq(jbmodel, start=jbstart, trace=TRUE, data=jbdata)

print(anlsmnq1) # seems to get b3 too large.
cat("=============\n")

