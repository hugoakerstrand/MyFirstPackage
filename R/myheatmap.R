#'Plots a heatmap of the N variable genes you find from using the earlier function.
#'@param sco separated text file with row names and header
#'@export myheatmap
myheatmap <- function( sco ) {
  pheat.out<-pheatmap( sco@data[sco@var.genes, ], scale="row" )
  pheat.list <- list(po=pheat.out)
  sco@pheatout <- pheat.list
  sco #this is a comment
}
