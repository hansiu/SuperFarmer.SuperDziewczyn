#'Strategia wymian z zalozeniem ze zbieramy owce
#'
#'@param stado stado gracza
#'
#'@return wymiany ze strategii
#'
#'@export

strategia_owce<- function(stado){
  wymiana<-numeric(7)
  names(wymiana) <- c("krolik", "owca", "swinia","krowa","kon", "maly_pies", "duzy_pies")

  wartosc_w_krolikach <- numeric(7)
  wartosc_w_krolikach <- c(1, 6, 12, 36, 72, 6, 36)
  names(wartosc_w_krolikach) <- names(wymiana)

  if (stado[["kon"]] >= 2) {
      wymiana[1:7] <- c(6, 1, 2, 1, -1, 0, 0)
      stado <- .dokonanie_wymian(stado, wymiana)
      return(stado)

  }
  stado_bez_konia <-c(stado[c(1:4)],0,stado[c(6:7)])
  names(stado_bez_konia) <- names(wymiana)
  if ((.stado_w_krolikach(wartosc_w_krolikach, stado_bez_konia) >= 72) && (stado[["kon"]] == 1)) {
      wymiana <- .kilka_na_jedno(wartosc_w_krolikach, stado_bez_konia, "kon")
      if(class(wymiana)=="numeric"){
      stado <- .dokonanie_wymian(stado, wymiana)
      return(stado)
      }
  }
  if((.stado_w_krolikach(wartosc_w_krolikach, stado_bez_konia) >= 72)){
    wymiana <- .kilka_na_jedno(wartosc_w_krolikach,stado_bez_konia,"kon")
    if(class(wymiana)=="numeric"){
    stado <- .dokonanie_wymian(stado, wymiana)
    return(stado)
    }
  }

  damy <- c(stado[["krolik"]],0,stado[c(3:4)],0,0,0)
  names(damy) <- names(wymiana)
  wymiana <- .kilka_na_jedno(wartosc_w_krolikach,damy,"owca")
  if(class(wymiana)=="numeric"){
    stado <- .dokonanie_wymian(stado,wymiana)
    return(stado)
  }
  return(stado)


}
