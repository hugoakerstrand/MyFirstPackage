#'Reads in file and converts it to the scell type
#'@param sco "" separated text file with row names and header
#'@export read.myfile
#'
read.myfile<-function(sco){
  exp.vals <- read.delim(sco,row.names=1,header=T,sep="")
  exp.vals.s4 <- new("scell",data=as.matrix(exp.vals))
  exp.vals.s4 #reads in the file as a scell s4
}

