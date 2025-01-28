#' Install VIC Fonts
#'
#' Themes in this package use the VIC font.
#'
#' This function when complete will allow these to be installed
#' within the package
#'
#'
#' @family vpstheme
#' @export
#' @importFrom sysfonts font_add
#' @importFrom showtext showtext_auto

install_vic_fonts <- function() {
  # Add fonts saved in package
  sysfonts::font_add(
    "VIC",
    regular = "./inst/fonts/VIC-Regular.otf",
    bold = "./inst/fonts/VIC-Bold.otf",
    italic = "./inst/fonts/VIC-italic.otf"
  )
  # Tell R to render text using showtext by calling the showtext_auto() function
  showtext::showtext_auto()
}


#' Install Rubik Fonts
#'
#' Themes in this package use the Rubik font as an alternative to VIC.
#'
#' This function allow this font to be installed within the package
#'
#'
#' @family vpstheme
#' @export
#' @importFrom sysfonts font_add_google
#' @importFrom showtext showtext_auto

install_rubik_fonts <- function() {
  # Add fonts
  sysfonts::font_add_google("Rubik")
  # Tell R to render text using showtext by calling the showtext_auto() function
  showtext::showtext_auto()
}
