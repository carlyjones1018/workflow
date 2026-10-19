result <- sum(1:10)
print(result)

library(tidyverse)

diamonds_plot <- ggplot(diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point(alpha = 0.4, size = 0.7) +
  facet_wrap(~clarity) +
  scale_color_brewer(palette = "Set2") +
  labs(
    title = "Diamond prices rise with carat weight",
    subtitle = "Each panel shows a different clarity grade",
    x = "Carat weight",
    y = "Price (USD)",
    color = "Cut"
  ) +
  theme_minimal(base_size = 12) +
  theme(
    legend.position = "bottom",
    panel.grid.minor = element_blank(),
    strip.text = element_text(face = "bold"),
    plot.title = element_text(face = "bold")
  )

ggsave("diamonds-1.png", plot = diamonds_plot, width = 11, height = 7, dpi = 300)
