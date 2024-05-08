# Removing duplicated gene names
#
# @export
rmdup <-function(prac) {
  prac <- read.csv(file = "~/Desktop/R/hu.csv")
  prac <- prac[!duplicated(prac$Geneid),]
  write.csv(prac, file="~/Desktop/R/humansym.csv", row.names = F)
  file.remove('ms.csv', 'hu.csv')
}