/*==============================================================*/
/* Table: CLIENTE_DIRECCIONES                                   */
/*==============================================================*/
create table CLIENTE_DIRECCIONES (
   ID_DIRECCIONES       VARCHAR(25)              not null,
   ID_CLIENTE            VARCHAR(25)               null,
   ID_DIRECCION          VARCHAR(25)               null,
   TIP_ID_DIRECCION      VARCHAR(25)               null,
   constraint PK_CLIENTE_DIRECCIONES primary key (ID_DIRECCIONES)
);