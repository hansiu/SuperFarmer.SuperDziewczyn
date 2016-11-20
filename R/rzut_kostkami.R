#'Wynik rzutu dwoma kostkami
#'
#'Funkcja rzut_kostkami() wyznacza parę wartosci - nazwy zwierzat na obu kostkach.
#'
#'@param a wektor zawierajacy zwierzeta na kostce zielonej
#'@param b wektor zawierajacy zwierzeta na kostce czerwonej
#'@return Wektor zawierajacy nazwy zwierzat wylosowanych na kostce zielonej i czerwonej odpowiednio
#'
#'@export

rzut_kostkami <- function(a,b){
  wynik <- c(sample(a, 1), sample(b, 1))
  return(wynik)
}
