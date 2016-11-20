test_that("Kostki to wektory napisów o długości 12",{
  expect_true(is.vector(kostka_czerwona))
  expect_true(is.vector(kostka_zielona))
  expect_is(kostka_czerwona,"character")
  expect_is(kostka_zielona,"character")
  expect_length(kostka_czerwona,12)
  expect_length(kostka_zielona,12)
  expect_named(kostka_zielona,NULL)
  expect_named(kostka_czerwona,NULL)

})

test_that("Liczby zwierząt na kostkach są prawidłowe",{
  expect_true(all(table(kostka_czerwona)==c(1,6,1,2,2)))
  expect_true(all(table(kostka_zielona)==c(6,1,3,1,1)))
  ## w sumie można to rozbić na dla każdego zwierzęcia
  ##expect_equal(table(kostka_czerwona)['krolik'],6)
  ## lub
  ##expect_equal(sum(kostka_zielona == 'krolik'),6)
  })
