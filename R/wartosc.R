#'Wartosc danego zwierzecia wyrazona w krolikach, tzn ile krolikow musimy dac aby otrzymac dane zwierze
#'
#'@param zwierze Nazwa zwierzecia ktorego wartosc obliczamy
#'@param wartosc_w_krolikach Wartosc w przeliczeniu na kroliki
#'@return wartosc zwierzecia
#'
#'
#'@export

####TO JEST CHYBA NIEPOTRZEBNE?

wartosc <- function(wartosc_w_krolikach,zwierze){
  return(wartosc_w_krolikach[[zwierze]])
}
