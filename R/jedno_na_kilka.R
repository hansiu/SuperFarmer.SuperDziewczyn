#'Zamiana jednego zwierzęcia na kilka
#'
#'Funkcja jedno_na_kilka() zwraca nam tabele zmian które można wykonać przy zaproponowanej wymianie
#'
#'@param stado stan stada gracza
#'@param wartosc wartosc zwierzat w krolikach
#'@param co nazwa zwierzęcia które chcemy oddać
#'@param na_co nazwa zwierzęcia które chcemy otrzymać
#'@return tabela zmian, które na daną chwilę można wykonać
#'
#'@examples
#'stado <- c("krolik"=3,"owca"=1,"swinia"=3,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1)
#'jedno_na_kilka(wartosc_w_krolikach, stado, "krowa","owca")
#'
#'@export


jedno_na_kilka <- function(wartosc,stado,co,na_co){
  if(stado[[co]]==0){
    return(FALSE)
  }
  #tylko ta funkcja ma jeden feler bierze np krowe i kupuje tyle ile sie da na przykald owiec wiec czesto jest tak ze mamy -1 krowe i +6 owiec zadnego innego zwierzecia nie dostajemy
  stado_max <- c(60,24,20,12,6,4,2)
  stado_glowne <- stado_max-stado
  names(stado_glowne) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
  budzet <- wartosc[[co]]
  cena <- wartosc[[na_co]]

  tabela_zmian <- numeric(7)
  names(tabela_zmian) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")

  tabela_zmian[[na_co]] <- min(floor((budzet)/cena),stado_glowne[[na_co]])
  budzet_temp <- budzet - tabela_zmian[[na_co]]*cena
  i <- 7
  while(budzet_temp>0 && i>=1){
    cena <- wartosc[[names(tabela_zmian[i])]]
    tabela_zmian[i] <- min(floor((budzet_temp)/cena),stado_glowne[i])
    budzet_temp <- budzet_temp - tabela_zmian[i]*cena

    i <- i-1
  }
  tabela_zmian[[co]] <- (-1)
  ifelse(budzet_temp>0 || tabela_zmian[[na_co]]==0, return(FALSE),return(tabela_zmian))
}
