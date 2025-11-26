# Define Department of Health colours using Brand Victoria colours
dh_colours =
  palettes::pal_palette(
    "primary" =
      c(
        bv.pink,
        bv.orange,
        bv.royal,
        bv.red
      ),
    "secondary" =
      c(
        bv.blush,
        bv.amber,
        bv.cobalt,
        bv.rose),
    "tints_pink" =
      vpstheme::make_tints(bv.pink),
    "tints_dark" =
      vpstheme::make_tints(bv.pink,bv.black),
    "tints_orange" =
      vpstheme::make_tints(bv.orange),
    "tints_blue" =
      vpstheme::make_tints(bv.cobalt)
  )
usethis::use_data(dh_colours, overwrite = TRUE)

#' Define Department of Families, Fairness and Housing colours

dffh_colours =
  palettes::pal_palette(
    "core" =
      c(
        bv.teal,
        bv.jade,
        bv.cerulean,
        bv.purple
      ),
    "support" =
      c(
        bv.navy,
        bv.charcoal,
        bv.smoke,
        bv.white),
    "extended" =
      c(
        bv.orange,
        bv.pink,
        bv.red),
    "tints_teal" =
      vpstheme::make_tints(bv.teal),
    "tints_green" =
      vpstheme::make_tints(bv.jade),
    "tints_blue" =
      vpstheme::make_tints(bv.cerulean),
    "tints_purple" =
      vpstheme::make_tints(bv.purple)
  )

usethis::use_data(dffh_colours, overwrite = TRUE)


# Define Department of Justice and Community Safety colours using Brand Victoria colours
djcs_colours =
  palettes::pal_palette(
    "primary" =
      c(
        bv.navy,
        bv.sky,
        bv.violet,
        bv.cobalt,
        bv.charcoal,
        bv.smoke),
    "tints_navy" =
      vpstheme::make_tints(bv.navy),
    "tints_purple" =
      vpstheme::make_tints(bv.violet),
    "tints_cobalt" =
      vpstheme::make_tints(bv.cobalt),
    "tints_charcoal" =
      vpstheme::make_tints(bv.charcoal)
  )
usethis::use_data(djcs_colours, overwrite = TRUE)

