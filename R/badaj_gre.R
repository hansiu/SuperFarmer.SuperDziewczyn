#'Funkcja powtarzajaca gre 10000 razy
#'
#'@param strategia strategia ktora chcemy grac
#'@param powtorzenia liczba powtorzen gier do stestowania, domyslnie 10000
#'
#'@return lista dwuelementowa zawierajaca podstawowe statystyki i wykres rozkladu czasow gry przy zadanej liczbie powtorzen
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggplot2 aes
#'@importFrom ggplot2 geom_histogram
#'@importFrom ggplot2 labs
#'
#'@examples
#'badaj_gre(strategia_nowa,100)
#'@export

badaj_gre <- function(strategia,powtorzenia=10000){
  czasy <- data.frame()
  for (i in 1:powtorzenia){
    czasy[i,1] <-gra(strategia)
  }
  statystyki <- summary(czasy)
  print(statystyki)
  ggplot(data=czasy, aes(czasy$V1)) + geom_histogram(binwidth = 1,
                                                    col="blue",
                                                    fill="green") +
    labs(title="Rozklad czasu gry") +
    labs(x="Czas gry [kroki]", y="Liczba gier")
  }
