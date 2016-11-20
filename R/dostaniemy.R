#'Funkcja wyznaczajaca ile zwierzat mozemy otrzymac ze stada
#'
#'@param tyle_chce_wziac Te zwierzeta chcemy otrzymac
#'@param stado Stan stada gracza
#'@param stado_glowne Stan stada glownego
#'
#'


dostaniemy <- function(tyle_chce_wziac,stado,stado_glowne){
  tyle_chce_wziac <- ifelse(tyle_chce_wziac <= stado_glowne, tyle_chce_wziac, stado_glowne)
  return(tyle_chce_wziac)
}
