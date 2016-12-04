#'Funkcja opisująca przebieg gry
#'
#'@param strategia nazwa funkcji opisującej strategię gracza
#'
#'@examples
#'gra(strategia_nowa)
#'
#'@export

gra <- function(strategia){
  stado <- numeric(7)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  stado_max <- numeric(7)
  stado_max <- c(60,24,20,12,6,4,2)
  names(stado_max) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')

  licznik <- 0
  warunek_wygranej <- c(1,1,1,1,1,0,0)
  names(warunek_wygranej) <- names(stado)
  kostka_zielona <- c("krolik","krolik","krolik","krolik","krolik","krolik","owca",   "owca" ,"owca","swinia","krowa","wilk")
  kostka_czerwona <- c("krolik","krolik","krolik","krolik","krolik","krolik","owca","owca","swinia","swinia","kon", "lis")
  while(wygrana(warunek_wygranej,stado)!=TRUE){
    stado <- strategia(stado)
    stado <- przebieg_rzutu(stado,stado_max,kostka_zielona,kostka_czerwona)
    licznik <- licznik+1
  }
  return(licznik)
}
