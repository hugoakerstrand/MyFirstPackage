#'Returns the Y cordinates for Tsne plotting.
#'@param sco single cell object S4 file
#'@param nclust Number of clusters
#'@export my.clusters

my.clusters<-function(sco , nclust ){
  sco@clusters <- cutree(sco@pheatout[[1]]$tree_row,k=nclust)
  sco
}
