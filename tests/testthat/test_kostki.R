test_that("Kostki to wektory napisów o długości 12",{
  expect_true(is.vector(kostka_czerwona))
  expect_true(is.vector(kostka_zielona))
  expect_true(is.character(kostka_czerwona))
  expect_true(is.character(kostka_zielona))
  expect_equal(length(kostka_czerwona),12)
  expect_equal(length(kostka_zielona),12)
})

test_that("Liczby zwierząt na kostkach są prawidłowe",{
  expect_true(all(table(kostka_czerwona)==c(1,6,1,2,2)))
  expect_true(all(table(kostka_zielona)==c(6,1,3,1,1)))
  ## w sumie można to rozbić na dla każdego zwierzęcia
  ##expect_equal(table(kostka_czerwona)['krolik'],6)
  ## lub
  ##expect_equal(sum(kostka_zielona == 'krolik'),6)
  })
