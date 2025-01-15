testthat::test_that("clean_vic_lga() returns expected output", {

  expect_equal(clean_vic_lga("Monash", to = "lga_abbr"), "Monash")

  expect_equal(clean_vic_lga("Monash", to = "lga_name"), "Monash City Council")

  expect_equal(clean_vic_lga("City of Monash", fuzzy_match = FALSE), "Monash")

  expect_equal(clean_vic_lga("Moonash"), "Monash")

  expect_equal(clean_vic_lga("Nonash", fuzzy_match = FALSE), NA_character_)

  expect_equal(class(clean_vic_lga("Monash", "lga_code")), "character")

  x <- c("Swanny", "MLB", "grate dandy", "Baa Baa", "Geelong")

  expect_length(clean_vic_lga(x), 5)

  expect_identical(clean_vic_lga("NA"), NA_character_)
  expect_identical(clean_vic_lga("n a "), NA_character_)
  expect_equal(clean_vic_lga(c("Melb", "Dand", "not applicable")),
               c("Melbourne", "Greater Dandenong", NA_character_))

})
