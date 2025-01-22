
# Create test plot
test_p =
  ggplot2::ggplot(
    mtcars,
    ggplot2::aes(hp, wt)) +
  ggplot2::geom_point(
    ggplot2::aes(colour = factor(gear)),
        size = 6) +
  ggplot2::labs(
    title = "This is the title of the plot",
    y = "y-axis title",
    x = "x-axis title")

# Use plot in test
test_that("theme_vps_dh() works", {
  vdiffr::expect_doppelganger("theme_vps_dh", test_p + theme_vps_dh())
})
