#'Dokonanie wymian zwiazanych ze strategia gracza
#'
#'Funkcja dokonanie_wymian() zwraca nam stany stad po wymianie
#'
#'@param stado stado gracza
#'@param tabela tabela zmian dostepnych po wymianie
#'
#'@export

dokonanie_wymian <- function(stado,tabela){
  stado <- stado + tabela
  return(stado)
}
