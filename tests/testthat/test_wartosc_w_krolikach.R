test_that("Wartość w królikach to nazwany wektor o długości 7",{
  expect_true(is.vector(wartosc_w_krolikach))
  expect_is(wartosc_w_krolikach,"numeric")
  expect_length(wartosc_w_krolikach,7)
  expect_named(wartosc_w_krolikach)
})

test_that("Nazwy wektora są prawidłowe i odpowiadają dobrym liczbom królików",{
  expect_named(wartosc_w_krolikach,c('krolik', 'owca','swinia','krowa','kon','maly_pies','duzy_pies'))
  expect_true(all(wartosc_w_krolikach == c(1,6,12,36,72,6,36)))
  ## też można rozbić na dla każdego zwierzęcia, chociaż tu mniejsza konieczność
  ##expect_equal(wartosc_w_krolikach['owca'],6)
})
