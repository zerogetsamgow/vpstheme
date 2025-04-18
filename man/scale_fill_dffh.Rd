% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_vps_dffh.R
\name{scale_fill_dffh}
\alias{scale_fill_dffh}
\title{Department of Families, Fairness and Housing color fillefunction}
\usage{
scale_fill_dffh(
  ...,
  palette = c("core", "extended", "support", "teals", "greens", "blues", "purples"),
  reverse = FALSE
)
}
\arguments{
\item{...}{Arguments passed on to scale_fill_manual}

\item{palette}{A text string that is used to select the palette to use}

\item{reverse}{A logical to reverse order of palette}
}
\description{
This function is a wrapper around \code{\link[ggplot2]{scale_fill_manual}()} that supplies a
palette  \code{\link[vpstheme]{dffh_colours}()} to create a discrete fill scale.
}
\seealso{
Other vpstheme: 
\code{\link{coord_vps_map}()},
\code{\link{install_rubik_fonts}()},
\code{\link{install_vic_fonts}()},
\code{\link{make_tints}()},
\code{\link{scale_colour_dffh}()},
\code{\link{scale_colour_dffh_line}()},
\code{\link{scale_colour_dh}()},
\code{\link{scale_colour_dh_line}()},
\code{\link{scale_fill_dh}()},
\code{\link{theme_vps_dffh}()},
\code{\link{theme_vps_dh}()},
\code{\link{theme_vps_foundation}()}
}
\concept{vpstheme}
