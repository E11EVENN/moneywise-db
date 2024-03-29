

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/

CREATE TABLE USUARIO (
   ID_USUARIO        NUMERIC(10) NOT NULL,
   ID_CIUDAD         VARCHAR(255),
   ID_TIPO_USUARIO   VARCHAR(255),
   ID_CLIENTE_EMAIL  VARCHAR(255),
   USUARIO_IMAIL     VARCHAR(255),
   NOMBRE_USUARIO    VARCHAR(20) NOT NULL,
   NOMBRE            VARCHAR(20),
   APELLIDO          VARCHAR(20),
   CONSTRAINT PK_USUARIO PRIMARY KEY (ID_USUARIO)
);
