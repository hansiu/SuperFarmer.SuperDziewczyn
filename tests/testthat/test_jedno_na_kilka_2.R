test_that("Test jedno_na_kilka2",{
  expect_error(jedno_na_kilka_2())
  expect_error(jedno_na_kilka_2(wartosc_w_krolikach))
  expect_error(jedno_na_kilka_2(na_co="krolik"))
})
