#'Funkcja powtarzajaca gre podana liczbę razy
#'
#'@param strategia strategia ktora chcemy grac
#'@param powtorzenia liczba powtorzen gier do stestowania, domyslnie 100
#'
#'@return wektor zawierajacy dane dotyczace dlugosci trwania wybranej liczby gier
#'@export

badaj_gre <- function(strategia,powtorzenia=100){
  czasy <- c()
  for (i in 1:powtorzenia){
    czasy[i] <- gra(strategia)
  }

  return(czasy)
}
