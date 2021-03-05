# aucolr

This is "aucolr" a package containing the official colors of aarhus university.
The package is created for personal use, but can be freely used and distributed.
aucolr is not affiliated with the Aarhus University Communication Department, but follows their guidelines.


Source of hex codes: https://medarbejdere.au.dk/en/administration/communication/guidelines/guidelinesforcolours/.
This site can also be used as a reference for the colors.

The package contains 4 functions and 2 data frames. Everything is written in base-R to minimize dependencies.


## Functions

The main function is *picker*. 
This takes a character vector containing names of the AU colors, and returns a character vector of the corresponding  hex codes.
By default, this function returns a single code for AU blue.


The three palette functions (palet, paletdark, paletlong) all return a character vector of the corresponding colors. 
The order of the colors correspond to the order on the web page, for a custom order use *picker*.

## Data frames

Additionally, the package contains two data frames, colr and colrlong. These contain all the hex codes in a wide and long format.
