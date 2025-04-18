% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_vps_foundation.R
\name{theme_vps_foundation}
\alias{theme_vps_foundation}
\title{VPS Foundation Theme}
\usage{
theme_vps_foundation(base_size = 15, base_family = "Rubik")
}
\arguments{
\item{base_size}{base font size, given in pts.}

\item{base_family}{base font family}
}
\description{
This theme is designed to be a foundation from which to build new
themes, and not meant to be used directly. \code{theme_vps_foundation()}
is a complete theme with only minimal number of elements defined.
}
\details{
It is easier to create new themes by extending this one rather
than \code{\link[ggplot2]{theme_gray}()} or \code{\link[ggplot2]{theme_bw}()},
because those themes define elements deep in the hierarchy.

This theme takes \code{\link[ggthemes]{theme_foundation}()} and sets
base text family and size to `VIC` and `15`.
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
\code{\link{scale_fill_dffh}()},
\code{\link{scale_fill_dh}()},
\code{\link{theme_vps_dffh}()},
\code{\link{theme_vps_dh}()}
}
\concept{vpstheme}
