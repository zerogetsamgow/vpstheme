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
#' @param reverse A logical to reverse order of palette
#' @importFrom ggplot2 scale_colour_manual
#' @importFrom stringr str_to_lower

scale_colour_dh = function(...,
                           palette = c("primary","secondary","pinks","oranges","blues"),
                           reverse = FALSE) {

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
  # Reverse to get correct order when applied to factored data
  if(reverse) {.palette = rev(.palette)}

  return(scale_colour_manual(..., values = .palette))
}

#' Department of Health fill function
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_fill_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{dh_colours}()} to create a discrete fill scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_fill_manual
#' @param palette A text string that is used to select the palette to use
#' @param reverse A logical to reverse order of palette
#' @importFrom ggplot2 scale_fill_manual
#' @importFrom stringr str_to_lower

scale_fill_dh =function(...,
                        palette = c("primary","secondary","pinks","oranges","blues"),
                        reverse = FALSE) {

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
  # Reverse to get correct order when applied to factored data
  if(reverse) {.palette = rev(.palette)}

  return(scale_fill_manual(..., values = .palette))
}


#' Department of Health color scale function for line charts
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_colour_manual}()} that supplies a
#' primary colour  \code{\link[vpstheme]{dh_colours}()} to create a discrete colour scale comprising
#' that colour and four grey colours.
#'
#' By default the greys are \code{\link[vpstheme]{bv.charcoal}()}.
#' Setting `lighten = TRUE` changes them to \code{\link[vpstheme]{bv.smoke}()}
#' Setting  `gradient = TRUE` creates a palette ramp from \code{\link[vpstheme]{bv.black}()}
#' using \code{\link[vpstheme]{make_tints}()}
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_colour_manual
#' @param colour A text string that is used to select the palette to use
#' @param gradient A logical value string that is used to select the palette to use
#' @param lighten A logical value string that is used to select the palette to use
#'
#' @importFrom ggplot2 scale_colour_manual
#' @importFrom stringr str_to_lower

scale_colour_dh_line =
  function(
    ..., colour = c("pink","orange","blue","red"),
    gradient = FALSE,
    lighten = FALSE) {

  if(is.null(colour)) {colour = "pink"}
  if(length(colour)>1) {colour = "pink"}

  .primary =
    switch(
      stringr::str_to_lower(colour),
      "pink" = vpstheme::bv.pink,
      "orange" = vpstheme::bv.orange,
      "blue" = vpstheme::bv.cobalt,
      "red" = vpstheme::bv.red
      )
  .secondary = rep(vpstheme::bv.charcoal, 4)
  if(lighten&gradient){stop(message("Only one of lighten or gradient can be chosen."))}

  if(lighten){.secondary = rep(vpstheme::bv.smoke, 4)}
  if(gradient){.secondary = c(vpstheme::bv.black, palettes::pal_ramp(c(vpstheme::bv.charcoal, vpstheme::bv.smoke), n = 3)) }

  return(scale_colour_manual(..., values = c(.primary, .secondary)))
}

