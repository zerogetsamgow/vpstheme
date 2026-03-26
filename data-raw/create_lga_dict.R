# Create lookup tables of state names and abbreviations

# Get data saved locally
lga_table =
  readr::read_csv(
    "./inst/extdata/lga_dict.csv",
    show_col_types = FALSE) |>
  dplyr::mutate_all(as.character)

# Create dictionary tibble
lga_dict_tbl =
  lga_table |>
  tidyr::pivot_longer(
    -lga_abbr,
    names_to = "type",
    values_to = "alias")

# lga_abbr type to above
lga_dict_tbl =
  dplyr::bind_rows(
    lga_dict_tbl,
    lga_table |>
      dplyr::select(lga_abbr)  |>
      dplyr::mutate(
        alias = lga_abbr,
        type = "lga_abbr")
  )

# create dictionary as character vector
lga_dict <- lga_dict_tbl$alias
names(lga_dict) <- lga_dict_tbl$lga_abbr

# Add known missing cases
lga_dict <- c(lga_dict,
              "Merri-bek" = "City of Moreland",
              "Merri-bek" = "Moreland",
              "Melton" = "Shire of Melton",
              "Colac Otway" = "Colac-Otway",
              "Ballarat" = "The Rat",
              "Greater Geelong" = "Geel",
              "Greater Geelong" = "G'long",
              "Greater Geelong" = "G/long",
              "Greater Geelong" = "Sleepy Hollow",
              "Greater Geelong" = "CoGG",
              "Greater Dandenong" = "Dandenong",
              "Greater Dandenong" = "CGD"
              )

# Add no spaced versions
nospaces <- stringr::str_remove_all(lga_table$lga_name, " ")
names(nospaces) <- lga_table$lga_abbr

lga_dict <- c(lga_dict, nospaces)

# remove duplicates
lga_dict <- lga_dict[!duplicated(lga_dict)]

lga_dict <- tolower(lga_dict)

usethis::use_data(lga_dict, lga_table, overwrite = TRUE, internal = TRUE)
