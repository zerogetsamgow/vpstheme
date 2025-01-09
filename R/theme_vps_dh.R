#' Department of Health Theme
#'
#' This theme takes \code{\link[vpstheme]{theme_vps_foundation}()} and applies
#' background colour and text colours based on parameter `base_colour`.
#'
#' Colours are sourced from `vpstheme` and are Department style guide compliant.
#'
#' @family vpstheme
#' @export
#' @param base_colour A text string that is used to set background, line and text colours for the theme
#' @param base_size An integer that is used to set the base font size
#' @importFrom ggplot2 theme
#' @importFrom ggplot2 element_text
#' @importFrom ggplot2 element_rect
#' @importFrom dplyr if_else
#' @importFrom colorspace darken
#' @importFrom colorspace lighten

theme_vps_dh <-
  function(
    base_colour =
      c("white","pink","orange","blue","red"),
    base_size = 15,
    show_gridlines = FALSE) {

    # Test to see if base_colour is defined, if not set to white.
    if(is.null(base_colour)) {base_colour = "white"}
    if(length(base_colour)>1) {base_colour = "white"}

    # Choose Brand Victoria colour matching base_colour selection
    .base_colour =
      switch(
        stringr::str_to_lower({{base_colour}}),
        "white" = vpstheme::bv.white,
        "pink" = vpstheme::bv.pink,
        "orange" = vpstheme::bv.orange,
        "blue" = vpstheme::bv.royal,
        "red" = vpstheme::bv.red
      )

    .text_colour =
      dplyr::if_else(
        base_colour == "white",
        vpstheme::bv.charcoal,
        vpstheme::bv.smoke
    )
    .axis_text_colour =
      dplyr::if_else(
        base_colour == "white",
        colorspace::lighten(vpstheme::bv.charcoal,.25),
        vpstheme::bv.smoke
      )
    .line_colour =
      dplyr::if_else(
        base_colour == "white",
        vpstheme::bv.charcoal,
        vpstheme::bv.smoke
    )

  # Start with foundation theme
  thm <- vpstheme::theme_vps_foundation()

  # Set colours and sizes to match parameters
  thm = thm +
    ggplot2::theme(
      text =
        ggplot2::element_text(
          size = base_size,
          colour = .text_colour),
      axis.title =
        ggplot2::element_text(
          hjust = 0.8
        ),
      axis.text =
        ggplot2::element_text(
          colour = .axis_text_colour),
      plot.background =
        ggplot2::element_rect(
          fill = .base_colour,
          colour=NA),
      axis.line =
        ggplot2::element_line(
          linewidth = .5,
          colour = .line_colour)
    )

  if(show_gridlines) {
    thm = thm +
      ggplot2::theme(
        panel.grid.major.y = ggplot2::element_line(
          colour = .axis_text_colour)
      )

  }
  return(thm)
}
