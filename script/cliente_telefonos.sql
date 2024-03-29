
/*==============================================================*/
/* Table: CLIENTE_TELEFONOS                                     */
/*==============================================================*/
create table CLIENTE_TELEFONOS (
   ID_CLIENTE_TELEFONO  VARCHAR(10)          not null,
   TELEFONO             VARCHAR(10)          null,
   constraint PK_CLIENTE_TELEFONOS primary key (ID_CLIENTE_TELEFONO)
);