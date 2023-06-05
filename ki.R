ki_color_palette_labelled <- c("Mörk plommon" = "#4F0433",
                      "Orange" = "#FF876F",
                      "Ljusorange" = "#FEEEEB",
                      "Ljusblå" = "#EDF4F4",
                      "Plommon (logotypfärg)" = "#870052",
                      "Mörk orange" = "#B84145",
                      "Mörkblå" = "#002C34",
                      "Blå" = "#4DB5BC")

ki_color_palette <- c("#4F0433",
                      "#FF876F",
                      "#FEEEEB",
                      "#EDF4F4",
                      "#870052",
                      "#B84145",
                      "#002C34",
                      "#4DB5BC")

# DM Sans
library(showtext)
## Loading Google fonts (https://fonts.google.com/)
font_add_google("DM Sans")
## Automatically use showtext to render text
showtext_auto()

theme_ki <- function(fontfamily = "DM Sans", axisSize = 13, titleSize = 15, subtitleSize = 12,
                       margins = 12, axisFace = "plain", stripSize = 11,
                       panelDist = 0.6, legendSize = 11, legendTsize = 11) {
  theme_minimal() +
    theme(
      text = element_text(family = fontfamily),
      plot.title = element_text(
        family = fontfamily,
        size = titleSize
      ),
      plot.subtitle = element_text(
        family = fontfamily,
        size = subtitleSize,
        face = "bold"
      ),
      axis.title.x = element_text(
        margin = margin(t = margins),
        size = axisSize
      ),
      axis.title.y = element_text(
        margin = margin(r = margins),
        size = axisSize
      ),
      axis.title = element_text(
        face = axisFace
      ),
      plot.caption = element_text(
        face = "italic"
      ),
      legend.text = element_text(family = fontfamily,
                                 size = legendSize),
      legend.title = element_text(family = fontfamily,
                                  size = legendTsize),
      strip.text = element_text(size = stripSize),
      legend.background = element_rect(color = "lightgrey"),
      strip.background = element_rect(color = "lightgrey"),
      panel.spacing = unit(panelDist, "cm", data = NULL),
      panel.border = element_rect(color = "grey", fill = NA)
    )
}

### Add this line to a ggplot to get KI colors:
# + scale_color_manual(aesthetics = c("fill","color"), values = ki_color_palette)

### These rows are optional for changing fonts for geom_text() and geom_text_repel(),
### etc, to match font family if needed.
### add to ggplot object with "+"
# update_geom_defaults("text", list(family = fontfamily)) +
# update_geom_defaults("text_repel", list(family = fontfamily)) +
# update_geom_defaults("textpath", list(family = fontfamily)) +
# update_geom_defaults("texthline", list(family = fontfamily))

kbl_ki <- function(data, width = 75, fontsize = 14) {
  kbl(data, booktabs = T, escape = F, table.attr = glue("style='width:{width}%;'")) %>%
    kable_styling(
      bootstrap_options = c("striped", "hover"),
      position = "left",
      full_width = T,
      font_size = fontsize,
      fixed_thead = T,
      latex_options = c("striped", "scale_down")
    ) %>%
    row_spec(0, bold = T) %>%
    kable_classic(html_font = "Arial")
}
