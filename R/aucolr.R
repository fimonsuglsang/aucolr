# This is "aucolr" a package containing the official colors of aarhus university.
# The package is created for personal use, but can be freely used and distributed.
# aucolr is not affiliated with the Aarhus University Communication depatment, but follows their guidelines
# Source of hex codes: https://medarbejdere.au.dk/en/administration/communication/guidelines/guidelinesforcolours/


#' Colr
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

#' Colrlong
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


#' Pallete
#'
#' Pallette of all light colors, printet as character vector. Does not take any arguments.
#'
#' @return A vector of light color hex codes.
#' @export
pallet <- function() {
  as.character(
    colr[[2]]
  )
}

#' Pallete dark
#'
#' Pallette of all dark colors, printet as character vector. Does not take any arguments.
#'
#' @return A vector of dark color hex codes.
#' @export
palletdark <- function() { #pallette of all dark colors, printet as character vector
  as.character(
    colr[[3]]
  )
}

#' Pallete long
#'
#' Pallette of all colors, printet as character vector. Does not take any arguments.
#'
#' @return A vector of all color hex codes.
#' @export
palletlong <- function() { #pallette of all colors, printet as character vector
  as.character(
    colrlong[[2]]
  )
}


#' Picker
#'
#' Color picker, takes a vector of colornames and returns a hex codes.
#' Defaults to AU blue.
#' All color names need to be lower case
#'
#' @param x A vector of color names as specified on the AU colors webpage. Dark versions a names "dark [color]". Only takes lower case names.
#' @return A vector of hex codes for the specified colors
#' @export
picker <- function(x = c("blue")) { #
  list <- c()
  for(i in x){
    list[length(list)+1] <-  as.character(
      subset(colrlong, name==paste0(i))[,2]
    )
  }
  list
}

