# preview just one chapter
file <- "Collaboration_in_Git.Rmd"
file <- "Handover.Rmd"

file <- "DM_Group_data.Rmd"
file <- "Folder_strcuture.Rmd"
bookdown::render_book(file, "bookdown::gitbook",
                      preview = TRUE)

# render the whole book
bookdown::render_book("index.Rmd", "bookdown::gitbook")

#serve the whole book to see modification on trshe fly
  dir <- getwd()
bookdown::serve_book(dir = dir, output_dir = "docs",
                     preview = TRUE)
