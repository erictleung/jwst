# Setup ----

library(imgpalr) # CRAN v0.3.1
library(here)    # CRAN v1.0.1

# Make colors reproducible
set.seed(1)


# Read in Files ----

# https://www.nasa.gov/webbfirstimages
x <- paste0("man/figures/", list.files(here("man", "figures")))


# Make Color Palettes ----

# Carina
c <- image_pal(
  x[1],
  type = "div",
  # Focus on bright, saturated colors
  saturation = c(0.75, 1),
  brightness = c(0.75, 1),
  plot = TRUE
)
cat(paste0(glue::glue('"{c}"'), collapse = ", "))


# SMACS
c <- image_pal(
  x[2],
  type = "div",
  # Focus on bright, saturated colors
  saturation = c(0.75, 1),
  brightness = c(0.75, 1),
  plot = TRUE
)
cat(paste0(glue::glue('"{c}"'), collapse = ", "))

# SMACS
c <- image_pal(
  x[2],
  type = "div",
  # Focus on bright, saturated colors
  saturation = c(0.75, 1),
  brightness = c(0.75, 1),
  plot = TRUE
)
cat(paste0(glue::glue('"{c}"'), collapse = ", "))

# Souther Ring Nebula
c <- image_pal(
  x[3],
  type = "div",
  # Focus on bright, saturated colors
  saturation = c(0.75, 1),
  brightness = c(0.75, 1),
  plot = TRUE
)
cat(paste0(glue::glue('"{c}"'), collapse = ", "))
c <- image_pal(
  x[4],
  type = "div",
  # Focus on bright, saturated colors
  saturation = c(0.75, 1),
  brightness = c(0.75, 1),
  plot = TRUE
)
cat(paste0(glue::glue('"{c}"'), collapse = ", "))

# Stephan's Quintet
c <- image_pal(
  x[5],
  type = "div",
  # Focus on bright, saturated colors
  saturation = c(0.75, 1),
  brightness = c(0.75, 1),
  plot = TRUE
)
cat(paste0(glue::glue('"{c}"'), collapse = ", "))


# Reset seed ----
rm(.Random.seed, envir = globalenv())
