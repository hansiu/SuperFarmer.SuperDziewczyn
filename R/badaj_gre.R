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
#'@export

badaj_gre <- function(strategia,powtorzenia=100){
  czasy <- c()
  for (i in 1:powtorzenia){
    czasy[i] <- gra(strategia)
  }
  czasy <- as.data.frame(czasy)
  colnames(czasy) <- "Czas_gry"
  statystyki <- summary(czasy)
  print(statystyki)
  ggplot(data=czasy, aes(czasy$Czas_gry)) + geom_histogram(binwidth = 1,
                                                     col="blue",
                                                     fill="green") +
    labs(title="Rozklad czasu gry") +
    labs(x="Czas gry [kroki]", y="Liczba gier")
}
