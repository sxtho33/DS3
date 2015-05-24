###-Below from  course 3 May-2015
setwd("C:\\Sony-Working folder Jan-2015\\2015 Data science -Harvard\\2015.01. CSCI E063 Big data analytics\\R work directory images")

##checking if the directory is available
if(!file.exists("3datascience"))
{
  dir.create("3datascience")
}
#=======================================================================
# API  Github
# Authorization callback URL =http://localhost:1410
install.packages("Rcpp")   #if the browesr crashes.. please run this as the first install ver hlepful
install.packages("httr")
install.packages("httpuv")
library(httr)
library(httpuv)
#-----GITHUB-----------------------------------------------------------
# GITHUB  Client Id = 5629fa7e1fcc9566f168
# GITHUB   Client Secret = cf0bad18b458814679545204e014e870f71c967f
#---------------------------------------------------------------------
myapp=oauth_app("github",key="5629fa7e1fcc9566f168",secret="cf0bad18b458814679545204e014e870f71c967f")
github_token = oauth2.0_token(oauth_endpoints("github"), myapp,cache=FALSE)
gtoken <- config(token = github_token)
req <- with_config(gtoken, GET("https://api.github.com/users/jtleek/repos"))
content(req)
               
##read  from the web html
con=url("http://biostat.jhsph.edu/~jleek/contact.html ")
htmlcode=readLines(con)
close(con)
htmlcode




##download file
fileUrl="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx"
filecsv="https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
q25="https://d396qusza40orc.cloudfront.net/getdata%2Fwksst8110.for"
q25table=download.file(q25,destfile="./3datascience/q25a.for")



download.file(filecsv,destfile="./3datascience/q22.csv")  

download.file(fileUrl,destfile="./3datascience/q3.xlsx", mode="wb")  

fileUrl="names(Q2https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"



#mode="wb" for binary mode
list.files("./3datascience")

#read csv file
Q1=read.csv("./3datascience/housing.csv")


QN= read.table("./3datascience/housing.csv")

#subset read file  select * from Q1 where Q1.VAL = 24
q1=subset(Q1,VAL==24)


#subset  7 to 15 of the columns
q2=Q2[,c(7:15)]
q2b=Q2[c(18:23),c(7:15)]

#subset 18 to 23 of rows
q2a=q2[c(18:23),]
dat=q2a
sum(dat$Zip*dat$Ext,na.rm=T) 
#subset a1 column has 21231 
a1df1=subset(a1df,a1==21231)

Q1$val

#read XLX excel file
Q2=read.xlsx("./3datascience/q2.xlsx", sheetIndex=1, Header=TRUE)

https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx 
library(Xlsx)


---------------------------
###-Below from  course 2 R - Feb-2015
###find col names by rownames or colnames
nm <- rownames(state.x77)


### subset a dataframe- 
iris[1:5, c("Sepal.Length", "Sepal.Width")]
eg:- 
  coln=colnames(temp)
  coln.r=c(coln[2],coln[7],coln[11],coln[17],coln[23])
  temp1=temp[,coln.r]  # this has only the above columns
  
###removing NA

> y=c("a",NA,"c",NA,NA,"f")
> x=c(1,2,NA,4,NA,6)
> good=complete.cases(x,y)
> x(good)
Error: could not find function "x"
> x[good]
[1] 1 6
> 
  ##to make a column numeric
  ## outcome[,11] = as.numeric(outcome[,11])
  
  
##ow to find a type of a variable
##  typeof(var)
  typeof(state1)

##how to find distinct of a column
##unique(column)
state1=unique(outcome[,7])


  #list of files from a directory
  l=list.files(path = "./specdata")
  
C:\Sony-Working folder Jan-2015\2015 Data science -Harvard\2015.01. CSCI E063 Big data analytics\R work directory images\rprog_data_ProgAssignment3-data
  
  setwd("C:/Sony-Working folder Jan-2015/2015 Data science -Harvard/2015.01. CSCI E063 Big data analytics/R work directory images")
mydata = read.xls("mydata.xls")