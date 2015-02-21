###removing NA

> y=c("a",NA,"c",NA,NA,"f")
> x=c(1,2,NA,4,NA,6)
> good=complete.cases(x,y)
> x(good)
Error: could not find function "x"
> x[good]
[1] 1 6
> 

  #list of files from a directory
  l=list.files(path = "./specdata")
  
  
  
  setwd("C:/Sony-Working folder Jan-2015/2015 Data science -Harvard/2015.01. CSCI E063 Big data analytics/R work directory images")
mydata = read.xls("mydata.xls")