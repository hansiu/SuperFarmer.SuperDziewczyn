#'Przeprowadzenie atakow drapieznikow
#'
#'@param czy_lis wartosc logiczna: TRUE - pojawil sie lis, FALSE - nie pojawil sie
#'@param czy_wilk wartosc logiczna: TRUE - pojawil sie wilk, FALSE - nie pojawil sie
#'@param stado stan stada gracza
#'@param stado_max maksymalny stan stada gracza
#'
#'@examples
#'stado <- c("krolik"=3,"owca"=1,"swinia"=3,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1)
#'atak_drapieznika(FALSE,FALSE,stado,stado_max)
#'stado_max <- c(60,24,20,12,6,4,2)
#'names(stado_max) <- c("krolik","owca","swinia","krowa","kon","maly_pies","duzy_pies")
#'stado_gracza <- c("krolik"=3,"owca"=1,"swinia"=3,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1)
#'atak_drapieznika(TRUE,FALSE,stado_gracza,stado_max)



.atak_drapieznika <- function(czy_lis = FALSE, czy_wilk = FALSE,stado,stado_max,co_zostawia_lis,co_zostawia_wilk){
  zeros <- numeric(7)
  names(zeros) <- names(stado)
  if (czy_wilk == TRUE ){
    if (stado[['duzy_pies']]>0){
      #ucieka duzy pies
      stado <- .dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,0,1),-1,stado,stado_max-stado)
    } else {
      # wszystko oprocz koni i psow ucieka
      stado <- .dodaj_lub_odejmij_zwierzeta(pmax(stado-co_zostawia_wilk,zeros),-1,stado,stado_max-stado)
    }
  }
  if (czy_lis == TRUE && czy_wilk==FALSE ){
    if (stado[['maly_pies']]>0){
      #ucieka maly pies
      stado <- .dodaj_lub_odejmij_zwierzeta(c(0,0,0,0,0,1,0),-1,stado,stado_max-stado)
    } else {
      # wszystkie kroliki uciekaja
      stado <- .dodaj_lub_odejmij_zwierzeta(pmax(stado-co_zostawia_lis,zeros),-1,stado,stado_max-stado)
    }
  }
  return(stado)
}
