test_that("Wizualizacja gry przyjmuje wektor czasow trwania poszczegolnych gier oraz typy wykresów",{
          wektor <- c(20,30,30,20,30,20,10,12)
          expect_error(wizualizacja_gry())
          expect_length(wizualizacja_gry(wektor,typ_wykresu1="histogram"),9)
          })

test_that("Wizualizacja gry zwraca poprawne wartosci",{
  wektor <- c(20,30,30,20,30,20,10,12)
  expect_is(wizualizacja_gry(wektor,typ_wykresu1 ="histogram"),c("gg","ggplot"))
})
