CREATE TABLE CIUDAD (
   ID_CIUDAD            NUMERIC(10)          NOT NULL,
   ID_DEPARTAMENTO      NUMERIC(10)          NULL,
   NOMBRE               CHAR(10)             NULL,
   INDICATIVO           VARCHAR(10)          NULL,
   FECHA_REGISTRO       TIMESTAMP WITH TIME  ZONE,
   FECHA_ACTUALIZACION  TIMESTAMP WITH TIME  ZONE,
   ESTADO               BOOLEAN              NULL, -- Cambiado de BOOL a BOOLEAN para compatibilidad con PostgreSQL
   CONSTRAINT PK_CIUDAD PRIMARY KEY (ID_CIUDAD)
);
