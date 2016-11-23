#'Wynik rzutu dwoma kostkami
#'
#'Funkcja rzut_kostkami() wyznacza parę wartosci - nazwy zwierzat na obu kostkach.
#'
#'@return Wektor zawierajacy nazwy zwierzat wylosowanych na kostce zielonej i czerwonej odpowiednio
#'
#'@export

rzut_kostkami <- function(){
  wynik <- c(sample(kostka_zielona, 1), sample(kostka_czerwona, 1))
  return(wynik)
}
