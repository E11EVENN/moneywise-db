

/*==============================================================*/
/* Table: CREDITO_CLIENTES                                      */
/*==============================================================*/
create table CREDITO_CLIENTES (
   ID_CREDITO_CLIENTE   NUMERIC(10)          not null,
   ID_CLIENTE           NUMERIC(10)          null,
   ID_CREDITO           NUMERIC(10)          null,
   constraint PK_CREDITO_CLIENTES primary key (ID_CREDITO_CLIENTE)
);
