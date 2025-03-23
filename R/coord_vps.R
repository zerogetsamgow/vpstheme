#' Victorian coordinates for mapping
#'
#' This function is a wrapper around \code{\link[ggplot2]{coord_sf}()} that supplies an
#' extent to create limits that match the map of Victoria or Melbourne.
#'
#'
#' @family vpstheme
#' @export
#' @param ... Arguments passed on to scale_colour_manual
#' @param extent A text string that is used to select the palette to use
#' @importFrom ggplot2 coord_sf
#' @importFrom stringr str_to_lower

coord_vps_map = function(...,
                           extent = c("Victoria","Melbourne")) {

  # ensure extent is a valid
  if(is.null(extent)) {extent = "Victoria"}
  if(length(extent)>1) {extent = "Victoria"}
  if(!extent %in% c("Victoria","Melbourne","victoria","melbourne"))
  {stop("coord_vps_map only works with extent values of Victoria or Melbourne.")}

  # Choose xlimg
  .xlim =
    switch(
      stringr::str_to_lower(extent),
      "victoria" = c(140.55,149.60),
      "melbourne" = c(144.52,146.12)
    )

  .ylim =
    switch(
      stringr::str_to_lower(extent),
      "victoria" = c(-33.55,-39.1),
      "melbourne" = c(-37.45,-38.46)
    )

  # Return coord_sg using limits chosen.
  return(coord_sf(xlim = .xlim, ylim = .ylim))

}
