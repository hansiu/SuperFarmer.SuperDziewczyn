#'Funkcja opisująca strategię gracza
#'
#'@param stado stan stada gracza
#'
#'@export

strategia_nowa <- function(stado){
  wartosc_w_krolikach <- numeric(7)
  names(wartosc_w_krolikach) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  wartosc_w_krolikach <- c(1,6,12,36,72,6,36)
  stado_max <- numeric(7)
  names(stado_max) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  stado_max <- c(60,24,20,12,6,4,2)
  if (stado['kon']>1){
    stado <- dodaj_lub_odejmij_zwierzeta(c(1,1,1,1,-1,0,0),1,stado,stado_max-stado)
  } else {
    if (stado_w_krolikach(wartosc_w_krolikach,stado)>71){
      tabela_zmian <- kilka_na_jedno(wartosc_w_krolikach,c(stado[1:4],0,stado[6:7]),'kon')
    } else {
      if (stado['maly_pies']==0){
      tabela_zmian <- kilka_na_jedno(wartosc_w_krolikach,c(stado[1:2],0,0,0,0,0),'maly_pies')
      } else {
        tabela_zmian <- jedno_na_kilka(wartosc_w_krolikach,stado,'owca','krolik')
        }
    }
    if (tabela_zmian!=FALSE){
      stado <- dodaj_lub_odejmij_zwierzeta(tabela_zmian,1,stado,stado_max-stado)}
  }
  return(stado)
}
