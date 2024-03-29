/*==============================================================*/
/* Table: DEPTO                                                 */
/*==============================================================*/
create table DEPTO (
   ID_DEPARTAMENTO      VARCHAR(3)           not null,
   ID_PAIS              VARCHAR(3)           null,
   NOMBRE               VARCHAR(30)          not null,
   INDICATIVO           VARCHAR(3)           not null,
   FECHA_REGISTRO       DATE                 not null,
   FECHA_ACTUALIZACION  DATE                 not null,
   ESTADO               NUMERIC(1)           not null,
   ID_USUARIO           VARCHAR(10)          null,
   OP_ADDRESS           VARCHAR(15)          not null,
   constraint PK_DEPTO primary key (ID_DEPARTAMENTO)
);
