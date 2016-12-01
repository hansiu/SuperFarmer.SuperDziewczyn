#'Funkcja powtarzajaca gre 10000 razy
#'
#'@param strategia strategia ktora chcemy grac
#'@return podstawowe statystki dla czasow trwania gier
#'
#'@export

badaj_gre <- function(strategia){
  czasy <- data.frame()
  for (i in 1:10000){
    czasy[i,1] <-gra(strategia)
  }
  statystyki <- summary(czasy)
  print(length(czasy[,1]))
  return(statystyki)
}
