#'Funkcja opisująca strategię gracza
#'
#'@param stado stan stada gracza
#'
#'@export

strategia_nowa <- function(stado){
  print(stado)
  wartosc_w_krolikach <- numeric(7)
  wartosc_w_krolikach <- c(1,6,12,36,72,6,36)
  names(wartosc_w_krolikach) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  stado_max <- numeric(7)
  stado_max <- c(60,24,20,12,6,4,2)
  names(stado_max) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  if (stado[['kon']]>1){
    stado <- dodaj_lub_odejmij_zwierzeta(c(6,1,2,1,-1,0,0),1,stado,stado_max-stado)
  } else {
    if (stado_w_krolikach(wartosc_w_krolikach,stado)>71){
      tabela_zmian <- kilka_na_jedno(wartosc_w_krolikach,c(stado[1:4],"kon"=0,stado[6:7]),'kon')
    } else {
      if (stado[['maly_pies']]==0){
        tabela_zmian <- kilka_na_jedno(wartosc_w_krolikach,c(stado[1:2],"swinia"=0,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0),'maly_pies')
      } else {
        tabela_zmian <- jedno_na_kilka(wartosc_w_krolikach,stado,'owca','krolik')
      }
    }
    if (!is.logical(tabela_zmian)){
      stado <- dodaj_lub_odejmij_zwierzeta(tabela_zmian,1,stado,stado_max-stado)}
  }
  print('tab')
  print(tabela_zmian)
  print(stado)
  return(stado)
}
