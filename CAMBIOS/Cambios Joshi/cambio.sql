
ALTER TABLE dim_sismos
ADD COLUMN tipo_falla VARCHAR(100),
ADD COLUMN categoria_profundidad VARCHAR(50);
ALTER TABLE dim_sismos
ADD COLUMN ia_falla_inferida VARCHAR(100),
ADD COLUMN ia_confianza_falla DOUBLE PRECISION,
ADD COLUMN ia_version_modelo_falla VARCHAR(50);