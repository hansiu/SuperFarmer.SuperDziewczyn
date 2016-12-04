#'Przeprowadznie atakow drapieznikow
#'
#'@param czy_lis wartosc logiczna: TRUE - pojawil sie lis, FALSE - nie pojawil sie
#'@param czy_wilk wartosc logiczna: TRUE - pojawil sie wilk, FALSE - nie pojawil sie
#'@param stado stan stada gracza
#'@param stado_max maksymalny stan stada gracza
#'
#'@examples
#'atak_drapieznika(FALSE,FALSE,c("krolik"=3,"owca"=1,"swinia"=3,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1),stado_max)
#'atak_drapieznika(TRUE,FALSE,c("krolik"=3,"owca"=1,"swinia"=3,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1),stado_max)
#'@export


atak_drapieznika <- function(czy_lis = FALSE, czy_wilk = FALSE,stado,stado_max){
  if (czy_wilk == TRUE ){
    if (stado[['duzy_pies']]>0){
      #ucieka duzy pies
      stado <- dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,0,1),-1,stado,stado_max-stado)
    } else {
      # wszystko oprocz koni i psow ucieka
      stado <- dodaj_lub_odejmij_zwierzeta(c(stado[1:4],0,0,0),-1,stado,stado_max-stado)
    }
  }
  if (czy_lis == TRUE ){
    if (stado[['maly_pies']]>0){
      #ucieka maly pies
      stado <- dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,1,0),-1,stado,stado_max-stado)
    } else {
      # wszystkie kroliki uciekaja
      stado <- dodaj_lub_odejmij_zwierzeta(c(stado[['krolik']],0,0,0,0,0,0),-1,stado,stado_max-stado)
    }
  }
  return(stado)
}
