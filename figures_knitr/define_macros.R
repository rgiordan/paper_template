# Use define_macro here to set latex macros to use R quantities
# in the text.


# Define LaTeX macros that will let us automatically refer
# to simulation and model parameters.
define_macro <- function(macro_name, value, digits=3) {
  value_string <- format(value, big.mark=",", digits=digits, scientific=FALSE)
  cat("\\newcommand{\\", macro_name, "}{", value_string, "}\n", sep="")
}

define_macro("NumRows", nrow(example_df))