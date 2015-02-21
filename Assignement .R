
c=seq(1:332)
c1=sprintf("%03d",c)
c2=paste(c1,".csv")
c2[1]
l=list.files(path = "./specdata")
setwd("./specdata")
for(i in 1:332){
    df=read.csv(l[i])
}
directory="specdata"

setwd("C:/Sony-Working folder Jan-2015/2015 Data science -Harvard/2015.01. CSCI E063 Big data analytics/R work directory images")

pollutantmean <- function(directory, pollutant, id = 1:332) {
  path1=paste("./",directory,sep="")
  #setwd(path1)
  l=list.files(path = path1)
#  l=as.data.frame(list.files(path = path1))
  length(l)
   id=1:2
  lid=length(id)
  lid
  id
  files.needed= which(rownames(l) %in% id) 
  while (id)
  df=read.csv(l[id])
  files.needed=rows.to.keep<-which(rownames(l) %in% id) 
  for(i in 1:2)
  {
  df=read.csv(l[i])
}
  
  rows.to.keep<-which(rownames(data) %in% names.to.keep) 
id=1:3
df=data.frame()
for (i in id){
  df1=read.csv(l[i]
  print(i)
  nrow(df1)
  df=cbind(df,df1)
  print(nrow(df))
}
  
df=data.frame()
for (i in id){
  #print("a")            
  df1=read.csv(l[i])
  #print("b")
  print(nrow(df1))
  print(i)
  #print("b")
  df=rbind(df,df1)
  print(nrow(df))
}

#finding the mean exercise 1
pollutantmean <- function(directory, pollutant, id = 1:332) {
    #print(getwd())
    path1=paste("./",directory,sep="")
    # setwd(path1)
    #l=list.files(directory)
    l=list.files(path = path1)
    #print(l)
    #l=as.data.frame(list.files(path = path1))
    df=data.frame()
    for (i in id){
        print("===========================for loop running " ) 
        print(i)
        #print(l[i])
        filepath=paste(path1,l[i],sep="/")
        #print(filepath)
        df1=read.csv(filepath)
        #print("b")
        #print(nrow(df1))
        #print(i)
        #print("b")
        df=rbind(df,df1)
        #print(nrow(df))
    
    }

    ## loop to find the pollutant 
    #pollutant= "nitrate"
    print(pollutant)
    p1=tolower(pollutant)
    if( p1 == "sulfate"){
        c1=2
    } 
    else if (p1 == "nitrate") 
    {
        c1=3
    }
    else  
    {
        print("ERROR-ERROR")
          return()
    }
    print(c1)
    ##to find the mean
    m1=mean(df[[c1]],na.rm=T)
    print (m1)
    #return(nrow(df)) 
    return(m1)
}