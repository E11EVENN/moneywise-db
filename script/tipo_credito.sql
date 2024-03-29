
/*==============================================================*/
/* Table: TIPO_CREDITO                                          */
/*==============================================================*/
create table TIPO_CREDITO (
   ID_TIPO_CREDITO      VARCHAR(50)          null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_CREDITO primary key (ID_TIPO_CREDITO)
);
