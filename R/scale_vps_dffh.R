#' Department of Families, Fairness and Housing color scale function
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_colour_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{dffh_colours}()} to create a discrete colour scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_colour_manual
#' @param palette A text string that is used to select the palette to use
#' @importFrom ggplot2 scale_colour_manual
#' @importFrom stringr str_to_lower

scale_colour_dffh = function(..., palette = c("core","extended","teals","greens","blues","purples")) {

  if(is.null(palette)) {palette = "core"}
  if(length(palette)>1) {palette = "core"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "core" = vpstheme::dffh_colours$core,
      "extended" = c(vpstheme::dffh_colours$core,vpstheme::dffh_colours$extended),
      "teals" = vpstheme::dffh_colours$tints_teal,
      "greens" = vpstheme::dffh_colours$tints_green,
      "blues" = vpstheme::dffh_colours$tints_blue,
      "purples" = vpstheme::dffh_colours$tints_purple
    )

  return(scale_colour_manual(..., values = .palette))
}

#' Department of Families, Fairness and Housing color fillefunction
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_fill_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{dffh_colours}()} to create a discrete fill scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_fill_manual
#' @param palette A text string that is used to select the palette to use
#' @importFrom ggplot2 scale_fill_manual
#' @importFrom stringr str_to_lower

scale_fill_dffh = function(..., palette = c("core","extended","teals","greens","blues","purples")) {

  if(is.null(palette)) {palette = "core"}
  if(length(palette)>1) {palette = "core"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "core" = vpstheme::dffh_colours$core,
      "extended" = c(vpstheme::dffh_colours$core,vpstheme::dffh_colours$extended),
      "teals" = vpstheme::dffh_colours$tints_teal,
      "greens" = vpstheme::dffh_colours$tints_green,
      "blues" = vpstheme::dffh_colours$tints_blue,
      "purples" = vpstheme::dffh_colours$tints_purple
    )

  return(scale_fill_manual(..., values = .palette))
}
