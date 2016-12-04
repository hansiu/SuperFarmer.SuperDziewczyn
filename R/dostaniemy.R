#'Funkcja wyznaczajaca ile zwierzat mozemy otrzymac ze stada
#'
#'@param tyle_chce_wziac Te zwierzeta chcemy otrzymac
#'@param stado Stan stada gracza
#'@param stado_glowne Stan stada glownego
#'
#'@examples
#'chcemy <- c(1,1,1,0,0,0,0)
#'stado <- c("krolik"=3,"owca"=1,"swinia"=3,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=1)
#'dostaniemy(chcemy,stado,stado_max-stado)
#'


dostaniemy <- function(tyle_chce_wziac,stado,stado_glowne){
  tyle_chce_wziac <- ifelse(tyle_chce_wziac <= stado_glowne, tyle_chce_wziac, stado_glowne)
  return(tyle_chce_wziac)
}
