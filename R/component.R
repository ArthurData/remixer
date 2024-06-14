#' component
#'
#' @importFrom shiny.react reactElement asProps
#'
#' @noRd
component <- function(name) {
  function(...) {
    reactElement(
      module = "remixicon",
      name = name,
      props = asProps(...),
      deps = remixerDependency()
    )
  }
}
