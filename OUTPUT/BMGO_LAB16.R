####################
#                  #
# Laboratorio 16   #
#                  #
####################

# Red no dirigida en R

# 1. Identificar un análisis de redes en R 
# 2. Revisar los indicadores básicos globales

# --------------------------------------------------------------------------------------------------------------------


library(EconGeo)

# Cargar data
EL = read.csv("http://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")

# Ver encabezado
head(EL)

# Transformar el dataframe en matriz
MM <- get.matrix(EL)

# Matriz no dirigida (matriz de adyacencia simetrica, bidireccional) 
 

# Llamar a libreria para graficar
library(igraph)

# Crear el objeto gráfico
g <- graph_from_data_frame(d=EL, directed = F)
plot (g)

# Crear gráfico interactivo (eliminar pesos)
EL$Weight = NULL
head(EL)

library(networkD3)

simpleNetwork(EL)



#VER MATRIZ SIMETRICA (RED NO DIRIGIDA-RED BIDIRECCIONAL)
# DIFERENCIAS ENTRE RED DIRIGIDA Y NO DIRIGIDA 