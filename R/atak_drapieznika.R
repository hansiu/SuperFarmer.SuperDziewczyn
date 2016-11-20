#'Przeprowadznie atakow drapieznikow
#'
#'@param lis wartosc logiczna: TRUE - pojawil sie lis, FALSE - nie pojawil sie
#'@param wilk wartosc logiczna: TRUE - pojawil sie wilk, FALSE - nie pojawil sie
#'@param stado stan stada gracza
#'@param stado_glowne stan stada glownego
#'
#'
#'@export

atak_drapieznika <- function(lis = FALSE, wilk = FALSE,stado,stado_glowne){
  NoweStany <- list(Stado=stado,Glowne=stado_glowne)
  if (wilk == TRUE ){
    if (NoweStany$Stado['duzy_pies']>0){
      #ucieka duzy pies
      NoweStany <- dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,0,1),-1,NoweStany$Stado,NoweStany$Glowne)
    } else {
      # wszystko oprocz koni i psow ucieka
      NoweStany <- dodaj_lub_odejmij_zwierzeta(c(NoweStany$Stado[1:4],0,0,0),-1,NoweStany$Stado,NoweStany$Glowne)
    }
  }
  if (lis == TRUE ){
    if (NoweStany$Stado['maly_pies']>0){
      #ucieka maly pies
      NoweStany <- dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,1,0),-1,NoweStany$Stado,NoweStany$Glowne)
    } else {
      # wszystkie kroliki uciekaja
      NoweStany <- dodaj_lub_odejmij_zwierzeta(c(NoweStany$Stado['krolik'],0,0,0,0,0,0),-1,NoweStany$Stado,NoweStany$Glowne)

    }
  }
  stado <- NoweStany$Stado
  stado_glowne <- NoweStany$Glowne
  return(list(Stado=stado,Glowne=stado_glowne))
}
