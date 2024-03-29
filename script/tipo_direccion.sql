/*==============================================================*/
/* Table: TIPO_DIRECCION                                        */
/*==============================================================*/
create table TIPO_DIRECCION (
   ID_DIRECCION         VARCHAR(20)          not null,
   PUEBLO_O_CIUDAD      VARCHAR(20)          not null,
   constraint PK_TIPO_DIRECCION primary key (ID_DIRECCION)
);