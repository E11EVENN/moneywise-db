/*==============================================================*/
/* Table: TIPO_TELEFONO                                         */
/*==============================================================*/
create table TIPO_TELEFONO (
   ID_TIPO_TELEFONO     VARCHAR(15)           not null,
   ID_CLIENTE_TELEFONO  NUMERIC(15)          null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_TELEFONO primary key (ID_TIPO_TELEFONO)
);