## ----chart_setup, include=FALSE-----------------------------------------------
library(dplyr)
library(tibble)
library(stringr)
library(ggplot2)

## ----col_example, warnings = FALSE, out.height="400px", out.width="700px"-----
library(vpstheme)

# Create tibble of data for example
car_accidents = 
  tibble(
    year = c(2020,2021,2022,2023,2024),
    accidents = c(10,	5,	45,	10,	16)
  )

## basic example of a column plot
ggplot(
  data=car_accidents,
  aes(x=year, y = accidents)
  ) +
  geom_col(fill = bv.pink) +
  # With data labels
  geom_text(aes(label = accidents), size = 5, nudge_y = 2)+
  # x and y continuous scales, with some formatting
  scale_x_continuous(name = NULL, breaks = 2020:2024)+
  scale_y_continuous(name = "Number of car accidents", 
                     breaks = seq(0,50,by = 10),
                     limits = c(0,50),
                     expand = c(0,0,.1,.1))+
  # Labels added.
  labs(title = "Annual car accidents",
       caption = "Source: Data created arbitrarily.")+
  # And DH styles applied.
  theme_vps_dh()

## ----long_titles, warnings = FALSE, out.height="400px", out.width="700px"-----
# Create data tibble
airport_flights = 
  tibble(
    city = c("London",  "Milan",    "Paris",    "Prague",   "Lisbon"),
    flights = c(45e6, 16e6,  10e6, 10e6, 5e6)
  )

## example plot
ggplot(
  data = airport_flights, 
  aes(
    x = reorder(city, flights), 
    y = flights)) +
  geom_col(fill = bv.pink) +
  # Convert from columb to horizontal bar using coord_flip
  coord_flip()+
  # geom_text(aes(label = round(flights/1e6)), size = 5, nudge_y = 1)+
  scale_x_discrete(name = NULL) +
  scale_y_continuous(
    name = "Flights per year, millions", 
    labels = scales::label_number(scale = 1/1e6),  
    limits = c(0,50e6), expand = c(0,0,.1,.1))+
  labs(title="Flights at major international airports")+
  theme_vps_dh()

## ----col_example_full_colour, warnings = FALSE, out.height="400px", out.width="700px"----
# Create tibble of data for examples
car_accidents = 
  tibble(
    month = rep(c("Jan","Feb","Mar","Apr","May"),4),
    freeway = c(rep("M1",5),rep("M2",5),rep("M3",5),rep("M4",5)),
    accidents = c(10, 5, 45, 10,	16, 
                  20, 10, 40, 12, 10, 
                  30, 15, 25, 14, 18, 
                  25, 20, 15, 18, 10)
  ) |> 
  mutate(month = factor(month, levels = month.abb),
         freeny = factor(freeway))

## example of multi colour column plot
ggplot(
  data = car_accidents,
  aes(x = month, y = accidents, fill = freeway)) +
  # by default multi category columns will be stacked, we can adjust using `position`
  geom_col(position = position_dodge2()) +
  scale_x_discrete(name = NULL)+
  scale_y_continuous(name = "Number of accidents", expand = c(0,0))+
  scale_fill_dh(palette = "pinks", name = NULL)+
  labs(title="Annual car accidents on major motor ways",
       subtitle = "This example shows how to add color using `scale_fill_dh`.")+
  theme_vps_dh()

