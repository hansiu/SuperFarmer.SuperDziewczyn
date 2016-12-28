test_that("Kostki to wektory napisów o dlugości 12",{
  kostka_czerwona <- c("krolik","krolik","krolik","krolik", "krolik","krolik","owca","owca","swinia","swinia","kon","lis")
  kostka_zielona <- c("krolik","krolik","krolik","krolik", "krolik","krolik","owca","owca","owca","swinia","krowa","wilk")
  expect_true(is.vector(kostka_czerwona))
  expect_true(is.vector(kostka_zielona))
  expect_is(kostka_czerwona,"character")
  expect_is(kostka_zielona,"character")
  expect_length(kostka_czerwona,12)
  expect_length(kostka_zielona,12)
  expect_named(kostka_zielona,NULL)
  expect_named(kostka_czerwona,NULL)

})

test_that("Liczby zwierząt na kostkach są prawidlowe",{
  kostka_czerwona <- c("krolik","krolik","krolik","krolik", "krolik","krolik","owca","owca","swinia","swinia","kon","lis")
  kostka_zielona <- c("krolik","krolik","krolik","krolik", "krolik","krolik","owca","owca","owca","swinia","krowa","wilk")
  expect_true(all(table(kostka_czerwona)==c(1,6,1,2,2)))
  expect_true(all(table(kostka_zielona)==c(6,1,3,1,1)))
  ## w sumie mozna to rozbić na dla kazdego zwierzecia
  ##expect_equal(table(kostka_czerwona)['krolik'],6)
  ## lub
  ##expect_equal(sum(kostka_zielona == 'krolik'),6)
  })
