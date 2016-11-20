#'Zamieniamy wynik rzutu na wektor
#'
#'@param wynik Wynik rzutu
#'
#'@export



zamien_wynik_rzutu_na_wektor <- function(wynik){
  c1 <- switch(wynik[1], # wynik z pierwszej kosci
               krolik=c(1,0,0,0,0,0,0),
               owca=c(0,1,0,0,0,0,0),
               swinia=c(0,0,1,0,0,0,0),
               krowa=c(0,0,0,1,0,0,0),
               c(0,0,0,0,0,0,0)
  )
  c2 <- switch(wynik[2], # wynik z drugiej kosci
               krolik=c(1,0,0,0,0,0,0),
               owca=c(0,1,0,0,0,0,0),
               swinia=c(0,0,1,0,0,0,0),
               kon=c(0,0,0,0,1,0,0),
               c(0,0,0,0,0,0,0)
  )
  z_rzutu <- (c1+c2)
  return(z_rzutu)
}
