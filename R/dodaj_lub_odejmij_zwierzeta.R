 #'Funkcja zmieniajaca stan stad: gracza i glownego
#'
#'
#'@param co mozliwe zmiany w stadzie
#'@param jak 1-dodawanie do stada gracza, -1 odejmowanie od stada gracza
#'@param stado stan stada gracza
#'@param stado_glowne stan stada glownego
#'
#'@examples
#'tabela <- c("krolik"=1,"owca"=1,"swinia"=0,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0)
#'dodaj_lub_odejmij_zwierzeta(tabela,1,stado)
#'co <- c("krolik"=1,"owca"=1,"swinia"=0,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0)
#'dodaj_lub_odejmij_zwierzeta(co,-1,stado)
#'@export

dodaj_lub_odejmij_zwierzeta <- function(co, jak=1,stado,stado_glowne){
  stado <- stado + jak * co
  stado_glowne <- stado_glowne - jak * co
  return(stado)
}
