# Define and name Brand Victoria colours -------------------------------

# Primary
# Group 1
# bv.navy and bv.royal are both primary colours, bv.cobalt is part of the group
bv.navy = palettes::pal_colour("#201547")
usethis::use_data(bv.navy, overwrite = TRUE)

bv.royal = palettes::pal_colour("#004c97")
usethis::use_data(bv.royal, overwrite = TRUE)

  bv.cobalt = palettes::pal_colour("#0072ce")
  usethis::use_data(bv.cobalt, overwrite = TRUE)

# Group 3
# bv.teal is the primary colour of the group, other colours to be added
bv.teal = palettes::pal_colour("#00b2a9")
usethis::use_data(bv.teal, overwrite = TRUE)

#Group 7
#bv.amber is the
bv.amber = palettes::pal_colour("#ff9e1b")
usethis::use_data(bv.amber, overwrite = TRUE)

#Group 8
bv.red = palettes::pal_colour("#af272f")
usethis::use_data(bv.red, overwrite = TRUE)

#Group 9
bv.purple = palettes::pal_colour("#87189d")
usethis::use_data(bv.purple, overwrite = TRUE)

# Neutrals
bv.black = palettes::pal_colour("#000000")
usethis::use_data(bv.black, overwrite = TRUE)

bv.charcoal = palettes::pal_colour("#53565a")
usethis::use_data(bv.charcoal, overwrite = TRUE)

bv.smoke = palettes::pal_colour("#d9d9d6")
usethis::use_data(bv.smoke, overwrite = TRUE)

bv.white = palettes::pal_colour("#ffffff")
usethis::use_data(bv.white, overwrite = TRUE)

# Secondary
# Group 2
bv.cerulean = palettes::pal_colour("#0090da")
usethis::use_data(bv.cerulean, overwrite = TRUE)
bv.sky = palettes::pal_colour("#71c5e8")
usethis::use_data(bv.sky, overwrite = TRUE)

# Group 4
bv.forest = palettes::pal_colour("#00573f")
usethis::use_data(bv.forest, overwrite = TRUE)
bv.mint = palettes::pal_colour("#00b140")
usethis::use_data(bv.mint, overwrite = TRUE)


# Group 5
bv.lime = palettes::pal_colour("#78be20")
usethis::use_data(bv.lime, overwrite = TRUE)

#Group 6
bv.sunshine = palettes::pal_colour("#f6be00")
usethis::use_data(bv.sunshine, overwrite = TRUE)

# Group 7
bv.orange = palettes::pal_colour("#e35205")
usethis::use_data(bv.orange, overwrite = TRUE)

# Group 8
bv.maroon = palettes::pal_colour("#8a2a2b")
usethis::use_data(bv.maroon, overwrite = TRUE)

bv.rose = palettes::pal_colour("#d50032")
usethis::use_data(bv.rose, overwrite = TRUE)

#Group 10
bv.pink = palettes::pal_colour("#c63663")
usethis::use_data(bv.pink, overwrite = TRUE)
bv.blush = palettes::pal_colour("#ef4a81")
usethis::use_data(bv.blush, overwrite = TRUE)
bv.musk= palettes::pal_colour("#e89cae")
usethis::use_data(bv.musk, overwrite = TRUE)

bv_colours =
  palettes::pal_palette(
    #primary colours
    "primary" =
      c(
        "navy" = bv.navy,
        "teal" = bv.teal,
        "royal" = bv.royal,
        "amber" = bv.amber,
        "red" = bv.red,
        "purple" = bv.purple,
        "charcoal" = bv.charcoal,
        "smoke" = bv.smoke,
        "black" = bv.black,
        "white" = bv.white
      ),
    #secondary colours
    "secondary" =
      c(
        "navy" = bv.navy,
        "cerulean" = bv.cerulean,
        "teal" = bv.teal,
        "forest" = bv.forest,
        "lime" = bv.lime,
        "sunshine" = bv.sunshine,
        "orange" = bv.orange,
        "maroon" = bv.maroon,
        "purple" = bv.purple,
        "pink" = bv.pink
      ),
   "complete" =
      c(
        "bv.navy" = bv.navy,
        "bv.royal" = bv.royal,
        "bv.cobalt" = bv.cobalt,
        "bv.cerulean" = bv.cerulean,
        "bv.sky" = bv.sky,
        "bv.teal" = bv.teal,
        "bv.forest" = bv.forest,
        "bv.mint" = bv.mint,
        "bv.sunshine" = bv.sunshine,
        "bv.orange" = bv.orange,
        "bv.amber" = bv.amber,
        "bv.maroon" = bv.maroon,
        "bv.red" = bv.red,
        "bv.rose" = bv.rose,
        "bv.purple" = bv.purple,
        "bv.pink" = bv.pink,
        "bv.blush" = bv.blush,
        "bv.musk" = bv.musk
      )
  )
usethis::use_data(bv_colours, overwrite = TRUE)
