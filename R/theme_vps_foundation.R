#' VPS Foundation Theme
#'
#' This theme is designed to be a foundation from which to build new
#' themes, and not meant to be used directly. \code{theme_vps_foundation()}
#' is a complete theme with only minimal number of elements defined.
#'
#' It is easier to create new themes by extending this one rather
#' than \code{\link[ggplot2]{theme_gray}()} or \code{\link[ggplot2]{theme_bw}()},
#' because those themes define elements deep in the hierarchy.
#'
#' This theme takes \code{\link[ggthemes]{theme_foundation}()} and sets
#' base text family and size to `VIC` and `15`.
#'
#' @inheritParams ggthemes::theme_foundation
#'
#' @family vpstheme
#' @export
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect
#' @importFrom ggplot2 rel
#' @importFrom ggplot2 margin
#' @importFrom ggplot2 unit
#' @importFrom ggthemes theme_foundation

theme_vps_foundation <- function(base_size = 15, base_family = "Rubik") {

  thm <- ggthemes::theme_foundation(base_size = base_size, base_family = base_family)

  thm +
    ggplot2::theme(
      # Clear background for clean charts
      rect =
        ggplot2::element_blank(),
      line =
        ggplot2::element_blank(),
      panel.background =
        ggplot2::element_blank(),
      panel.border =
        ggplot2::element_blank(),
      plot.title =
        ggplot2::element_text(
          size = ggplot2::rel(1.2),
          face = "bold",
          lineheight = 0.5,
          margin = ggplot2::margin(0, 0, 1, 0, "mm")
        ),
      plot.subtitle =
        ggplot2::element_text(
          lineheight = 0.5,
          margin = ggplot2::margin(0, 0, 1, 0, "mm")
        ),
      legend.text =
        ggplot2::element_text(
          size = ggplot2::rel(1)),
      legend.title =
        ggplot2::element_text(
          size = ggplot2::rel(1),
          lineheight = .3,
          vjust = 1,
          margin = ggplot2::margin(0,0,0,0,"cm")),
      plot.caption =
        ggplot2::element_text(
          size = ggplot2::rel(1),
          hjust = 0),
      strip.text =
        ggplot2::element_text(
          size = ggplot2::rel(1)),
      # Define axis foundation parameters
      axis.line =
        ggplot2::element_line(
          linewidth = 1,
        ),
      axis.ticks = ggplot2::element_blank(),
      axis.text =
        ggplot2::element_text(
          size=ggplot2::rel(1)
        ),
      # Define foundation legend parameters
      legend.background =
        ggplot2::element_blank(),
      legend.key =
        ggplot2::element_blank(),
      legend.key.size = ggplot2::unit(4,"mm"),
      legend.position = "bottom",
      legend.box.spacing = unit(2,"mm"),
      legend.margin = ggplot2::margin(1, 1, 0, 1, "mm"),
      # Define foundation margin parameters
      plot.margin = ggplot2::margin(2, 2, 2, 2, "mm"),
      # Define foundation title parameters
      plot.title.position = "plot",

    )

}
