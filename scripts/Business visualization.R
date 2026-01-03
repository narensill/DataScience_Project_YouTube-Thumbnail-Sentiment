# =========================================================
# Business visualization (flow diagram)
# =========================================================
flow_data <- data.frame(
  x = c(1, 2, 3, 4),
  y = c(1, 1, 1, 1),
  label = c(
    "Title Design",
    "Viewer Attention",
    "Higher Clicks",
    "More Views"
  )
)

ggplot(flow_data, aes(x, y)) +
  geom_text(aes(label = label), size = 6, fontface = "bold") +
  geom_segment(aes(x = 1.2, xend = 1.8, y = 1, yend = 1),
               arrow = arrow(length = unit(0.3, "cm"))) +
  geom_segment(aes(x = 2.2, xend = 2.8, y = 1, yend = 1),
               arrow = arrow(length = unit(0.3, "cm"))) +
  geom_segment(aes(x = 3.2, xend = 3.8, y = 1, yend = 1),
               arrow = arrow(length = unit(0.3, "cm"))) +
  theme_void() +
  xlim(0.5, 4.5)