#'Zamiana jednego zwierzecia na kilka innych
#'
#'Zamieniamy jedno zwierze na kilka innych, jednemu ze zwierzat pożądanych nadajemy pewien priorytet - chcemy mieć jedną sztukę tego zwierzęcia, z reszty dostepnych srodkow kupujemy inne zwierzeta
#'
#'@param wartosc wartosc zwierzat wyrazona w krolikach
#'@param stado stado gracza
#'@param co zwierze ktore chcemy oddac
#'@param na_co zwierze najbardziej pożądane przez gracza
#'
#'@return tabela_zmian
#'@examples
#'jedno_na_kilka2(wartosc_w_krolikach,stado,"krowa","owca")
#'
#'@export

jedno_na_kilka_2<- function(wartosc,stado, co, na_co){
  stado_max <- c(60,24,20,12,6,4,2)
  names(stado_max)<-c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
  stado_glowne <- stado_max-stado
  budzet <- wartosc[[co]]
  cena_najwazniejszego <- wartosc[[na_co]]
  tabela_zmian <- numeric(7)
  names(tabela_zmian) <- c("krolik","owca","swinia", "krowa", "kon", "maly_pies","duzy_pies")
  czy_sie_da <- as.integer(budzet>cena_najwazniejszego)
  tabela_zmian[[na_co]] <- 1*czy_sie_da
  budzet <- budzet - cena_najwazniejszego
  tabela_zmian2 <- tabela_zmian[names(tabela_zmian) != na_co]
  stado_glowne2 <- stado_glowne[names(stado_glowne) != na_co]
  i<-6
  while(budzet>0 && i>=1){
    cena <- wartosc[[names(tabela_zmian2)[i]]]
    tabela_zmian[[names(tabela_zmian2)[i]]] <- min(floor((budzet)/cena),stado_glowne2[[names(stado_glowne2)[i]]])
    budzet <- budzet - tabela_zmian[[names(tabela_zmian2)[i]]]*cena
    i <- i-1
  }
  tabela_zmian[[co]] <- (-1)
  if(budzet>0){
    ile_krolikow <- min(budzet,stado_glowne[["krolik"]])
    tabela_zmian["krolik"] <- tabela_zmian["krolik"] + ile_krolikow
    budzet <-budzet - ile_krolikow
  }
  ifelse(budzet>0 || tabela_zmian[[na_co]]==0, return(FALSE),return(tabela_zmian))
}
