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
#'@export


jedno_na_kilka <- function(wartosc,stado,co,na_co){
  #tylko ta funkcja ma jeden feler bierze np krowe i kupuje tyle ile sie da na przykald owiec wiec czesto jest tak ze mamy -1 krowe i +6 owiec zadnego innego zwierzecia nie dostajemy
  stado_glowne <- c(60,24,20,12,6,4,2)
  names(stado_glowne) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")

  stado_glowne <- stado_glowne-stado #trzeba wziac jeszcze zeby nie zwracalo ujemnych?fora po wspolrzednych?
  budzet <- wartosc[[co]]
  cena <- wartosc[[na_co]]

  tabela_zmian <- numeric(7)
  names(tabela_zmian) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")

  tabela_zmian[[na_co]] <- min(floor((budzet)/cena),stado_glowne[[na_co]])
  budzet_temp <- budzet - tabela_zmian[[na_co]]*cena
  i <- 7
  while(budzet_temp>0 && i>=1){
    cena <- wartosc[[colnames(tabela_zmian[[i]])]]
    tabela_zmian[[i]] <- min(floor((budzet_temp)/cena),stado_glowne[[i]])
    budzet_temp <- budzet_temp - tabela_zmian[[i]]*cena

    i <- i-1
  }
  tabela_zmian[[co]] <- (-1)
  ifelse(budzet_temp>0 || tabela_zmian[[na_co]]==0, return(FALSE),return(tabela_zmian))
}
