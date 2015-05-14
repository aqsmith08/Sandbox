library(ggvis)

# Both year_num and y are num format
year_num = c(1999, 2000, 2001, 2002, 2003)
y = c(234, 345, 456, 567, 678)

df = data.frame(year_num, y)

# Create a year_char column so it plays nice in a ggvis plot
df$year_char <- as.character(year_num)

# It works!
# Note - It works because I ordered it nicely when I created year_num
# You'd probably have to use dplyr and sort everything if your Year column
# isn't in ascending order.
df %>%
  ggvis(x = ~year_char, y = ~y) %>%
  layer_points()

# The num format doesn't play nice. Example only.
'''
df %>%
  ggvis(x = ~year_num, y = ~y) %>%
  layer_points()
'''