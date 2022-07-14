#' Complete list of palettes
#'
#' Use \code{\link{jwst}} to construct palettes of desired length.
#'
#' @export
jwst_palettes <- list(
  carina = c(
    "#A95F34",
    "#BE8766",
    "#D3AF99",
    "#E9D7CC",
    "#FFFFFF",
    "#C9D9EA",
    "#93B3D5",
    "#5E8DC0",
    "#2968AC"
  ),
  smacs = c(
    "#533F33",
    "#7E6F66",
    "#A99F99",
    "#D3CFCC",
    "#FFFFFF",
    "#CCCACF",
    "#99959F",
    "#65606F",
    "#332C40"
  ),
  southern_nebula_1 = c(
    "#632D09",
    "#8A6146",
    "#B19684",
    "#D8CAC1",
    "#FFFFFF",
    "#D4C5C1",
    "#A98C83",
    "#7E5245",
    "#541908"
  ),
  southern_nebula_2 = c(
    "#1D254A",
    "#555B77",
    "#8E92A4",
    "#C6C8D1",
    "#FFFFFF",
    "#E8D1CE",
    "#D1A39E",
    "#BA756D",
    "#A3483D"
  ),
  stephans_quintet = c(
    "#573727",
    "#81695D",
    "#AB9B93",
    "#D5CDC9",
    "#FFFFFF",
    "#D3CACF",
    "#A7959F",
    "#7B606F",
    "#4F2B3F"
  )
)


#' jwst palette generator
#'
#' Function derived from https://github.com/ciannabp/inauguration with minor
#' changes.
#'
#' @param n Number of colors desired. All palettes have 9 colors. Most color
#'   schemes are derived from If omitted, uses all colors.
#' @param name Name of desired palette. Choices are:
#'   \code{carina},
#'   \code{smacs},
#'   \code{souther_nebula_1},
#'   \code{souther_nebula_2},
#'   \code{stephans_quintet}
#' @return A vector of colors.
#' @export
#' @keywords colors
#' @examples
#' jwst("carina")
jwst <- function(name, n) {
  pal <- jwst_palettes[[name]]

  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- pal[1:n]

  structure(out, class = "palette", name = name)
}

#' @export
print.palette <- function(x, ...) {
  # Code source:
  # https://github.com/ciannabp/inauguration

  n <- length(x)
  old <- graphics::par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(graphics::par(old))

  graphics::image(
    1:n,
    1,
    as.matrix(1:n),
    col = x,
    ylab = "",
    xaxt = "n",
    yaxt = "n",
    bty = "n"
  )

  graphics::rect(0,
       0.9,
       n + 1,
       1.1,
       col = grDevices::rgb(1, 1, 1, 0.8),
       border = NA)
  graphics::text((n + 1) / 2,
       1,
       labels = attr(x, "name"),
       cex = 1,
       col = "#32373D"
  )
}

