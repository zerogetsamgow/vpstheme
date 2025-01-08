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
#' @importFrom palettes pal_ramp

make_tints <- function(bv_colour) {

  # Create tints from supplied colour to white
  .tints =
    palettes::pal_ramp(
      c(
        {{bv_colour}},
        vpstheme::bv.white
        ),
      n=5,
      interpolate ="linear")
  # Remove white from tints
  .tints = .tints[1:4]
 return(.tints)

}
