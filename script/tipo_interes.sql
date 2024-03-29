/*==============================================================*/
/* Table: TIPO_INTERES                                          */
/*==============================================================*/
create table TIPO_INTERES (
   ID_TIPO_INTERES      NUMERIC(10)          not null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_INTERES primary key (ID_TIPO_INTERES)
);