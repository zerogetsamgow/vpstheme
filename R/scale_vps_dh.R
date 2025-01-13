#' Department of Health color scale function
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_colour_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{dh_colours}()} to create a discrete colour scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_colour_manual
#' @param palette A text string that is used to select the palette to use
#' @importFrom ggplot2 scale_colour_manual
#' @importFrom stringr str_to_lower

scale_colour_dh = function(..., palette = c("primary","secondary","pinks","oranges","blues")) {

  if(is.null(palette)) {palette = "primary"}
  if(length(palette)>1) {palette = "primary"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "primary" = vpstheme::dh_colours$primary,
      "secondary" = vpstheme::dh_colours$secondary,
      "pinks" = vpstheme::dh_colours$tints_pink,
      "oranges" = vpstheme::dh_colours$tints_oranges,
      "blues" = vpstheme::dh_colours$tints_blues
    )

  return(scale_colour_manual(..., values = .palette))
}

#' Department of Health color fillefunction
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_fill_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{dh_colours}()} to create a discrete fill scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_fill_manual
#' @param palette A text string that is used to select the palette to use
#' @importFrom ggplot2 scale_fill_manual
#' @importFrom stringr str_to_lower

scale_fill_dh = function(..., palette = c("primary","secondary","pinks","oranges","blues")) {

  if(is.null(palette)) {palette = "primary"}
  if(length(palette)>1) {palette = "primary"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "primary" = vpstheme::dh_colours$primary,
      "secondary" = vpstheme::dh_colours$secondary,
      "pinks" = vpstheme::dh_colours$tints_pink,
      "oranges" = vpstheme::dh_colours$tints_oranges,
      "blues" = vpstheme::dh_colours$tints_blues
    )

  return(scale_fill_manual(..., values = .palette))
}
