-- Ejercicio8: Modificacion de Esquema(Propuesta 1 - Replicas Sismicas)
-- Bravo Mina Liam Valapai
-- Agregamos la relacion recursiva para el seguimiento de réplicas
ALTER TABLE dim_sismos
ADD COLUMN id_sismo_principal INT;

--Creamos la restriccion de llave foranea que apunta a la misma tabla
ALTER TABLE dim_sismos
ADD CONSTRAINT fk_sismo_replica
FOREIGN KEY (id_sismo_principal) REFERENCES dim_sismos(id_sismo);

-- Cumplimiento del requisito de Inteligencia Artificial 
-- Agregamos columnas para registrar predicciones de modelos de Machine Learning
ALTER TABLE dim_sismos
ADD COLUMN ia_probabilidad_replica DOUBLE PRECISION,
ADD COLUMN ia_version_modelo VARCHAR(50),
ADD COLUMN ia_fecha_prediccion TIMESTAMP;