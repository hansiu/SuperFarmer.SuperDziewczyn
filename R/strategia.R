#'Funkcja opisująca strategię gracza
#'
#'@param stado stan stada gracza
#'
#'@export

strategia <- function(stado){
  if (stado['kon']>1){
    stado <- dodaj_lub_odejmij_zwierzeta(c(1,1,1,1,-1,0,0),1,stado,stado_max-stado)
  } else {
    if (stado_w_krolikach>71){
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
  }




  return(stado)
}
