# Create lookup tables of state names and abbreviations
library(tidyverse)

# Get data saved locally
lga_table = read_csv("./inst/extdata/lga_dict.csv") |>
  mutate_all(as.character)

# Create dictionary tibble
lga_dict_tbl =
  lga_table |>
  pivot_longer(
    -lga_abbr,
    names_to = "type",
    values_to = "alias")

# lga_abbr type to above
lga_dict_tbl =
  bind_rows(
    lga_dict_tbl,
    lga_table |>
    select(lga_abbr) %>%
    mutate(alias = lga_abbr,
           type = "lga_abbr")
  )

# create dictionary as character vector
lga_dict <- lga_dict_tbl$alias
names(lga_dict) <- lga_dict_tbl$lga_abbr

# Add known missing cases
lga_dict <- c(lga_dict,
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
nospaces <- str_remove_all(lga_table$lga_name, " ")
names(nospaces) <- lga_table$lga_abbr

lga_dict <- c(lga_dict, nospaces)

# remove duplicates
lga_dict <- lga_dict[!duplicated(lga_dict)]

lga_dict <- tolower(lga_dict)

usethis::use_data(lga_dict, lga_table, overwrite = TRUE, internal = TRUE)
