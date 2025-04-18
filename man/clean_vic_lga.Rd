% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean_vic_lga.R
\name{clean_vic_lga}
\alias{clean_vic_lga}
\title{Convert Victorian local government names into a consistent format}
\usage{
clean_vic_lga(
  x,
  to = "lga_abbr",
  fuzzy_match = TRUE,
  max_dist = 0.4,
  method = "jw"
)
}
\arguments{
\item{x}{a (character) vector containing Victorian local government area or abbreviations or
a (numeric) vector containing lga codes.}

\item{to}{what form should the state names be converted to? Options are
"lga_name", "lga_abbr" (the default), "lga_abs", and "lga_code".}

\item{fuzzy_match}{logical; either TRUE (the default) which indicates that
approximate/fuzzy string matching should be used, or FALSE which indicates that
only exact matches should be used.}

\item{max_dist}{numeric, sets the maximum acceptable distance between your
string and the matched string. Default is 0.4. Only relevant when fuzzy_match is TRUE.}

\item{method}{the method used for approximate/fuzzy string matching. Default
is "jw", the Jaro-Winker distance; see `??stringdist-metrics` for more options.
#'}
}
\value{
a character vector of state names, abbreviations, or codes.
}
\description{
Convert Victorian local government names into a consistent format
}
\examples{

library(vpstheme)

x <- c("Melburn", "Wang", "Donga")

# Convert the above to state abbreviations
clean_vic_lga(x)

# Convert the elements of `x` to state names

clean_vic_lga(x, to = "name")

# Disable fuzzy matching; you'll get NAs unless exact matches can be found

clean_vic_lga(x, fuzzy_match = FALSE)

# You can use clean_vic_lga in a dplyr mutate call

x_df <- data.frame(lga = x, stringsAsFactors = FALSE)

\dontrun{x_df |> mutate(lga_abbr = clean_vic_lga(lga))}

}
