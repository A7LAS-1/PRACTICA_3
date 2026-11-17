-- Ejercicio 8: Modificación de esquema (Módulo de Refugios)
-- Autor: Antonio Navarro Dominguez 

-- Creamos la nueva dimensión de Refugios ligada a las zonas geográficas
CREATE TABLE dim_refugios (
    id_refugio INT PRIMARY KEY,
    nombre_refugio VARCHAR(150),
    capacidad_maxima INT,
    id_zonas INT,
    FOREIGN KEY (id_zonas) REFERENCES dim_zonas(id_zonas)
);

-- Creamos la tabla de hechos (relación M:N entre SISMO y REFUGIO)
CREATE TABLE fact_activacion_refugios (
    id_sismo INT,
    id_refugio INT,
    personas_albergadas INT,
    PRIMARY KEY (id_sismo, id_refugio),
    FOREIGN KEY (id_sismo) REFERENCES dim_sismos(id_sismo),
    FOREIGN KEY (id_refugio) REFERENCES dim_refugios(id_refugio)
);

-- Cumplimiento del requisito de Inteligencia Artificial
-- Columnas para predecir la saturación de los refugios
ALTER TABLE fact_activacion_refugios
ADD COLUMN ia_demanda_estimada_personas INT,
ADD COLUMN ia_probabilidad_saturacion DOUBLE PRECISION,
ADD COLUMN ia_version_modelo VARCHAR(50);