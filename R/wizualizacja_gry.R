#'Funkcja wizualizacja gry zwraca histogram pokazujacy rozklad trwania gier
#'
#'@param wektor wektor zawierajacy dane dotyczace dlugosci trwania poszczegolnych gier
#'@param typ_wykresu1 wykres jaki chcemy uzyskac
#'@param typ_wykresu2 opcjonalnie druga warstwa na wykresie
#'
#'
#'@importFrom ggplot2 ggplot
#'@importFrom ggplot2 aes
#'@importFrom ggplot2 geom_histogram
#'@importFrom ggplot2 labs
#'@importFrom ggplot2 theme
#'@importFrom ggplot2 element_text
#'@importFrom ggplot2 geom_density
#'@importFrom ggplot2 geom_boxplot
#'@importFrom ggplot2 xlab
#'@importFrom ggplot2 ylab
#'@importFrom ggplot2 element_blank
#'@importFrom ggplot2 geom_violin
#'
#'@export

wizualizacja_gry <- function(wektor, typ_wykresu1 = "histogram", typ_wykresu2=NULL){
  czasy <- as.data.frame(wektor)
  colnames(czasy) <- "Czas_gry"
  if(typ_wykresu1 == "histogram"&& is.null(typ_wykresu2)==TRUE){
      ggplot(data=czasy, aes(czasy$Czas_gry))+
        geom_histogram(binwidth=1,col="blue", fill="green") +
        labs(title="Rozklad czasu gry") +
        labs(x="Czas gry", y="Liczba gier")
    }else{
      if(typ_wykresu1 == "boxplot" && is.null(typ_wykresu2)==TRUE){
        ggplot(data=czasy,aes(x=factor(0),czasy$Czas_gry))+
          geom_boxplot(fill="green")+
          theme(axis.ticks.x=element_blank())+
          ylab("Czas trwania gier") +
          xlab("Badaj gre")+
          labs(title="Rozklad czasu gry")
      }else{
        if(typ_wykresu1 == "skrzypce" && is.null(typ_wykresu2)==TRUE){
          ggplot(data=czasy,aes(x=factor(0),czasy$Czas_gry))+
            geom_violin(fill="blue")+
            theme(axis.ticks.x=element_blank())+
            ylab("Czas trwania gier") +
            xlab("Badaj gre")+
            labs(title="Rozklad czasu gry")
        }else{
          if((typ_wykresu1=="boxplot"&&typ_wykresu2=="skrzypce")||(typ_wykresu1=="skrzypce"&&typ_wykresu2=="boxplot")){
            ggplot(data=czasy,aes(x=factor(0),czasy$Czas_gry))+
            geom_violin(fill="#33FFFF")+
            geom_boxplot(fill="#99CCFF")+
            theme(axis.ticks.x=element_blank())+
            ylab("Czas trwania gier") +
            xlab("Badaj gre")+
            labs(title="Rozklad czasu gry")
        }else{
        ("Podaj poprawny typ wykresu")
        }
        }
      }
    }
  }
