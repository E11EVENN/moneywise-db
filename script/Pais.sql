

/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
   ID_PAIS              CHAR(5)                 NOT NULL,
   NOMBRE               VARCHAR(40)             NOT NULL,
   INDICATIVO_TELEFONICO NUMERIC(5, 0)          NOT NULL,
   ESTADO               VARCHAR(10)             NOT NULL,
   FECHA_RESGISTRO      TIMESTAMP WITH TIME     ZONE,
   FECHA_ACTUALIZACION  TIMESTAMP WITH TIME     ZONE,
   ID_USUARIO           VARCHAR(15)             NOT NULL,
   ID_ADDRESS            NUMERIC(10, 0),      
   constraint PK_PAIS primary key (ID_PAIS)
);