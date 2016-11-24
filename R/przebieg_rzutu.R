#'Funkcja opisujaca przebieg rzutu i zwiazane z nim zmiany w stadzie gracza i stadzie glownym
#'
#'@param stado stan stada gracza
#'
#'@export


przebieg_rzutu <- function(stado){
  otrzymane <- numeric(7)
  kostki<-rzut_kostkami(kostka_zielona,kostka_czerwona)

  czy_wilk <- 'wilk' %in% kostki
  czy_lis <- 'lis' %in% kostki
  if (czy_wilk | czy_lis){
    stado <- atak_drapieznika(czy_wilk,czy_lis,stado,stado_max)
  }

  wylosowane <- zamien_wynik_rzutu_na_wektor(kostki)
  otrzymane <- ifelse(wylosowane == 0, 0, trunc((stado+wylosowane)/2))
  otrzymane <- dostaniemy(otrzymane,stado,stado_max-stado)
  if (!all(otrzymane==0)){
    stado <- dodaj_lub_odejmij_zwierzeta(otrzymane,1,stado,stado_max-stado)
  }

  return(stado)
}
