#'Funkcja sprawdzajaca czy spelnione są warunki wygranej
#'
#'Funkcja wygrana() przyjmuje wektor warunki wygranej oraz tabele zawierajaca stan stada gracza
#'
#'@param warunek_wygranej wektor z warunkami zakonczenia gry
#'@param table stan stada gracza
#'
#'@examples
#'warunki_wygranej <- c("krolik"=1,"owca"=1,"swinia"=1,"krowa"=1,"kon"=1,"maly_pies"=0,"duzy_pies"=0)
#'stado <- c("krolik"=0,"owca"=1,"swinia"=1,"krowa"=1,"kon"=1,"maly_pies"=0,"duzy_pies"=0)
#'wygrana(warunki_wygranej,stado)
#'
#'@export

wygrana <- function(warunek_wygranej,table){
  for(i in 1:7){
    if(table[[i]]<warunek_wygranej[[i]]) return(FALSE)}
  return(TRUE)
  }


