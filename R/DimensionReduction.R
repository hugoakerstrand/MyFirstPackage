#'Returns the Y cordinates for Tsne plotting.
#'@param sco single cell object S4 file
#'@export CalcTSNE
CalcTSNE <- function( sco, ndim ) {

  tsnecalc <- Rtsne(t(sco@data[sco@var.genes,]),dims = ndim)
  sco@tsne <- tsnecalc$Y #puts the genes into a new slot
  rownames(sco@tsne)<-colnames(sco@data)
  sco #returns the new object

}
