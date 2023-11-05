# Carreguem les llibreries necessàries
library(lattice)
library(terra)

# Carreguem les dades del GeoTIFF
dem <- rast("C:/Users/enric/OneDrive/Documentos/uoc/semestre_4/visualitzacio_dades/pac2/contour/srtm_38_03/srtm_38_03.tif")

# Fem el plot de les dades
plot(dem, xlim=c(6, 8), ylim=c(45, 46), xlab='Longitud (º)', ylab='Latitud (º)')

# Afegim les línies de contorn
contour(dem, add=TRUE, nlevels=6)
