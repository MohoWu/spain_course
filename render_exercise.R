library(rmarkdown)

# render quiz
render("exercise.Rmd", 
       params = list(eval = FALSE,
                     echo = FALSE),
       output_format = prettydoc::html_pretty(
         highlight = "github",
         theme = "cayman",
         toc = TRUE,
         toc_float = FALSE,
         number_sections = TRUE,
         pandoc_args = pandoc_variable_arg("title", "Quiz")),
       output_file = "Quiz.html")

render("exercise.Rmd", 
       params = list(eval = TRUE,
                     echo = TRUE),
       output_format = prettydoc::html_pretty(
         highlight = "github",
         theme = "cayman",
         toc = TRUE,
         toc_float = FALSE,
         number_sections = TRUE,
         pandoc_args = pandoc_variable_arg("title", "Solution")),
       output_file = "Solution.html")
