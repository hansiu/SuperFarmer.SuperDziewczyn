#'Funkcja opisująca przebieg gry
#'
#'@param strategia nazwa funkcji opisującej strategię gracza
#'
#'
#'@export

gra <- function(strategia,stado_max=SuperFarmer.SuperDziewczyn::stado_max,kostka_zielona=SuperFarmer.SuperDziewczyn::kostka_zielona,kostka_czerwona=SuperFarmer.SuperDziewczyn::kostka_czerwona,warunek_wygranej=SuperFarmer.SuperDziewczyn::warunek_wygranej,co_zostawia_lis=SuperFarmer.SuperDziewczyn::co_zostawia_lis,co_zostawia_wilk=SuperFarmer.SuperDziewczyn::co_zostawia_wilk){
  stado <- numeric(7)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  licznik <- 0
  warunek_wygranej <- c(1,1,1,1,1,0,0)
  names(warunek_wygranej) <- names(stado)
  while(.wygrana(warunek_wygranej,stado)!=TRUE){
    stado <- strategia(stado)
    stado <- .przebieg_rzutu(stado,stado_max,kostka_zielona,kostka_czerwona)
    licznik <- licznik+1
  }
  return(licznik)
}
