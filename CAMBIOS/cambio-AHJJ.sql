-- Ejercicio 8: Modificación de esquema (Clasificación por Falla Geológica)
-- Autor: Joshua Jasiel Avalos Hernandez 

-- Agregamos las columnas lógicas para el tipo de falla y profundidad
ALTER TABLE dim_sismos
ADD COLUMN tipo_falla VARCHAR(100),
ADD COLUMN categoria_profundidad VARCHAR(50);

-- Cumplimiento del requisito de Inteligencia Artificial
-- Columnas para un modelo ML que infiera el tipo de falla basado en las ondas sísmicas
ALTER TABLE dim_sismos
ADD COLUMN ia_falla_inferida VARCHAR(100),
ADD COLUMN ia_confianza_falla DOUBLE PRECISION,
ADD COLUMN ia_version_modelo_falla VARCHAR(50);