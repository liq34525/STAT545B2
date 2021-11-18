test_that("Test average function", {
  expect_match(average("hello","island",body_mass_g,TRUE),"this function need a data frame as the first argument")
  expect_match(average(palmerpenguins::penguins,"island",species,TRUE),"You can only calculate the average of a numeric column")
  expect_equal(dim(average(palmerpenguins::penguins,c("year","island"),body_mass_g, TRUE))[2],3)
  expect_error(average(palmerpenguins::penguins,"islands",body_mass_g, TRUE))
})
