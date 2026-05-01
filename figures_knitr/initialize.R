# Initialize R for knitr.

library(tidyverse)
library(knitr)
library(xtable)
library(gridExtra)
library(latex2exp)

# This must be run from within the git repo.
git_repo_loc <- system("git rev-parse --show-toplevel", intern=TRUE)
paper_path <- file.path(git_repo_loc, "paper")
script_path <- file.path(paper_path, "figures_knitr")
data_path <- file.path(script_path, "data")


# Set some figure defaults.
opts_chunk$set(fig.pos='!h', fig.align='center', dev='png', dpi=300)
opts_chunk$set(echo=knitr_debug, message=knitr_debug, warning=knitr_debug)

# Set the default ggplot theme.
theme_set(theme_bw())

source(file.path(script_path, "utils_lib.R"))
