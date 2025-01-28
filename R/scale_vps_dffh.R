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

scale_colour_dffh =  function(..., palette = c("core","extended","support","teals","greens","blues","purples")) {

  if(is.null(palette)) {palette = "core"}
  if(length(palette)>1) {palette = "core"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "core" = vpstheme::dffh_colours$core,
      "extended" = c(vpstheme::dffh_colours$core,vpstheme::dffh_colours$extended),
      "support" = c(vpstheme::dffh_colours$core,vpstheme::dffh_colours$support),
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

scale_fill_dffh = function(..., palette = c("core","extended","support","teals","greens","blues","purples")) {

  if(is.null(palette)) {palette = "core"}
  if(length(palette)>1) {palette = "core"}

  .palette =
    switch(
      stringr::str_to_lower(palette),
      "core" = vpstheme::dffh_colours$core,
      "extended" = c(vpstheme::dffh_colours$core,vpstheme::dffh_colours$extended),
      "support" = c(vpstheme::dffh_colours$core,vpstheme::dffh_colours$support),
      "teals" = vpstheme::dffh_colours$tints_teal,
      "greens" = vpstheme::dffh_colours$tints_green,
      "blues" = vpstheme::dffh_colours$tints_blue,
      "purples" = vpstheme::dffh_colours$tints_purple
    )

  return(scale_fill_manual(..., values = .palette))
}

#' Department of Families, Fairness and Housing color scale function for line charts
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

scale_colour_dffh_line =
  function(
    ..., colour = c("teal","mint","blue","purple"),
    gradient = FALSE,
    lighten = FALSE) {

    if(is.null(colour)) {colour = "teal"}
    if(length(colour)>1) {colour = "teal"}

    .primary =
      switch(
        stringr::str_to_lower(colour),
        "teal" = vpstheme::bv.teal,
        "mint" = vpstheme::bv.mint,
        "blue" = vpstheme::bv.cobalt,
        "purple" = vpstheme::bv.purple
      )
    .secondary = rep(vpstheme::bv.charcoal, 4)
    if(lighten&gradient){stop(message("Only one of lighten or gradient can be chosen."))}

    if(lighten){.secondary = rep(vpstheme::bv.smoke, 4)}
    if(gradient){.secondary = c(vpstheme::bv.black, palettes::pal_ramp(c(vpstheme::bv.charcoal, vpstheme::bv.smoke), n = 3)) }

    return(scale_colour_manual(..., values = c(.primary, .secondary)))
  }


