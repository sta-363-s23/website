library(hexSticker)
library(tidyverse)
library(palmerpenguins)


p <- ggplot(data = penguins,
            aes(x = flipper_length_mm,
                y = bill_length_mm)) +
  geom_point(aes(color = species, 
                 shape = species),
             size = 1,
             alpha = 0.8) +
  geom_smooth(method = "lm", se = FALSE, aes(color = species)) +
  theme_minimal() +
  scale_color_manual(values = c("darkorange","purple","cyan4")) +
  labs(x = "",
       y = "") +
  theme(legend.position = "none",
        axis.text = element_blank(),
        panel.grid = element_blank())

sticker(p,
        package = "STA 363", 
        p_size = 20,
        s_x = 1,
        s_y = .75,
        s_width = 2,
        s_height = 1.2,
        filename = "img/favicon.png",
        h_color = "#BB2649",
        h_fill = "white",
        p_color = "#BB2649")
