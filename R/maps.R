worldmap <- function() {
  world <- map_data(map="world")
  ggplot(world, aes(long, lat)) +
    geom_polygon(aes(group=group), fill="gray90", color="gray90") +
    labs(x="", y="") +
    theme(
      legend.position="none",
      legend.key=element_blank(),
      legend.title=element_blank(),
      axis.line=element_blank(),
      axis.text.x=element_blank(),
      axis.text.y=element_blank(),
      axis.ticks=element_blank(),
      axis.title.x=element_blank(),
      axis.title.y=element_blank(),
      panel.background=element_blank(),
      panel.border=element_blank(),
      panel.grid.major=element_blank(),
      panel.grid.minor=element_blank(),
      plot.background=element_blank()
    ) +
    coord_fixed(ratio=1)
}

