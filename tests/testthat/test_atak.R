test_that("Atak drapieznika przyjmuje dwie wartosci logiczne przyjmuje dwa wektory i zwraca wektor",{
  stado <-c(1,1,1,1,1,0,0)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  expect_error(atak_drapieznika())
  expect_error(atak_drapieznika(TRUE))
  expect_error(atak_drapieznika(TRUE,FALSE))
  expect_error(atak_drapieznika(TRUE,FALSE,stado))
  expect_is(atak_drapieznika(TRUE,FALSE,stado,stado_max-stado),"numeric")
  expect_named(atak_drapieznika(TRUE,FALSE,stado,stado_max-stado),c('krolik', 'owca','swinia','krowa','kon','maly_pies','duzy_pies'))
  expect_length(atak_drapieznika(TRUE,FALSE,stado,stado_max-stado),7)
})

test_that("Atak drapieznika poprawnie reaguje",{
  stado <-c(1,1,1,1,1,0,0)
  names(stado) <- c('krolik','owca','swinia','krowa','kon','maly_pies','duzy_pies')
  expect_equivalent(atak_drapieznika(TRUE,FALSE,stado,stado_max-stado),c(0,1,1,1,1,0,0))
  expect_equivalent(atak_drapieznika(FALSE,TRUE,stado,stado_max-stado),c(0,0,0,0,1,0,0))
  stado['maly_pies'] <- 1
  stado['duzy_pies'] <- 1
  expect_equivalent(atak_drapieznika(TRUE,FALSE,stado,stado_max-stado),c(1,1,1,1,1,0,1))
  expect_equivalent(atak_drapieznika(FALSE,TRUE,stado,stado_max-stado),c(1,1,1,1,1,1,0))
})
