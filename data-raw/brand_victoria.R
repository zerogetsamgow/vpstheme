# Define and name Brand Victoria colours -------------------------------

# Primary
# Group 1
# bv.navy and bv.royal are both primary colours
bv.navy = palettes::pal_colour("#201547")
usethis::use_data(bv.navy, overwrite = TRUE)

bv.royal = palettes::pal_colour("#004c97")
usethis::use_data(bv.royal, overwrite = TRUE)

  bv.cobalt = palettes::pal_colour("#0072ce")
  usethis::use_data(bv.cobalt, overwrite = TRUE)

# Group 3
# bv.teal is the primary colour of the group
bv.cyan = palettes::pal_colour("#009ca6")
usethis::use_data(bv.cyan, overwrite = TRUE)

bv.teal = palettes::pal_colour("#00b2a9")
usethis::use_data(bv.teal, overwrite = TRUE)

bv.crystal = palettes::pal_colour("#88dbdf")
usethis::use_data(bv.crystal, overwrite = TRUE)

#Group 7
#bv.amber is the primary colour of the group
bv.orange = palettes::pal_colour("#e35205")
usethis::use_data(bv.orange, overwrite = TRUE)

bv.fire = palettes::pal_colour("#e57200")
usethis::use_data(bv.fire, overwrite = TRUE)

bv.amber = palettes::pal_colour("#ff9e1b")
usethis::use_data(bv.amber, overwrite = TRUE)

#Group 8
#bv.red is the primary colour of the group
bv.maroon = palettes::pal_colour("#8a2a2b")
usethis::use_data(bv.maroon, overwrite = TRUE)

bv.red = palettes::pal_colour("#af272f")
usethis::use_data(bv.red, overwrite = TRUE)

bv.rose = palettes::pal_colour("#d50032")
usethis::use_data(bv.rose, overwrite = TRUE)

#Group 9
#bv.purple is the primary colour of the group
bv.violet = palettes::pal_colour("#500778")
usethis::use_data(bv.violet, overwrite = TRUE)

bv.plum = palettes::pal_colour("#642667")
usethis::use_data(bv.plum, overwrite = TRUE)

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

# Secondary groups
# Group 2
bv.cerulean = palettes::pal_colour("#0090da")
usethis::use_data(bv.cerulean, overwrite = TRUE)

bv.azure = palettes::pal_colour("#00a9e0")
usethis::use_data(bv.azure, overwrite = TRUE)

bv.sky = palettes::pal_colour("#71c5e8")
usethis::use_data(bv.sky, overwrite = TRUE)

# Group 4
bv.forest = palettes::pal_colour("#00573f")
usethis::use_data(bv.forest, overwrite = TRUE)

bv.jade = palettes::pal_colour("#007b4b")
usethis::use_data(bv.jade, overwrite = TRUE)

bv.mint = palettes::pal_colour("#00b140")
usethis::use_data(bv.mint, overwrite = TRUE)


# Group 5
bv.lime = palettes::pal_colour("#78be20")
usethis::use_data(bv.lime, overwrite = TRUE)

bv.chartreuse = palettes::pal_colour("#cedc00")
usethis::use_data(bv.chartreuse, overwrite = TRUE)

bv.canary = palettes::pal_colour("#f3e500")
usethis::use_data(bv.canary, overwrite = TRUE)


#Group 6
bv.sunshine = palettes::pal_colour("#f6be00")
usethis::use_data(bv.sunshine, overwrite = TRUE)

bv.butter = palettes::pal_colour("#fdda24")
usethis::use_data(bv.butter, overwrite = TRUE)

bv.yellow = palettes::pal_colour("#fbe122")
usethis::use_data(bv.yellow, overwrite = TRUE)


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
    "secondary1" =
      c(
        "navy" = bv.navy,
        "cerulean" = bv.cerulean,
        "cyan" = bv.cyan,
        "forest" = bv.forest,
        "lime" = bv.lime,
        "sunshine" = bv.sunshine,
        "orange" = bv.orange,
        "maroon" = bv.maroon,
        "violet" = bv.violet,
        "pink" = bv.pink
      ),
    "secondary2" =
      c(
        "royal" = bv.royal,
        "azure" = bv.azure,
        "teal" = bv.teal,
        "jade" = bv.jade,
        "chartreuse" = bv.chartreuse,
        "butter" = bv.butter,
        "fire" = bv.fire,
        "red" = bv.red,
        "plum" = bv.plum,
        "blush" = bv.blush
      ),
    "secondary3" =
      c(
        "cobalt" = bv.cobalt,
        "sky" = bv.sky,
        "crystal" = bv.crystal,
        "mint" = bv.mint,
        "canary" = bv.canary,
        "yellow" = bv.yellow,
        "amber" = bv.amber,
        "rose" = bv.rose,
        "purple" = bv.purple,
        "musk" = bv.musk
      ),
   "complete" =
      c(
        "bv.navy" = bv.navy, #1
        "bv.royal" = bv.royal,
        "bv.cobalt" = bv.cobalt,
        "bv.cerulean" = bv.cerulean, #2
        "bv.azure" = bv.azure,
        "bv.sky" = bv.sky,
        "bv.cyan" = bv.cyan, #3
        "bv.teal" = bv.teal,
        "bv.crystal" = bv.crystal,
        "bv.forest" = bv.forest, #4
        "bv.jade" = bv.jade,
        "bv.mint" = bv.mint,
        "bv.lime" = bv.lime, #5
        "bv.chartreuse" = bv.chartreuse,
        "bv.canary" = bv.canary,
        "bv.sunshine" = bv.sunshine, #6
        "bv.butter" = bv.butter,
        "bv.yellow" = bv.yellow,
        "bv.orange" = bv.orange, #7
        "bv.fire" = bv.fire,
        "bv.amber" = bv.amber,
        "bv.maroon" = bv.maroon, #8
        "bv.red" = bv.red,
        "bv.rose" = bv.rose,
        "bv.violet" = bv.violet, #9
        "bv.plum" = bv.plum,
        "bv.purple" = bv.purple,
        "bv.pink" = bv.pink, #10
        "bv.blush" = bv.blush,
        "bv.musk" = bv.musk
      )
  )
usethis::use_data(bv_colours, overwrite = TRUE)
