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
  # Add fonts
  # vic.url = "https://www.vic.gov.au/sites/default/files/2018-12/Vic-Font-OTF.zip"
  #  download.file(vic.url, basename(vic.url))
  #  unzip(basename(vic.url), exdir = "./VIC")

  sysfonts::font_add("VIC",
                     regular = "./OTF/VIC-regular.otf",
                     bold = "./OTF/VIC-bold.otf",
                     italic = "./OTF/inst/VIC-italic.otf",
                     bolditalic = "./OTF/inst/VIC-bolditalic.otf"
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
