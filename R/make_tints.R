#' Make tints based on Brand Victoria colours VIC Fonts
#'
#' Departmental palettes include tints of the primary colours
#'
#' This function allows these tints to be created in a consistent fashion
#'
#'
#' @family vpstheme
#' @export
#' @param bv_colour a colour object to be used as the starting value in the tint range
#'
#' @param end_colour a string denoting the end value in the tint range, can take values of "white" (default) and "black".
#' @importFrom palettes pal_ramp

make_tints <- function(bv_colour, end_colour = c("white","black"), ...) {

  if(is.null({{end_colour}})) {end_colour = "white"}
  if(is.null({{n}})) {n = 5}
  if(length({{end_colour}})>1) {end_colour = "white"}

  .end_colour =
    switch(
      str_to_lower(end_colour),
      "white" = vpstheme::bv.white,
      "black" = vpstheme::bv.black
    )

  # Create tints from supplied colour to white or black
  .tints =
    palettes::pal_ramp(
      c(
        {{bv_colour}},
        .end_colour
        ),
      n = n,
      interpolate ="linear")
  # Remove white/black from tints
  .tints = .tints[1:4]
 return(.tints)

}


