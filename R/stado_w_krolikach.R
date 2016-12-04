#'Funkcja obliczajaca wartosc naszego stada
#'
#'@param wartosc_w_krolikach wartosc danych zwierzat
#'@param tabela tabela dla ktorej chcemy liczyc wartosc
#'@return saldo czyli wartosc tabeli
#'
#'@examples
#'stado_w_krolikach(wartosc_w_krolikach,c("krolik"=2,"owca"=1,"swinia"=1,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1))
#'
#'@export

stado_w_krolikach <- function(wartosc_w_krolikach,tabela){
  saldo <- 0
  for(i in 1:length(tabela)){
    saldo <- saldo + tabela[[i]]*wartosc_w_krolikach[[i]]
  }
  return(saldo)
}
