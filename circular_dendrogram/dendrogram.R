# Libraries
library(ggraph)
library(igraph)
library(tidyverse)
library(RColorBrewer)
library(colormap)
set.seed(1)

# Carreguem les dades
data = read.csv("./t15903.csv")

# Filtrem les dades per només tres comarques
data <- filter(data, Comarca %in% c("Baix Penedès", "Pla de l'Estany", "Alt Camp"))

# Preparem les dades i la jerarquia
d1 = data.frame(from="origin", to=unique(data["Comarca"]))
d1 <- d1 %>% 
  rename(
    to = Comarca
  )
d2 = data.frame(from=data["Comarca"], to=data["Municipi"])
d2 <- d2 %>% 
  rename(
    from = Comarca,
    to = Municipi
  )
edges = rbind(d1, d2)

# Creem els vèrtexs de la representació. Un regsitre per objecte de la jerarquia
vertices = data.frame(
  name = unique(c(as.character(edges$from), as.character(edges$to))) , 
  value = c(data[1:4, "Població"], data$Població)
)

# Afegim el nom de cada grup al vèrtex
vertices$group = edges$from[ match( vertices$name, edges$to ) ]

# Ordenem correctament per comarca per poder calcular els angles correctament
vertices2 <- vertices[1:4,]
vertices3 <- vertices[5:length(vertices$group),]
vertices3 <- vertices3[order(vertices3$group),]

vertices <- rbind(vertices2, vertices3)

# Afegim informació referent a l'angle i etiqueta
vertices$id=NA
myleaves=which(is.na( match(vertices$name, edges$from) ))
nleaves=length(myleaves)

vertices$id[ myleaves ] = seq(1:nleaves)
vertices$angle= 90 - 360 * vertices$id / nleaves
vertices$hjust<-ifelse( vertices$angle < -90, 1, 0)
vertices$angle<-ifelse(vertices$angle < -90, vertices$angle+180, vertices$angle)

# Creem un objecte graph
circ_dendrogram_graph <- graph_from_data_frame( edges, vertices=vertices )

# prepare color
color_scale <- colormap(colormap = colormaps$viridis, nshades = 3, format = "hex", alpha = 1, reverse = FALSE)[sample(c(1:6), 6, replace=TRUE)]

# Make the plot
ggraph(circ_dendrogram_graph, layout = 'dendrogram', circular = TRUE) + 
  geom_edge_diagonal(colour="grey") +
  scale_edge_colour_distiller(palette = "RdPu") +
  geom_node_text(aes(x = x*1.15, y=y*1.15, filter = leaf, label=name, angle = angle, hjust=hjust, colour=group), size=2.7, alpha=1) +
  geom_node_point(aes(filter = leaf, x = x*1.07, y=y*1.07, colour=group, size=value, alpha=0.2)) +
  scale_colour_manual(values= color_scale) +
  scale_size_continuous( range = c(0.1,7) ) +
  theme_void() +
  theme(
    legend.position="none",
    plot.margin=unit(c(0,0,0,0),"cm"),
  ) +
  expand_limits(x = c(-1.3, 1.3), y = c(-1.3, 1.3))
