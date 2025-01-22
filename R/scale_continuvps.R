#' Ensure your y- and x-axis are department style guide-consistent and don't hang
#' off the edge of the chart.
#'
#' @param expand_bottom default is 0. This will ensure that your x-axis is at
#'   the bottom value of your plotted data. Increase to add some buffer between
#'   the lowest point in your data and the x-axis. Note that the value is
#'   interpreted as a fraction of the total plotting space - a value of 1 will
#'   add white space equal to the whole area of your data.
#' @param expand_top default is 0.02. This will ensure that a small amount of
#'   white space is added to the top of your chart. Increase to add more white
#'   space.
#' @param expand_left default is 0. This will ensure your y-axis is at the
#'   lowest value of your plotted value.
#' @param expand_right default is 0.02. This will ensure that a small amount of
#'   white space is added to the right of your chart.
#' @param ... arguments passed to scale_y_continuous or scale_x_continuous
#' @examples
#'
#' # Here's a basic chart in the Department of Health style:
#' library(ggplot2)
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
#'     geom_point() +
#'     theme_vps_dh()
#' p
#'
#' # In the example above, the top label on the y-axis is hanging off the top.
#' # To fix:
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
#'      geom_point() +
#'      scale_y_continuvps() +
#'      theme_vps_dh()
#'
#' p
#'
#' # Now the top of the chart looks fine, but the bottom has two points
#' # (at the lower right) that are partially obscured.
#' # We could fix this by doing:
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
#'      geom_point() +
#'      scale_y_continuvps(expand_bottom = 0.02) +
#'      theme_vps_dh()
#'
#' p
#'
#' # Alternatively, set the limits of the chart (in this example we'll set
#' # the lower limit to 0, but you could use some other value
#' # like 10 in this case).Note that by setting the second value of limits
#' # to NA, we're telling ggplot2 to calculate the upper limit as usual based
#' # on the data. All the usual arguments of `scale_y_continuous()`
#' # (limits, breaks, labels, etc.) can be used.
#'
#' p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
#'      geom_point() +
#'      scale_y_continuvps(limits = c(0, NA)) +
#'      theme_vps_dh()
#'
#' p
#'
#' @name vps_axes
#' @aliases NULL
NULL


#' @rdname vps_axes
#' @importFrom ggplot2 scale_y_continuous expand_scale
#' @export

scale_y_continuvps <- function(..., expand_bottom = 0, expand_top = 0.02) {
  # Pass values to scale_y_continous
  scale_y_continuous(
    expand =
      ggplot2::expansion(
        mult = c(expand_bottom,
                 expand_top)
        ),
    ...)
}

#' @rdname vps_axes
#' @importFrom ggplot2 scale_x_continuous expand_scale
#' @export

scale_x_continuvps <- function(..., expand_left = 0, expand_right = 0.02) {
  # Pass values to scale_x_continuous
  scale_x_continuous(
    ...,
    expand =
      ggplot2::expansion(
        mult = c(expand_left,
                 expand_right)
        )
    )

}
