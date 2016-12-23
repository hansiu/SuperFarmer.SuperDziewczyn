#'Funkcja wizualizacja gry zwraca histogram pokazujacy rozklad trwania gier
#'
#'@param wektor wektor zawierajacy dane dotyczace dlugosci trwania poszczegolnych gier
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggplot2 aes
#'@importFrom ggplot2 geom_histogram
#'@importFrom ggplot2 labs
#'
#'@export

wizualizacja_gry <- function(wektor){
  czasy <- as.data.frame(wektor)
  colnames(czasy) <- "Czas_gry"
  ggplot(data=czasy, aes(czasy$Czas_gry)) +
    geom_histogram(binwidth = 1, col="blue", fill="green") +
    labs(title="Rozklad czasu gry") +
    labs(x="Czas gry", y="Liczba gier")
}
