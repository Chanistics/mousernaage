#' rmdup
#'
#' Removing duplicated genes and NAs
#'
#'
#' @param () 함수의 input parameter
#' @export

rmdup <-function() {
  prac <<- hu
  prac <<- prac[!duplicated(prac$Geneid),]
  prac <<- prac[!(prac$Geneid == 'NA'), ]
  prac <<- na.omit(prac)
  prac <<- prac[,-2]

  write.csv(prac, file="humansym.csv", row.names = F)
}
