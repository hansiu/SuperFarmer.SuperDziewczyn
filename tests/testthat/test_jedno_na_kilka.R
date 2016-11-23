test_that("Wymiana jedno na kilka przyjmuje cztery argumenty i zwraca wektor dlugosci 7",{
  expect_error(jedno_na_kilka())
  expect_error(jedno_na_kilka(wartosc_w_krolikach))
  expect_error(jedno_na_kilka(na_co="krolik"))
})
