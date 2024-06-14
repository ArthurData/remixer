test_that("generate_icons works", {
  icons_file <- tempfile(fileext = ".R")

  generate_icons(
    input_file = system.file(
      "reprex",
      "index.reprex.d.ts",
      package = "remixer"
    ),
    output_file = icons_file
  )

  expect_equal(
    object = readLines(icons_file),
    expected = readLines(
      system.file(
        "reprex",
        "expected_output.R",
        package = "remixer"
      )
    )
  )
})
