#' icon
#'
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
