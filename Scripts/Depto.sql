/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   ID_DEPARTAMENTO      NUMERIC(10)          not null,
   ID_PAIS              NUMERIC(10)          null,
   NOMBRE               VARCHAR(10)          null,
   INDICATIVO           VARCHAR(3)           null,
   FECHA_REGISTRO       DATE                 null,
   FECHA_ACTUALIZACION  DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_DEPARTAMENTO primary key (ID_DEPARTAMENTO)
);