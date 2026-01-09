#' Department of Justice and Community Safety color scale function
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_colour_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{djcs_colours}()} to create a discrete colour scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_colour_manual
#' @param palette A text string that is used to select the palette to use
#' @param reverse A logical to reverse order of palette
#' @importFrom ggplot2 scale_colour_manual
#' @importFrom stringr str_to_lower

scale_colour_djcs = function(...,
                           palette = c("primary","navys","purples","light"),
                           reverse = FALSE) {

  if(is.null(palette)) {palette = "primary"}
  if(length(palette)>1) {palette = "primary"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "primary" = vpstheme::djcs_colours$primary,
      "navys" = vpstheme::djcs_colours$tints_navy,
      "purples" = vpstheme::djcs_colours$tints_purple,
      "light" = vpstheme::djcs_colours$tints_light
    )
  # Reverse to get correct order when applied to factored data
  if(reverse) {.palette = rev(.palette)}

  return(scale_colour_manual(..., values = .palette))
}

#' Department of Justice and Community Safety fill function
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_fill_manual}()} that supplies a
#' palette  \code{\link[vpstheme]{djcs_colours}()} to create a discrete fill scale.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_fill_manual
#' @param palette A text string that is used to select the palette to use
#' @param reverse A logical to reverse order of palette
#' @importFrom ggplot2 scale_fill_manual
#' @importFrom stringr str_to_lower

scale_fill_djcs = function(...,
                         palette = c("primary","navys","purples","light"),
                         reverse = FALSE) {

  if(is.null(palette)) {palette = "primary"}
  if(length(palette)>1) {palette = "primary"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "primary" = vpstheme::djcs_colours$primary,
      "navys" = vpstheme::djcs_colours$tints_navy,
      "purples" = vpstheme::djcs_colours$tints_purples,
      "light" = vpstheme::djcs_colours$tints_light
    )
  # Reverse to get correct order when applied to factored data
  if(reverse) {.palette = rev(.palette)}

  return(scale_fill_manual(..., values = .palette))
}


#' Department of Justice and Community Safety color scale function for line charts
#'
#' This function is a wrapper around \code{\link[ggplot2]{scale_colour_manual}()} that supplies a
#' primary colour  \code{\link[vpstheme]{djcs_colours}()} to create a discrete colour scale comprising
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

scale_colour_djcs_line =
  function(
    ..., colour = c("navy","purple","sky","cobalt"),
    gradient = FALSE,
    lighten = FALSE) {

  if(is.null(colour)) {colour = "navy"}
  if(length(colour)>1) {colour = "navy"}

  .primary =
    switch(
      stringr::str_to_lower(colour),
      "navy" = vpstheme::bv.navy,
      "purple" = vpstheme::bv.violet,
      "sky" = vpstheme::bv.cobalt,
      "cobalt" = vpstheme::bv.sky
      )
  .secondary = rep(vpstheme::bv.charcoal, 4)
  if(lighten&gradient){stop(message("Only one of lighten or gradient can be chosen."))}

  if(lighten){.secondary = rep(vpstheme::bv.smoke, 4)}
  if(gradient){.secondary = c(vpstheme::bv.black, palettes::pal_ramp(c(vpstheme::bv.charcoal, vpstheme::bv.smoke), n = 3)) }

  return(scale_colour_manual(..., values = c(.primary, .secondary)))
}


