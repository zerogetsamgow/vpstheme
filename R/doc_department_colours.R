#' Department of Health colours
#'
#' Department of Health colour palettes.
#'
#' The departments colour palette is based on the Brand Victoria colours,
#' utilising:
#'
#' - `bv.pink`, `bv.maroon`, `bv.orange`, and `bv.royal` as `primary` colours.
#' - `bv.blush`, `bv.rose`, `bv.amber`, and `bv.cobalt` as `secondary` colours.
#' A range of tints based on the primary colours are also included in the palette
#' e.g. `tints_pink`
#'
#' @format ## `dh_colours`
#' An object of class `palette` with `r length(dh_colours)` palettes.
#' Use `names(dh_colours)` to return all palette names.
#'
#' @source <https://github.com/zerogetsamgow/vpstheme>
#'
#' @examples
#' # Plot primary colours
#' barplot(c(2,5,9,7), col=dh_colours$primary)
#' # Plot pink tints
#' barplot(c(2,5,9,7), col=dh_colours$tints_pink)
"dh_colours"

#' Department of Families, Fairness and House colours
#'
#' Department of Families, Fairness and House colour palettes.
#'
#' The departments colour palette is based on the Brand Victoria colours,
#' utilising:
#'
#' - `bv.teal`, `bv.mint`, `bv.cerulean`, and `bv.purple` as `core` colours.
#' - `bv.navy`, `bv.charcoal`, and `bv.smoke` as `support` colours.
#' - `bv.orange`, `bv.pink` and `bv.red` as `extended` colours.
#'
#' A range of tints based on the `core` colours are also included in the palette
#' e.g. `tints_teal`
#'
#' @format ## `dffh_colours`
#' An object of class `palette` with `r length(dffh_colours)` palettes and
#' `r length(unlist(dffh_colours))-4` colours.
#'
#' Use `names(dffh_colours)` to return all palette names.
#'
#' @source <https://github.com/zerogetsamgow/vpstheme>
#' @examples
#' # Plot primary colours
#' barplot(c(2,5,9,7), col=dffh_colours$core)
#' # Plot pink tints
#' barplot(c(2,5,9,7), col=dffh_colours$tints_teal)
"dffh_colours"
