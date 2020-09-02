# This is "aucolr" a package containing the official colors of aarhus university.
# The package is created for personal use, but can be freely used and distributed.
# aucolr is not affiliated with the Aarhus University Communication depatment, but follows their guidelines
# Source of hex codes: https://medarbejdere.au.dk/en/administration/communication/guidelines/guidelinesforcolours/


#' Wide data frame of AU colors
#'
#' Data frame of AU colors in wide format. Light (standard) and dark in separate columns.
#'
#' @export
colr <- data.frame(
  name = c(
    "blue",
    "purple",
    "cyan",
    "turquoise",
    "green",
    "yellow",
    "orange",
    "red",
    "magenta",
    "grey"
  ),
  light = c(
    "#003d73", # blue
    "#655a9f", # purple
    "#37a0cb", # cyan
    "#00aba4", # turquoise
    "#8bad3f", # green
    "#fabb00", # yellow
    "#ee7f00", # orange
    "#e2001a", # red
    "#e2007a", # magenta
    "#878787" # grey
  ),
  dark = c(
    "#002546", # blue
    "#281c41", # purple
    "#003e5c", # cyan
    "#004543", # turquise
    "#425821", # green
    "#634b03", # yellow
    "#5f3408", # orange
    "#5b0c0c", # red
    "#5f0030", # magenta
    "#4b4b4a" # grey
  )
)

#' Long data frame of AU colors
#'
#' Data frame of AU colors in long format. Light (standard) and dark in same column.
#'
#' @export
colrlong <- data.frame(
  name = c(
    "blue",
    "purple",
    "cyan",
    "turquoise",
    "green",
    "yellow",
    "orange",
    "red",
    "magenta",
    "grey",
    "dark blue",
    "dark purple",
    "dark cyan",
    "dark turquoise",
    "dark green",
    "dark yellow",
    "dark orange",
    "dark red",
    "dark magenta",
    "dark grey"
  ),
  light = c(
    "#003d73", # blue
    "#655a9f", # purple
    "#37a0cb", # cyan
    "#00aba4", # turquoise
    "#8bad3f", # green
    "#fabb00", # yellow
    "#ee7f00", # orange
    "#e2001a", # red
    "#e2007a", # magenta
    "#878787", # grey
    "#002546", # dark blue
    "#281c41", # dark purple
    "#003e5c", # dark cyan
    "#004543", # dark turquise
    "#425821", # dark green
    "#634b03", # dark yellow
    "#5f3408", # dark orange
    "#5b0c0c", # dark red
    "#5f0030", # dark magenta
    "#4b4b4a" # dark grey
  )
)


#' AU standard color palette
#'
#' Palette of all AU standard colors, printet as character vector. Does not take any arguments.
#'
#' @return
#' @export
palet <- function() {
  as.character(
    colr[[2]]
  )
}

#' AU dark color palette
#'
#' Palette of all AU dark colors, printet as character vector. Does not take any arguments.
#'
#' @return A vector of dark color hex codes.
#' @export
paletdark <- function() {
  as.character(
    colr[[3]]
  )
}

#' AU color palette, standard followed by dark
#'
#' Palette of all AU colors, printet as character vector. Does not take any arguments.
#'
#' @return A vector of all color hex codes.
#' @export
paletlong <- function() {
  as.character(
    colrlong[[2]]
  )
}


#' Color picker
#'
#' Color picker, takes a vector of colornames and returns a vector of hex codes.
#' Defaults to AU blue.
#' Not case sensitive.
#'
#' @param x A vector of color names as specified on the AU colors webpage. Dark versions are named "dark [color]".
#' @return A vector of hex codes for the specified colors
#' @export
picker <- function(x = c("blue")) {
  x <- tolower(x)
  x <- gsub("gray", "grey", x)
  x <- gsub("dark ?", "dark ", x)
  colz <- c()
  for(i in x){
    colz[length(colz)+1] <-  as.character(
      subset(colrlong, name==paste0(i))[,2]
    )
  }
  colz
}

