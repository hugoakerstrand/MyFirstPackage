#'Plots a heatmap of the N variable genes you find from using the earlier function.
#'@param sco separated text file with row names and header
#'@export myheatmap
myheatmap <- function( sco ) {
  pheatmap( sco@data[sco@var.genes, ], scale="row" ) #this is a comment
}
