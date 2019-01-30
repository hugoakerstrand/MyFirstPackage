#'Reads in file and converts it to the scell type
#'@param sco Scell object
#'@param fname "" separated text file with row names and header
#'@export read.facs
#'
read.facs<-function(sco , fname ){
  if ( ! file.exists(fname) ) {
    stop( paste( "The file", fname, "does not exist" ))
  }
  facs.vals <- read.delim(fname,row.names=1,header=T,sep="")
  sco@facs <- as.matrix(t(facs.vals))[,colnames(sco@data)]
  sco #reads in the file as a scell s4
}
