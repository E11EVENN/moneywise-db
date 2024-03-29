/*==============================================================*/
/* Table: TIPO_EMAIL                                            */
/*==============================================================*/
create table TIPO_EMAIL (
   ID_TIPO_EMAIL         VARCHAR(10)          not null,
   DESCRIPCION          VARCHAR(50)         null,
   constraint PK_TIPO_EMAIL primary key (ID_TIPO_EMAIL)
);