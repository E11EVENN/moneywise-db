/*==============================================================*/
/* Table: ORGANIZACION_CLIENTES                                 */
/*==============================================================*/
create table ORGANIZACION_CLIENTES (
   ID_ORGANIZACION_CLIENTE  VARCHAR(25)           not null,
   ID_CLIENTE           NUMERIC(10)          null,
   ID_ORGANIZACION      NUMERIC(10)          null,
   constraint PK_ORGANIZACION_CLIENTES primary key (ID_ORGANIZACION_CLIENTE)
);