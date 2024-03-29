/*==============================================================*/
/* Table: TIPO_DOCUMENTO                                        */
/*==============================================================*/
create table TIPO_DOCUMENTO (
   ID_TIPO_DOCUMENTO    VARCHAR(5)          not null,
   DESCRIPCION          VARCHAR(100)         null,
   constraint PK_TIPO_DOCUMENTO primary key (ID_TIPO_DOCUMENTO)
);