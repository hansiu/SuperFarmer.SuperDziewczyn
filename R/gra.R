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
  names(warunek_wygranej) <- names(stado)
  while(wygrana(warunek_wygranej,stado)!=TRUE){
  wymiana <- strategia(stado)
  stado <- dokonanie_wymian(stado,stado_max,wymiana)
  stado <- przebieg_rzutu(stado)
  cat(stado,"\n")
  licznik <- licznik+1
  }
  return(licznik)
}
