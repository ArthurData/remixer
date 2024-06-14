#' remixerDependency
#'
#' @importFrom htmltools htmlDependency
#'
#' @return html_dependency
#'
#' @export
remixerDependency <- function() {
  htmlDependency(
    name = "remixer",
    version = "4.2.0",
    package = "remixer",
    src = "www",
    script = "remixicon.js"
  )
}
