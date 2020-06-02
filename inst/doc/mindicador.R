## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
library(mindicador)
library(ggplot2)
library(readxl)

# veo los codigos de ambos indicadores
mindicador_indicadores

# obtengo los datos
datos <- mindicador_importar_datos(c("imacec", "tasa_desempleo"), 2010:2020)

# veo los datos
datos

## -----------------------------------------------------------------------------
# las dos series estan en la misma escala (porcentaje) asi que los puedo dejar en un mismo grafico
ggplot(data = datos, aes(x = fecha, y = valor, color = serie)) +
  geom_line() +
  theme(legend.position = "bottom") +
  labs(title = "Evolucion IMACEC y Desempleo 2010-2020", x = "Fecha", y = "Porcentaje")

## ---- eval = FALSE------------------------------------------------------------
#  write_xlsx(datos, "serie_imacec_desempleo_2010_2020.xlsx")

