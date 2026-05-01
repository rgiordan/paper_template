# Use this script to debug and edit the knit graphs without re-compiling in latex.

base_dir <- system("git rev-parse --show-toplevel", intern=TRUE)
paper_directory <- file.path(base_dir, "paper")
knitr_debug <- FALSE # Set to true to see error output
cache <- FALSE

setwd(base_dir)
source(file.path(paper_directory, "figures_knitr/initialize.R"))
source(file.path(script_path, "load_data.R"))
source(file.path(script_path, "define_macros.R"))


source(file.path(script_path, "example_graph.R"), print.eval=TRUE)



