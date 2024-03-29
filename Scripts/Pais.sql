/*==============================================================*/
/* Table: PAIS                                                  */
/*==============================================================*/
create table PAIS (
   ID_PAIS              VARCHAR(3)           not null,
   NOMBRE               VARCHAR(40)          not null,
   INDICATIVO_TELEFONICO NUMERIC(4)           not null,
   ESTADO               NUMERIC(1)           not null,
   FECHA_RESGISTRO      DATE                 not null,
   FECHA_ACTUALIZACION  DATE                 not null,
   ID_USUARIO           VARCHAR(10)          null,
   ID_ADDRESS           VARCHAR(15)          null,
   constraint PK_PAIS primary key (ID_PAIS)
);