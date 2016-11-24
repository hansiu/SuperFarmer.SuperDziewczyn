#'Funkcja opisujaca przebieg gry
#'
#'@param strategia nazwa funkcji opisującej strategię gracza
#'
#'
#'@export

przegieg_gry <- function(strategia){
  stado <- numeric(7)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  licznik <- 0
  while(!warunki_wygranej(stado)){
  stado <- strategia(stado)
  stado <- przebieg_rzutu(stado)
  }
}
