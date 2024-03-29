

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/

CREATE TABLE CLIENTE (
    ID_CLIENTE NUMERIC(10) NOT NULL,
    ID_CIUDAD VARCHAR(255), -- assuming 'letras' means any text
    ID_CLIENTE_EMAIL VARCHAR(255), -- 'numeros y letras' indicates alphanumeric, so VARCHAR is suitable
    ID_DIRECCION VARCHAR(255), -- 'numeros y letras' again indicates VARCHAR
    ID_TIPO_TELEFONO NUMERIC(10), -- assuming 'numeros' is just numeric values
    NOMBRE VARCHAR(20) NOT NULL,
    APELLIDO VARCHAR(30),
    DOCUMENTO VARCHAR(10),
    FECHA_REGISTRO TIMESTAMP WITH TIME ZONE, -- 'fecha y hora de la zona' translated to TIMESTAMP WITH TIME ZONE
    CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE)
);
