#' @noRd
generate_icons <- function(input_file, output_file) {
  lines <- readLines(input_file)
  lines <- rev(lines)[1:10]

  export_line <- lines[grep("^export \\{", lines)]

  icon_line <- gsub(
    "export \\{.* type RemixiconComponentType,\\s*|\\s*\\};",
    "",
    export_line
  )

  icon_names <- unlist(strsplit(icon_line, ",\\s*"))

  output_lines <- c()

  for (name in icon_names) {
    output_lines <- c(
      output_lines,
      sprintf("#' @rdname icon\n#' @export\n%s <- icon(\"%s\")\n", name, name)
    )
  }

  writeLines(output_lines, output_file)
  invisible(output_file)
}
