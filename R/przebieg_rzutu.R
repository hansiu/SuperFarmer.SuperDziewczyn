#'Funkcja opisujaca przebieg rzutu i zwiazane z nim zmiany w stadzie gracza i stadzie glownym
#'
#'@param stado stan stada gracza
#'@param stado_glowne stan stada glownego
#'
#'@export


przebieg_rzutu <- function(stado, stado_glowne){
  NoweStany <- list(Stado=stado,Glowne=stado_glowne)
  otrzymane<-numeric(7)
  kostki<-rzut_kostkami()
  czy_wilk <- 'wilk' %in% kostki
  czy_lis <- 'lis' %in% kostki
  if (czy_wilk | czy_lis){
    NoweStany <-atak_drapieznika(czy_wilk,czy_lis,NoweStany$Stado,NoweStany$Glowne)
  }
  stado <- NoweStany$Stado
  stado_glowne <- NoweStany$Glowne
  #czy w rzucie rozmnozylo sie jakies zwierze?
  wylosowane <- zamien_wynik_rzutu_na_wektor(kostki)
  otrzymane <- ifelse(wylosowane == 0, 0, trunc((stado+wylosowane)/2))
  otrzymane <- dostaniemy(otrzymane,stado,stado_glowne)
  if (!all(otrzymane==0)){
    NoweStany <- dodaj_lub_odejmij_zwierzeta(otrzymane,1,stado,stado_glowne)
    stado <- NoweStany$Stado
    stado_glowne <- NoweStany$Glowne
  }
  return(list(Stado=stado,Glowne=stado_glowne))
}
