test_that("Badaj gre przyjmuje nazwe funkcji strategii",{
  expect_error(badaj_gre())
  expect_length(badaj_gre(strategia_wymian_0_0_0_0),9)
})
