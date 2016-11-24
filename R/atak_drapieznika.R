#'Przeprowadznie atakow drapieznikow
#'
#'@param lis wartosc logiczna: TRUE - pojawil sie lis, FALSE - nie pojawil sie
#'@param wilk wartosc logiczna: TRUE - pojawil sie wilk, FALSE - nie pojawil sie
#'@param stado stan stada gracza
#'@param stado_max maksymalny stan stada gracza
#'
#'
#'@export

atak_drapieznika <- function(lis = FALSE, wilk = FALSE,stado,stado_max){
  if (wilk == TRUE ){
    if (stado['duzy_pies']>0){
      #ucieka duzy pies
      stado <- dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,0,1),-1,stado,stado_max-stado)
    } else {
      # wszystko oprocz koni i psow ucieka
      stado <- dodaj_lub_odejmij_zwierzeta(c(stado[1:4],0,0,0),-1,stado,stado_max-stado)
    }
  }
  if (lis == TRUE ){
    if (stado['maly_pies']>0){
      #ucieka maly pies
      stado <- dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,1,0),-1,stado,stado_max-stado)
    } else {
      # wszystkie kroliki uciekaja
      stado <- dodaj_lub_odejmij_zwierzeta(c(stado['krolik'],0,0,0,0,0,0),-1,stado,stado_max-stado)
    }
  }
  return(stado)
}
