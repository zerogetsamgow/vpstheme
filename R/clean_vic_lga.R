#' Convert Victorian local government names into a consistent format
#'
#' @param x a (character) vector containing Victorian local government area or abbreviations or
#' a (numeric) vector containing lga codes.
#'
#' @param to what form should the state names be converted to? Options are
#' "lga_name", "lga_abbr" (the default), "lga_abs", and "lga_code".
#'
#' @param fuzzy_match logical; either TRUE (the default) which indicates that
#' approximate/fuzzy string matching should be used, or FALSE which indicates that
#' only exact matches should be used.
#'
#' @param max_dist numeric, sets the maximum acceptable distance between your
#' string and the matched string. Default is 0.4. Only relevant when fuzzy_match is TRUE.
#'
#' @param method the method used for approximate/fuzzy string matching. Default
#' is "jw", the Jaro-Winker distance; see `??stringdist-metrics` for more options.
#'#'
#' @return a character vector of state names, abbreviations, or codes.
#'
#' @rdname clean_vic_lga
#' @examples
#'
#' library(vpstheme)
#'
#' x <- c("Melburn", "Wang", "Donga")
#'
#' # Convert the above to state abbreviations
#' clean_vic_lga(x)
#'
#' # Convert the elements of `x` to state names
#'
#' clean_vic_lga(x, to = "name")
#'
#' # Disable fuzzy matching; you'll get NAs unless exact matches can be found
#'
#' clean_vic_lga(x, fuzzy_match = FALSE)
#'
#' # You can use clean_vic_lga in a dplyr mutate call
#'
#' x_df <- data.frame(lga = x, stringsAsFactors = FALSE)
#'
#' \dontrun{x_df |> mutate(lga_abbr = clean_vic_lga(lga))}
#'
#' @importFrom stringdist amatch
#' @export

clean_vic_lga <- function(x, to = "lga_abbr", fuzzy_match = TRUE, max_dist = 0.4, method = "jw"){

  if(!is.logical(fuzzy_match)){
    stop("`fuzzy_match` argument must be either `TRUE` or `FALSE`")
  }

  if(!is.numeric(x)) {
    x <- lga_string_tidy(x)
  }

  if(fuzzy_match){
    matched_abbr <- names(lga_dict[stringdist::amatch(x, tolower(lga_dict),
                                                         method = method,
                                                         matchNA = FALSE,
                                                         maxDist = max_dist)])
  } else {
    matched_abbr <- names(lga_dict[match(x, tolower(lga_dict))])
  }

  ret <- lga_table[[to]][match(matched_abbr, lga_table$lga_abbr)]

  ret <- as.character(ret)

  ret

}


#' Helper function used by clean_lga_name
#'
#' @param string a character string.
#' @rdname lga_string_tidy

lga_string_tidy <- function(string){

  string <- stringr::str_to_lower(string)

  string <- stringr::str_trim(string, "both")

  string <- ifelse(string %in% c("na", "n.a", "n.a.", "n a",
                                 "not applicable"),
                   NA_character_,
                   string)

  string
}

