#'Funkcja obliczajaca podstawowe statystki dla wybranej wczesniej liczby gier
#'
#'@param wektor wektor zawierajacy dane dotyczace dlugosci trwania poszczegolnych gier
#'@return statystyki dla gry
#'@export

statystyki_gry <- function(wektor){
  czasy <- as.data.frame(wektor)
  colnames(czasy) <- "Czas_gry"
  statystyki <- summary(czasy$Czas_gry)

  return(statystyki)
}
