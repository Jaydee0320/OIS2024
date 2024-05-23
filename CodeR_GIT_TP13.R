# Installer les bibliothèques nécessaires
install.packages("ggplot2")
install.packages("plotly")

# Charger les bibliothèques
library(ggplot2)
library(plotly)

# Charger les données
data(iris)

# Créer une visualisation combinée de points colorés par espèce
p <- ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(alpha = 0.7, size = 3) +
  geom_smooth(method = "lm", se = FALSE) +
  theme_minimal() +
  labs(title = "Relation entre la longueur et la largeur des sépales",
       x = "Longueur des sépales",
       y = "Largeur des sépales",
       color = "Espèce")

# Rendre la visualisation interactive
p_interactive <- ggplotly(p)

# Afficher la visualisation interactive
p_interactive
