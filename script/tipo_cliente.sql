/*==============================================================*/
/* Table: TIPO_CLIENTE                                          */
/*==============================================================*/
create table TIPO_CLIENTE (
   ID_TIPO_CLEINTE      VARCHAR(20)           not null,
   ID_CLIENTE           NUMERIC(10)          null,
   DESCRIPCION          VARCHAR(10)          null,
   constraint PK_TIPO_CLIENTE primary key (ID_TIPO_CLEINTE)
);