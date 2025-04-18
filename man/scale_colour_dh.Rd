% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_vps_dh.R
\name{scale_colour_dh}
\alias{scale_colour_dh}
\title{Department of Health color scale function}
\usage{
scale_colour_dh(
  ...,
  palette = c("primary", "secondary", "pinks", "oranges", "blues"),
  reverse = FALSE
)
}
\arguments{
\item{...}{Arguments passed on to scale_colour_manual}

\item{palette}{A text string that is used to select the palette to use}

\item{reverse}{A logical to reverse order of palette}
}
\description{
This function is a wrapper around \code{\link[ggplot2]{scale_colour_manual}()} that supplies a
palette  \code{\link[vpstheme]{dh_colours}()} to create a discrete colour scale.
}
\seealso{
Other vpstheme: 
\code{\link{coord_vps_map}()},
\code{\link{install_rubik_fonts}()},
\code{\link{install_vic_fonts}()},
\code{\link{make_tints}()},
\code{\link{scale_colour_dffh}()},
\code{\link{scale_colour_dffh_line}()},
\code{\link{scale_colour_dh_line}()},
\code{\link{scale_fill_dffh}()},
\code{\link{scale_fill_dh}()},
\code{\link{theme_vps_dffh}()},
\code{\link{theme_vps_dh}()},
\code{\link{theme_vps_foundation}()}
}
\concept{vpstheme}
