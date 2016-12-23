test_that("Wizualizacja gry przyjmuje wektor czasow trwania poszczegolnych gier",{
          wektor <- c(20,30,30,20,30,20,10,12)
          expect_error(wizualizacja_gry())
          expect_length(wizualizacja_gry(wektor),9)
          })

test_that("Wizualizacja gry zwraca poprawne wartosci",{
  wektor <- c(20,30,30,20,30,20,10,12)
  expect_is(wizualizacja_gry(wektor),c("gg","ggplot"))
})
