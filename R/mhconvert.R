#' mhconvert
#'
#' Converting mouse gene symbol to human gene symbol
#'
#'
#' @param () 함수의 input parameter
#' @export
mhconvert <-function() {
  Geneid = ms$msgene %>% convert_mouse_to_human_symbols()
  hu <<- cbind(Geneid, ms)
  hu <<- hu$msgene <- NULL
}
