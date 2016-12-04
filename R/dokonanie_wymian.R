#'Dokonanie wymian zwiazanych ze strategia gracza
#'
#'Funkcja dokonanie_wymian() zwraca nam stany stad po wymianie
#'
#'@param stado stado gracza
#'@param tabela tabela zmian dostepnych po wymianie
#'
#'@examples
#'dokonanie_wymian(stado,c("krolik"=1,"owca"=1,"swinia"=2,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0))
#'
#'@export

dokonanie_wymian <- function(stado,tabela){
  stado <- stado + tabela
  return(stado)
}
