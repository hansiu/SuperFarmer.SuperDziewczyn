test_that("Gra przyjmuje nazwe funkcji i zwraca liczbe",{
  expect_error(gra())
  expect_is(gra(strategia_wymian_0_0_0_0),"numeric")
  expect_length(gra(strategia_wymian_0_0_0_0),1)
  expect_named(gra(strategia_wymian_0_0_0_0),NULL)
})
