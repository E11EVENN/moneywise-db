/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD (
   ID_CIUDAD            NUMERIC(10)          not null,
   ID_DEPARTAMENTO      NUMERIC(10)          null,
   NOMBRE               CHAR(10)             null,
   INDICATIVO           VARCHAR(10)          null,
   FECHA_REGISTRO       DATE                 null,
   FECHA_ACTULIZACION   DATE                 null,
   ESTADO               BOOL                 null,
   constraint PK_CIUDAD primary key (ID_CIUDAD)
);