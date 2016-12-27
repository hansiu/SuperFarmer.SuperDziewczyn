#'Funkcja opisująca przebieg gry
#'
#'@param strategia nazwa funkcji opisującej strategię gracza
#'@param stado_max maksymalny stan stada glownego
#'@param kostka_zielona zwierzeta na kostce zielonej
#'@param kostka_czerwona zwierzeta na kostce czerwonej
#'@param warunek_wygranej warunki konieczne do zakonczenia gry
#'@param co_zostawia_lis wektor zawierajacy liczbe zwierzat ktora maksymalnie zostaje w stadzie po ataku lisa
#'@param co_zostawia_wilk wektor zawierajacy liczbe zwierzat ktora maksymalnie zostaje w stadzie po ataku wilka
#'
#'@return liczba oznaczajaca dlugosc trwania gry
#'
#'@export

gra <- function(strategia,stado_max=SuperFarmer.SuperDziewczyn::stado_max,kostka_zielona=SuperFarmer.SuperDziewczyn::kostka_zielona,kostka_czerwona=SuperFarmer.SuperDziewczyn::kostka_czerwona,warunek_wygranej=SuperFarmer.SuperDziewczyn::warunek_wygranej,co_zostawia_lis=SuperFarmer.SuperDziewczyn::co_zostawia_lis,co_zostawia_wilk=SuperFarmer.SuperDziewczyn::co_zostawia_wilk){
  stado <- numeric(7)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  licznik <- 0
  while(.wygrana(warunek_wygranej,stado)!=TRUE){
    stado <- strategia(stado)
    stado <- .przebieg_rzutu(stado,stado_max,kostka_zielona,kostka_czerwona,co_zostawia_lis,co_zostawia_wilk)
    licznik <- licznik+1
  }
  return(licznik)
}
