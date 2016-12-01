#'Funkcja powtarzajaca gre 10000 razy
#'
#'@param strategia strategia ktora chcemy grac
#'@return podstawowe statystki dla czasow trwania gier
#'
#'@export

badaj_gre <- function(strategia){
  czasy <- data.frame()
  for (i in 1:100){
    czasy[i,1] <-gra(strategia)
  }
  statystyki <- summary(czasy)
  print(length(czasy[,1]))
  print(statystyki)
  ggplot2::ggplot(data=czasy, ggplot2::aes(czasy$V1)) + ggplot2::geom_histogram(binwidth = 1,
                                                    col="blue",
                                                    fill="green") +
    ggplot2::labs(title="Rozklad czasu gry") +
    ggplot2::labs(x="Czas gry [kroki]", y="Liczba gier")
}
