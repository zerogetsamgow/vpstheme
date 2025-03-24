
<!-- README.md is generated from README.Rmd. Please edit that file -->

# <img src="data-raw/hex-vpstheme.png" width="100" />

# vpstheme

This package is in development.

Version 2.4.0 includes useable palettes and themes for the Department of
Health and the Department of Families, Fairness and Housing as well as a
range of helper functions, these palettes and themes require refinement.

Version 2.0.0 also includes `scale_*_dh()` functions that enable the use
of the Department of Health’s palette for fills and colours in
`ggplot()` objects.

In its current form, the package is useable and provides example code to
enable others to extend `theme_vps_foundation()` and adapt
`scale_*_dh()` for other departments.

<!-- badges: start -->

![GitHub R package
version](https://img.shields.io/github/r-package/v/zerogetsamgow/vpstheme)
![GitHub last
commit](https://img.shields.io/github/last-commit/zerogetsamgow/vpstheme)
![GitHub Actions Workflow
Status](https://img.shields.io/github/actions/workflow/status/zerogetsamgow/vpstheme/r.yml)

<!-- badges: end -->

The main purpose of **vpstheme** is to enable R users in the Victorian
Public Service to use the colours and fonts defined in the [Brand
Victoria Guidelines](https://www.vic.gov.au/brand-victoria-guidelines)
to create compliant visualisations in ggplot.

## Installation

You can install the development version of **vpstheme** from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("zerogetsamgow/vpstheme")
```

## Brand Victoria

At the core of **vpstheme** are elements of Brand Victoria, including
colours, palettes and fonts.

### Brand Victoria colours

The Brand Victoria colour palette consists of ten primary colours, shown
below.

<img src="man/figures/README-bv_primary-1.png" width="100%" />

Incorporating the primary colour palette, the Brand Victoria secondary
colour palette is designed to accommodate the great range of
applications across all sectors of the brand.

The palette has been categorised in 10 colour groups, from navy to pink,
but the colours do not have to be used in these sets.

The included colours and their names, as per this package, are shown
below.

> Note, names used in this package have been selected by the package
> author. Brand Victoria colours don’t have names as such.

<img src="man/figures/README-bv_names-1.png" width="100%" />

Each colour can be referenced directly using the {bv.\*} format or via
the palette object, eg `bv_colours$primary[1]` as shown below.

``` r
bv.navy
#> <palettes_colour[1]>
#> • #201547

bv_colours$primary[2]
#> <palettes_colour[1]>
#> • #00B2A9

bv.pink
#> <palettes_colour[1]>
#> • #C63663

bv_colours$secondary2[4]
#> <palettes_colour[1]>
#> • #007B4B
```

### VIC font

VIC is the brand font to be used across all communications. The `.otf`
files for VIC font are saved in this package, but are not currently
available for use.

In place of VIC font, **vpstheme** uses
[Rubik](https://fonts.google.com/specimen/Rubik) which is loaded on
attachment using the **systemfonts** package.

## Departmental themes and colours

### Colour palettes

**vpstheme** utilises the Brand Victoria colours defined in the package
to create Departmental palettes. Currently, the package includes
palettes for:

- [Department of Health](https://www.health.vic.gov.au/) - `dh_colours`
  is based on the departments standard templates, with a `primary` and
  `secondary` colour for each template and `tints` for each primary
  colour.

``` r
scales::show_col(unlist(dh_colours), ncol = 4)
```

<img src="man/figures/README-dh_colours-1.png" width="700px" height="400px" />

- [Department of Families, Fairness and
  Housing](https://www.dffh.vic.gov.au/) - `dffh_colours` is based on
  the departments standard templates, with a `primary` and `secondary`
  colour for each template and `tints` for each primary colour.

``` r
scales::show_col(unlist(dffh_colours[1:3]), ncol = 4)
```

<img src="man/figures/README-dffh_colours-1.png" width="700px" height="400px" />

``` r
scales::show_col(unlist(dffh_colours[4:7]), ncol = 4)
```

<img src="man/figures/README-dffh_tints-1.png" width="700px" height="400px" />

### Themes

***vpstheme*** is designed to enable R users in the VPS to produce
***ggplot2*** products that comply with departmental style guides
simply.

To enable this, ***vpstheme*** exports departmental themes that use the
naming convention `theme_vps_*()`, where `*` denotes the department.

As well as utilising departmental colours these themes are rendered
using the `Rubik` font.

Currently, the package includes themes for:

- [Department of Health](https://www.health.vic.gov.au/) -
  `theme_vps_dh()`.

``` r
library(ggplot2)
# Create plot with theme, scales and labs, then coord_flip()
ggplot(
  data = airport_flights, 
  aes(
    x = reorder(city, flights), 
    y = flights)) +
  geom_col(aes(fill = city)) +
 
  geom_text(
    aes(label = flights/1e6,
        y = 2e6),
    colour = bv.smoke,
    hjust = 1, size = 5) +
  coord_flip() +
  # Use scale_fill_manual to highlight Milan
  scale_fill_manual(values = c("Milan"=bv.pink), guide = "none") +
  scale_x_discrete(name = NULL) +
  scale_y_continuvps(
    name = "Flights per year, millions", 
    labels = scales::label_number(scale = 1/1e6),  
    limits = c(0,50e6)) +
  labs(title="Flights at major international airports")+
  theme_vps_dh()
```

<img src="man/figures/README-theme_vps_dh-1.png" width="700px" height="400px" />

- [Department of Families, Fairness and
  Housing](https://www.dffh.vic.gov.au/) - `theme_vps_dffh()`.

``` r
ggplot(
  data = line_data, 
  aes(
    x = year, 
    y = trips,
    fill = Region,
    colour = Region,
    )
  ) +
  # Add line chart
  geom_line() +
   # Add labels using geom_text
  geom_text(
    data = line_data |> 
      # Filter data to only add labels for max(year)
      dplyr::filter(year == max(year)),
    aes(label = Region), 
    size = 5,
    # Shift to right of x value.
    hjust = -.1) +
  # Use scale_x_continuvps to easily add space for label.
  scale_x_continuvps(name = NULL, expand_left = .05, expand_right = .2) +
  scale_y_continuvps(name = "Number of Trips", limits = c(0,500)) +
  scale_colour_dffh_line(name = NULL, guide = "none") +
  theme_vps_dffh()
```

<img src="man/figures/README-theme_vps_dffh-1.png" width="700px" height="400px" />

The themes at present largely only differ in the background colours that
can be specified.

- the base_colour parameter of `theme_vps_dh` can take values `pink`,
  `orange`, `red` and `blue` that correspond to the department’s primary
  colours.

- the base_colour parameter of `theme_vps_dffh` can take values `teal`,
  `mint`, `blue` and `purple` that correspond to the department’s core
  colours.

For example:

``` r
ggplot(
  data = airport_flights, 
  aes(
    x = reorder(city, flights), 
    y = flights)) +
  geom_col(aes(fill = city)) +
  geom_text(
    aes(label = flights/1e6,
        colour = city,
        y = 2e6),
    hjust = 1, size = 5) +
  coord_flip() +
  # Use scale_fill_manual to highlight Milan
  scale_fill_manual(values = c("Milan"=bv.charcoal), guide = "none", na.value = bv.smoke) +
  scale_colour_manual(values = c("Milan" = bv.smoke), guide = "none", na.value = bv.charcoal) +
  scale_x_discrete(name = NULL) +
  scale_y_continuvps(
    name = "Flights per year, millions", 
    labels = scales::label_number(scale = 1/1e6),  
    limits = c(0,50e6)) +
  labs(title="Flights at major international airports")+
  theme_vps_dh("pink")
```

<img src="man/figures/README-theme_vps_dffh_teal-1.png" width="700px" height="400px" />

### `theme_foundation`

Each theme is built on `theme_vps_foundation`.

This theme is designed to be a foundation from which to build new
themes, and not meant to be used directly. `theme_vps_foundation()` is a
complete theme with only minimal number of elements defined. It is
easier to create new themes by extending this one rather than
`theme_gray()` or `theme_bw()` from ***ggplot2***, because those themes
define elements deep in the hierarchy.

This theme takes {\[ggthemes\]{theme_foundation}()} and sets base text
family and size to `Rubik` and `15` as well as setting margins and other
parameters to match departmental guidelines.

## Scales

### Fill and colour

***vpstheme*** includes two functions that enable the use of
`dh_colours` as fills and colours in `ggplot()` objects. These functions
allow the user to easily use the palettes from `dh_colours` and both
operate as wrappers around `scale_*_manual()`.

`scale_colour_dh()` is used in the example above. The code for
`scale_*_dh()` provides examples for others who wish to create similar
functions for other departments.

`scale_colour_dh_line()` and `scale_colour_dffh_line()` provide
departmental style guide compliant colours for line charts. Refer to the
vignette for more information.

### Continous axes scales

***vpstheme*** includes two functions - `scale_y_continuvps()` and
`scale_x_continuvps()` - that enable you to easily use default expansion
values for continuous scales in `ggplot()` objects that allow. These
functions allow the user to easily use the palettes from `dh_colours`
and both operate as wrappers around `scale_*_manual()`.

## Functions

***vpstheme*** includes a small number of useful functions. These
include:

- `clean_vic_lga()` based on the
  [clean_state](https://runapp-aus.github.io/strayr/reference/clean_state.html)
  function from the ***strayr*** package this function cleans Victorian
  local government names into consistent formats to help with formatting
  and joining data.

- `coord_vps_map()` quickly limit the extent of maps to the coordinates
  of Victoria or Melbourne. The former taken from
  [LandVic](https://www.land.vic.gov.au/maps-and-spatial/first-time-here/geographic-facts)
  and the latter author defined.

- `make_tints` allows you to simply create Brand Victoria compliant tint
  colour palettes ranging from a specified start colour to white or
  black in five linear increments. White/black are then excluded from
  the palette to leave you with four lighter/darker tints of the
  original colour.

## Acknowledgement

**vpstheme** was created with the **palettes** package, which provides a
comprehensive library for colour vectors and colour palettes using a new
family of colour classes (`palettes_colour`, and `palettes_palette`)
that always print as hex codes with colour previews.

See the following vignettes to learn how to use palletes with other
packages:

- [Using palettes with
  ggplot2](https://mccarthy-m-g.github.io/palettes/articles/ggplot2.html)

- [Compatibility with other colour
  packages](https://mccarthy-m-g.github.io/palettes/articles/compatibility.html)
