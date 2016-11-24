#'Funkcja sprawdzajaca czy spelnione są warunki wygranej
#'
#'Funkcja wygrana() przyjmuje wektor warunki wygranej oraz tabele zawierajaca stan stada gracza
#'
#'@param warunki_wygranej wektor z warunkami zakonczenia gry
#'@param table stan stada gracza
#'
#'@export

wygrana <- function(warunki_wygranej,table){
  for(i in 1:7){
    if(table[[i]]<warunki_wygranej[[i]]) return(FALSE)
  }
  return(TRUE)
}
