test_that("Wymiana kilka_na_jedno przyjmuje trzy argumenty i zwraca wektor dlugosci 7",{
  wartosc_w_krolikach <- c(1,6,12,36,72,6,36)
  names(wartosc_w_krolikach) <- c("krolik","owca","swinia","krowa","kon","maly_pies","duzy_pies")
  expect_error(kilka_na_jedno())
  expect_error(kilka_na_jedno(wartosc_w_krolikach))
  expect_error(kilka_na_jedno(tabela_co="krolik"))
  expect_true(is.vector(kilka_na_jedno(wartosc_w_krolikach,c("krolik"=0,"owca"=2,"swinia"=2,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0),"krowa")))
  expect_is(kilka_na_jedno(wartosc_w_krolikach,c("krolik"=0,"owca"=2,"swinia"=2,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0),"krowa"),"numeric")
  expect_length(kilka_na_jedno(wartosc_w_krolikach,c("krolik"=0,"owca"=2,"swinia"=2,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0),"krowa"),7)
})

test_that("Wymiana kilka_na_jedno zwraca poprawne wartosci",{
  wartosc_w_krolikach <- c(1,6,12,36,72,6,36)
  names(wartosc_w_krolikach) <- c("krolik","owca","swinia","krowa","kon","maly_pies","duzy_pies")
  expect_equal(kilka_na_jedno(wartosc_w_krolikach,c("krolik"=0,"owca"=2,"swinia"=2,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0),"krowa"),c("krolik"=0,"owca"=-2,"swinia"=-2,"krowa"=1,"kon"=0,"maly_pies"=0,"duzy_pies"=0))
  expect_equivalent(kilka_na_jedno(wartosc_w_krolikach,c("krolik"=0,"owca"=2,"swinia"=2,"krowa"=0,"kon"=0,"maly_pies"=0,"duzy_pies"=0),"krowa"),c(0,-2,-2,1,0,0,0))

})
