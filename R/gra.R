#'Funkcja opisująca przebieg gry
#'
#'@param strategia nazwa funkcji opisującej strategię gracza
#'
#'
#'@export

gra <- function(strategia){
  stado <- numeric(7)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  licznik <- 0
  warunek_wygranej <- c(1,1,1,1,1,0,0)
  while(!wygrana(warunki_wygranej,stado)){
  stado <- strategia(stado)
  stado <- przebieg_rzutu(stado)
  }
}
