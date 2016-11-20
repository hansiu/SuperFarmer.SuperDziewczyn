test_that("Dodawanie zwierząt przyjmuje przynajmniej 3 argumenty i zwraca nazwaną listę wektorów",{
  expect_error(dodaj_lub_odejmij_zwierzeta())
  expect_error(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0)))
  expect_error(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0),-1))
  expect_error(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0),-1,c(0,0,0,0,0,0,0)))
  expect_true(is.list(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0),1,c(0,0,0,0,0,0,0),c(60,24,20,12,6,4,2))))
  expect_length(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0),1,c(0,0,0,0,0,0,0),c(60,24,20,12,6,4,2)),2)
  expect_named(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0),1,c(0,0,0,0,0,0,0),c(60,24,20,12,6,4,2)),c("Stado","Glowne"))
})

test_that("Dodawanie zwierząt zwraca poprawne wartości",{
  expect_equal(dodaj_lub_odejmij_zwierzeta(c(0,1,0,0,0,0,0),1,c(0,0,0,0,0,0,0),c(60,24,20,12,6,4,2)),list(Stado=c(0,1,0,0,0,0,0),Glowne=c(60,23,20,12,6,4,2)))
  expect_equal(dodaj_lub_odejmij_zwierzeta(c(2,0,0,1,0,0,0),1,c(3,1,0,0,1,0,0),c(57,23,20,12,5,4,2)),list(Stado=c(5,1,0,1,1,0,0),Glowne=c(55,23,20,11,5,4,2)))
  expect_equal(dodaj_lub_odejmij_zwierzeta(c(1,24,0,0,0,4,0),1,c(0,0,0,0,0,0,0),c(60,24,20,12,6,4,2)),list(Stado=c(1,24,0,0,0,4,0),Glowne=c(59,0,20,12,6,0,2)))
})
