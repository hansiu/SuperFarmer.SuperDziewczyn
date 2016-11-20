test_that("Rzut kostkami przyjmuje dwa argumenty(kostki) i zwraca wektor napisów o długości 2",{
  expect_error(rzut_kostkami())
  expect_error(rzut_kostkami(kostka_zielona))
  expect_error(rzut_kostkami(b=kostka_czerwona))
  expect_true(is.vector(rzut_kostkami(kostka_zielona,kostka_czerwona)))
  expect_is(rzut_kostkami(kostka_zielona,kostka_czerwona),"character")
  expect_named(rzut_kostkami(kostka_zielona,kostka_czerwona),NULL)
  expect_length(rzut_kostkami(kostka_zielona,kostka_czerwona),2)
})
