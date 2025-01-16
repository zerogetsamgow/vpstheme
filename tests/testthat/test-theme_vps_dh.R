
# Create test plot
test_p =
  ggplot(
    mtcars,
    aes(hp, wt)) +
  geom_point(
    aes(colour = factor(gear)),
        size = 6) +
  labs(
    title = "This is the title of the plot",
    y = "y-axis title",
    x = "x-axis title")

# Use plot in test
test_that("theme_vps_dh() works", {
  vdiffr::expect_doppelganger("geom-col-rounded", test_p + theme_vps_dh())
})
