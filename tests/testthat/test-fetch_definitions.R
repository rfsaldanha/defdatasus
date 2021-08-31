test_that("Download definition files work", {
  # SIM definitions
  expect_true(is.character(fetch_definitions(information_system = "SIM")))

  # SINASC definitions
  expect_true(is.character(fetch_definitions(information_system = "SINASC")))

  # SIH definitions
  expect_true(is.character(fetch_definitions(information_system = "SIH")))
})
