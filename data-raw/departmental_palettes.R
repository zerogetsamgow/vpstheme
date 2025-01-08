# Define Department of Health colours using Brand Victoria colours
dh_colours =
  palettes::pal_palette(
    "primary" =
      c(
        bv.pink,
        bv.maroon,
        bv.orange,
        bv.royal
      ),
    "secondary" =
      c(
        bv.blush,
        bv.rose,
        bv.amber,
        bv.cobalt),
    "tints_pink" =
      make_tints(bv.pink),
    "tints_red" =
      make_tints(bv.red),
    "tints_orange" =
      make_tints(bv.orange),
    "tints_blue" =
      make_tints(bv.cobalt)
  )
usethis::use_data(dh_colours, overwrite = TRUE)

#' Define Department of Families, Fairness and Housing colours

dffh_colours =
  palettes::pal_palette(
    "core" =
      c(
        bv.teal,
        bv.mint,
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
      make_tints(bv.teal),
    "tints_green" =
      make_tints(bv.mint),
    "tints_blue" =
      make_tints(bv.cerulean),
    "tints_purple" =
      make_tints(bv.purple)
  )

usethis::use_data(dffh_colours, overwrite = TRUE)
