
# Load into an environment rather than the global space.
load_into_environment <- function(filename) {
  my_env <- environment()
  load(filename, envir=my_env)
  return(my_env)
}




# Width in rendered units.  High numbers give smaller fonts on the images.
# Setting base_image_width to the actual width of a page of paper (8.5)
# lets ggplot pick what it thinks is best.

# Aspect ratio is height / width
base_aspect_ratio <- 0.45
base_image_width <- 6.5

set_image_size <- function(aspect_ratio, image_width=base_image_width) {
  # Set the size on the page
  ow <- "0.98\\linewidth"
  oh <- sprintf("%0.3f\\linewidth", aspect_ratio * 0.98)

  # Set the size in rendering
  fw <- image_width
  fh <- image_width * aspect_ratio

  opts_chunk$set(out.width=ow,
                 out.height=oh,
                 fig.width=fw,
                 fig.height=fh)
}


set_default_image_size <- function() {
  set_image_size(
    aspect_ratio=base_aspect_ratio, image_width=base_image_width)
}

# Default to a full image.
set_default_image_size()


