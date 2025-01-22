## ----chart_setup, include=FALSE-----------------------------------------------
library(dplyr)
library(tibble)
library(scales)
library(stringr)
library(ggplot2)

## ----base_col_plot, fig.width = 7, fig.height = 5-----------------------------
library(vpstheme)

# Create tibble of data for example
car_accidents = 
  tibble::tibble(
    year = c(2020,2021,2022,2023,2024),
    accidents = c(10,	5,	45,	10,	16))

# Create basic example of a column plot
ggplot(
  data = car_accidents,
  aes(x = year, y = accidents)
  ) +
  geom_col() 

## ----with_theme, fig.width = 7, fig.height = 5--------------------------------
# Add theme_vps_dh() to last_plot()
last_plot() +
  theme_vps_dh()

## ----add_labs, fig.width = 7, fig.height = 5----------------------------------
# Add title and caption to last_plot()
last_plot() +
  labs(title = "Annual car accidents",
       caption = "Source: Data created for illustrative purposes.")

## ----add_axis_titles, fig.width = 7, fig.height = 5---------------------------
# Add (or revove) names using scale functions.
last_plot() +
  scale_x_continuous(name = NULL) +
  scale_y_continuvps(name = "Number of accidents")

## ----add_limits, warnings = FALSE, fig.width = 7, fig.height = 5--------------
# Add limits to scal_y_*
last_plot() +
  scale_y_continuvps(name = "Number of accidents", limits = c(0,50))

# Assign this plot a name for later use
accident_plot = last_plot()

## ----long_titles, fig.width = 7, fig.height = 5-------------------------------
# Create data tibble
airport_flights = 
  tibble::tibble(
    city = c("London",  "Milan",    "Paris",    "Prague",   "Lisbon"),
    flights = c(45e6, 16e6,  10e6, 10e6, 5e6)
  )

# Create plot with theme, scales and labs, then coord_flip()
ggplot(
  data = airport_flights, 
  aes(
    x = reorder(city, flights), 
    y = flights)) +
  geom_col() +
  scale_x_discrete(name = NULL) +
  scale_y_continuvps(name = NULL) +
  labs(title="Flights at major international airports")+
  theme_vps_dh() +
  # add coord_flip to swap x and y axes
  coord_flip()


## ----scale_labels, fig.width = 7, fig.height = 5------------------------------

# example plot
last_plot() +
  scale_y_continuvps(
    name = "Flights per year, millions", 
    labels = scales::label_number(scale = 1/1e6),  
    limits = c(0,50e6))

# Assign this plot a name for later use
airport_plot = last_plot()


## ----data_labels, fig.width = 7, fig.height = 5-------------------------------

# Add data labels
accident_plot +
  geom_text(
    aes(label = accidents),
    colour = bv.charcoal,
    vjust = -0.2, size = 5)

## ----scale_horizontal_labels, fig.width = 7, fig.height = 5-------------------

# Add data labels
airport_plot +
  geom_text(
    aes(label = flights/1e6,
        y = 3e6),
    colour = bv.smoke,
    hjust = 1, size = 5)

## ----add_colour, fig.width = 7, fig.height = 5--------------------------------

airport_plot +
  geom_col(fill = bv.pink)


## ----add_highlight_colour, fig.width = 7, fig.height = 5----------------------
airport_plot +
  geom_col(aes(fill = city)) +
  # Use scale_fill_manual to highlight Milan
  scale_fill_manual(values = c("Milan"=bv.pink), guide = "none")


## ----col_example_full_colour, warnings = FALSE, fig.height = 5, fig.width = 7----
# Create tibble of data for example
car_accidents = 
  tibble::tibble(
    month = rep(c("Jan","Feb","Mar","Apr","May"),4), 
    freeway = c(rep("M1",5),rep("M2",5),rep("M3",5),rep("M4",5)), 
    accidents = c(10, 5, 45, 10, 16, 
                  20, 10, 40, 12, 10, 
                  30, 15, 25, 14, 18, 
                  25, 20, 15, 18, 10)) |> 
  dplyr::mutate(month = factor(month, levels = month.abb), freeway = factor(freeway))

# example of multi colour column plot
ggplot(data = car_accidents, 
       aes(x = month, 
           y = accidents, 
           fill = freeway)) + 
  # by default multi category columns will be stacked, we can adjust using `position` 
  geom_col(position = position_dodge()) + 
  theme_vps_dh() +
  scale_x_discrete(name = NULL) + 
  scale_y_continuvps(name = "Number of accidents") 

## ----add_scale_fill_dh, warnings = FALSE, fig.height = 5, fig.width = 7-------
last_plot() +
  # Add scale_fill_dh and specify the pinks palette
  scale_fill_dh(palette = "pinks", name = NULL) 

## ----stack_scale_fill_dh, warnings = FALSE, fig.height = 5, fig.width = 7-----
last_plot() +
 # Change to a stacked bar chart
  geom_col(aes(fill = forcats::fct_rev(freeway)), position = position_stack()) +
  # Reverse oalette so colpours start from the bottom of each column
 # scale_fill_dh(palette = "pinks", name = NULL, reverse = TRUE) +
  guides(fill = guide_legend(reverse = TRUE))+
  # Move legend tot he right
  theme(legend.position = "right")

## ----line_setup, fig.width = 7, fig.height = 5--------------------------------
# Line chart data 
line_data = 
  tibble(
    year = 
      rep(2020:2024,5),
    Region = 
      c(rep("Region A",5),
        rep("Region B",5),
        rep("Region C",5),
        rep("Region D",5),
        rep("Target",5)),
    trips = 
      c(300,    150,    220,    260,    340,
        300,    190,    220,    400,    275,
        203,    157,    169,    223,    400,
        204,    187,    290,    325,    150,
        300,    300,    300,    300,    300)
  )

# example plot
ggplot(
  data = line_data |> filter(str_detect(Region, "Region")), 
  aes(
    x = year, 
    y = trips,
    fill = Region,
    colour = Region,
    )
  )+
  # Add line chart
  geom_line() +
  scale_x_continuous(name = NULL)+
  scale_y_continuvps(name = "Number of Trips", limits = c(0,400))+
  scale_colour_dh_line(name = NULL) +
  theme_vps_dh() 

## ----line_style, fig.width = 7, fig.height = 5--------------------------------
# example plot
last_plot() +
  guides(colour = "none") +
  # Add labels using geom_text
  geom_text(
    data =  line_data |> 
      # Filter data to only add labels for max(year)
      filter(str_detect(Region, "Region"), 
             year == max(year)),
    aes(label = Region), 
    guide = "none",
    size = 5,
    # Shift to right of x value.
    hjust = -.1) +
  # Use scale_x_continuvps to easily add space for label.
  scale_x_continuvps(expand_left = .05, expand_right = .2)
  

## ----multi_line, fig.width = 7, fig.height = 5--------------------------------
# example plot
last_plot() +
  geom_point(show.legend = FALSE) +
  scale_colour_dh_line(guide = "none", colour = "orange", gradient = TRUE) 

## ----add_gridlines, fig.width = 7, fig.height = 5-----------------------------
accident_plot +
  theme_vps_dh(show_gridlines = TRUE)

## ----col_example_text_no_label, warnings = FALSE, fig.height = 5, fig.width = 7----
ggplot2::ggplot(
  data = car_accidents,
  aes(x = month, y = accidents, fill = freeway, 
      # Add label and colour aesthetics, the latter so we can specify different colours for
      # different label/backgroud combinations
      label = freeway, colour = freeway)) +
  # Add colour = 'transparent` so geom_col doesn't pick up the values of scale_colour_manual.
  geom_col(position = position_dodge2(), colour = "transparent") +
  # Add labels, but define arbitrary low value of y to place at base of columns.
  geom_text(
    aes(y = 1), 
    # We need to set position to match geom_col()
    position = position_dodge2(width = .9), 
    vjust = 0
    ) +
  scale_x_discrete(name = NULL)+
  scale_y_continuous(name = "Number of accidents", expand = c(0,0), limits=c(0,53))+
  # Use scale fill and specify the value you want to highlight and the value to use for others
  # na.value
  scale_fill_manual(guide = "none", values = c("M3" = bv.pink), na.value = bv.smoke)+
  # Use scale colour and specify the value you want to highlight and the value to use for others
  # na.value
  scale_colour_manual(guide = "none", values = c("M3" = bv.smoke), na.value = bv.charcoal)+
  labs(title="Annual car accidents on major motor ways",
       subtitle = "Highlight using `geom_text()` and `scale_fill_manual`.")+
  theme_vps_dh()

## ----col_example_facet_no_label, warnings = FALSE, fig.height = 5, fig.width = 7----
ggplot2::ggplot(
  data = car_accidents,
  # Change our x aesthetic to freeway
  aes(x = freeway, y = accidents, fill = freeway)) +
  geom_col(position = position_dodge2()) +
  # Add facet_grid to reintroduce month, and use switch to put facet strips at bottom
  facet_grid(cols = vars(month), switch = "x") +
  scale_x_discrete(name = NULL)+
  scale_y_continuvps(name = "Number of accidents", limits = c(0,50))+
  # Use scale fill and specify the value you want to highlight and the value to use for others
  # na.value
  scale_fill_manual(guide = "none", values = c("M3" = bv.pink), na.value = bv.smoke)+
  labs(title="Annual car accidents on major motor ways",
       subtitle = "Highlight using `facet_grid()` and `scale_fill_manual`.")+
  theme_vps_dh() +
  # Adjust text size to fit axis labels
  theme(axis.text.x = element_text(size = rel(.8)))

