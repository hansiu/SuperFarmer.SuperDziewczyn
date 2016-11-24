#'Dokonanie wymian zwiazanych ze strategia gracza
#'
#'Funkcja dokonanie_wymian() zwraca nam stany stad po wymianie
#'
#'@param stado stado gracza
#'@param stado_max maksymalny stan stada glownego
#'@param tabela tabela zmian dostepnych po wymianie
#'
#'@export

dokonanie_wymian <- function(stado, stado_max,tabela){
  stado_glowne <- stado_max - stado
  stado <- stado + tabela
  stado_glowne <- stado_glowne - tabela
  return(list(stado, stado_glowne))
}
