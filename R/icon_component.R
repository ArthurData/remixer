#' icon
#'
#' @name icon
#' @description
#' Remix Icon is a set of open-source neutral-style system symbols for designers and developers.
#'
#' @details
#' ** { size } Integer. Set custom `width` and `height`
#' ** { color } Character. Set `fill` color
#' ** { className } Character. Add custom class name
NULL

#' @importFrom shiny.react reactElement asProps
#'
#' @noRd
icon <- function(name) {
  function(...) {
    reactElement(
      module = "remixicon",
      name = name,
      props = asProps(...),
      deps = remixerDependency()
    )
  }
}
