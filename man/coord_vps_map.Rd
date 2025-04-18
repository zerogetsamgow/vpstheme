% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/coord_vps.R
\name{coord_vps_map}
\alias{coord_vps_map}
\title{Victorian coordinates for mapping}
\usage{
coord_vps_map(..., extent = c("Victoria", "Melbourne"))
}
\arguments{
\item{...}{Arguments passed on to scale_colour_manual}

\item{extent}{A text string that is used to select the palette to use}
}
\description{
This function is a wrapper around \code{\link[ggplot2]{coord_sf}()} that supplies an
extent to create limits that match the map of Victoria or Melbourne.
}
\seealso{
Other vpstheme: 
\code{\link{install_rubik_fonts}()},
\code{\link{install_vic_fonts}()},
\code{\link{make_tints}()},
\code{\link{scale_colour_dffh}()},
\code{\link{scale_colour_dffh_line}()},
\code{\link{scale_colour_dh}()},
\code{\link{scale_colour_dh_line}()},
\code{\link{scale_fill_dffh}()},
\code{\link{scale_fill_dh}()},
\code{\link{theme_vps_dffh}()},
\code{\link{theme_vps_dh}()},
\code{\link{theme_vps_foundation}()}
}
\concept{vpstheme}
